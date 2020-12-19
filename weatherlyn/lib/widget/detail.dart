import 'package:flutter/material.dart';
import 'package:weatherlyn/model/more_info.dart';
import 'package:weatherlyn/widget/chart.dart';
import 'package:weatherlyn/widget/neu_box.dart';

class DetailWidget extends StatelessWidget {

  final List<MoreInfoModel> data;

  DetailWidget({@required this.data});

  @override
  Widget build(BuildContext context) {

    return NeuBoxWidget(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "More Info",
            style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w700,
                color: Color(0XFF66727C)
            ),
          ),
          SizedBox(height: 20,),
          ChartWidget(),
          GridView.builder(
            physics: ScrollPhysics(),
            padding: const EdgeInsets.only(top: 10),
            shrinkWrap: true,
            itemCount: data.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, childAspectRatio: 1.6),
            itemBuilder: (context, index) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/${data[index].icon}', height: 25, width: 25,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(data[index].value, style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: Color(0XFF66727C)),),
                      Text(data[index].name, style: TextStyle(fontSize: 12, color: Color(0XFF66727C)),),
                    ],
                  )
                ],
              );
            },
          ),
        ],
      ),
    );
  }

}