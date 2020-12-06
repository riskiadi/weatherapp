import 'package:flutter/material.dart';
import 'package:weatherlyn/model/weekly_info.dart';
import 'package:weatherlyn/widget/neu_box.dart';

class WeeklyInfoWidget extends StatelessWidget {

  final List<WeeklyInfoModel> weeklyInfoModel;

  const WeeklyInfoWidget({@required this.weeklyInfoModel});

  @override
  Widget build(BuildContext context) {
    return NeuBoxWidget(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "This Week",
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w700,
                color: Color(0XFF66727C)
            ),
          ),
          SizedBox(height: 20),
          ListView.builder(
            physics: ScrollPhysics(),
            shrinkWrap: true,
            itemCount: weeklyInfoModel.length,
            itemBuilder: (context, index) {
              return itemList(index);
            },
          )
        ],
      ),
    );
  }

  Container itemList(int index) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Text(
              weeklyInfoModel[index].nameDate,
              style: TextStyle(
                  fontSize: 13,
                  color: Color(0XFF66727C),
                  fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            flex: 2,
            child: Text(
              weeklyInfoModel[index].date,
              style: TextStyle(
                  fontSize: 13,
                  color: Color(0XFF66727C),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Row(
              children: [
                Text(
                  weeklyInfoModel[index].temp,
                  style: TextStyle(
                      fontSize: 13,
                      color: Color(0XFF66727C),
                  ),
                ),
                SizedBox(width: 7),
                Text(
                  weeklyInfoModel[index].realFeel,
                  style: TextStyle(
                      fontSize: 10,
                      color: Color(0XFF66727C),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Row(
              children: [
                Image.asset(
                  'assets/${weeklyInfoModel[index].weatherIcon}',
                  width: 24,
                  height: 24,
                ),
                SizedBox(width: 8),
                Text(
                  weeklyInfoModel[index].weatherName,
                  style: TextStyle(
                      fontSize: 12,
                      color: Color(0XFF66727C),
                  ),
                ),
              ],
            ),
          ),


        ],
      ),
    );
  }
}
