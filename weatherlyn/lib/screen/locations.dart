import 'package:flutter/material.dart';
import 'package:weatherlyn/model/locations.dart';
import 'package:weatherlyn/widget/neu_box.dart';

class LocationPage extends StatefulWidget {
  @override
  _LocationPageState createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {

  List<LocationsModel> locations = List<LocationsModel>() ;

  @override
  Widget build(BuildContext context) {

    locations.add(LocationsModel("Banda Aceh", "24℃", "Cloudy"));
    locations.add(LocationsModel("Serang", "25℃", "Cloudy"));
    locations.add(LocationsModel("Jakarta", "25℃", "Sunny"));
    locations.add(LocationsModel("Semarang", "24℃", "Sunny"));
    locations.add(LocationsModel("Cirebon", "25℃", "Cloudy"));
    locations.add(LocationsModel("Madiun", "24℃", "Cloudy"));
    locations.add(LocationsModel("Surabaya", "26℃", "Cloudy"));

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Color(0XFF66727C)),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            child: IconButton(icon: Icon(Icons.add), onPressed: () {}),
          )
        ],
        title: Text("Locations", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0XFF66727C)),),
      ),
      backgroundColor: Color(0XFFE0E5EC),
      body: ListView.builder(
        itemCount: locations.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.symmetric(vertical: 20,),
            padding: const EdgeInsets.symmetric(horizontal: 20,),
            child: NeuBoxWidget(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(locations[index].place, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color(0XFF66727C)),),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(locations[index].temperature, style: TextStyle(fontSize: 15, color: Color(0XFF66727C)),),
                      SizedBox(height: 6,),
                      Text(locations[index].status, style: TextStyle(fontSize: 15, color: Color(0XFF66727C)),),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
