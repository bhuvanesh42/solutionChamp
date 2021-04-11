import 'package:flutter/material.dart';
import 'package:solutionchamp_task/Model/lable1Model.dart';

import 'CustomDialog.dart';

Widget lable1(BuildContext context, List<Lable1Model> lable1moel) {
  return ListView.builder(
    scrollDirection: Axis.horizontal,
    itemCount: lable1moel.length,
    shrinkWrap: true,
    itemBuilder: (BuildContext context, int index) {
      return Container(child: lable1Widget(context, index, lable1moel[index]));
    },
  );
}

Widget lable1Widget(BuildContext context, int index, Lable1Model list) {
  return Row(
    children: [
      SizedBox(width: MediaQuery.of(context).size.width / 10),
      GestureDetector(
        onTap: () {
          print("ontapped");
         showDialog(context: context,
                  builder: (BuildContext context){
                  return CustomDialogBox(
                    month: list.month,
                    day: list.day,
                    title: list.symptoms,
                    startdate: list.startTime,
                    endDate: list.endTime,
                    remainder1: list.remainder1,
                    remainder2: list.remainder2,
                  );
                  }
                );
        },
        child: Container(
          height: MediaQuery.of(context).size.height / 9,
          width: MediaQuery.of(context).size.width / 1.8,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.white),
          child: Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width / 25,
              ),
              Container(
                height: MediaQuery.of(context).size.height / 12,
                width: MediaQuery.of(context).size.width / 7,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFFE39D93),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      list.month,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontFamily: "DMSans"),
                    ),
                    Text(
                      "${list.day}",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: "DMSans"),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 25,
              ),
              Container(
                  width: MediaQuery.of(context).size.width / 3.5,
                  child: Text(
                    list.symptoms,
                    style: TextStyle(fontSize: 15, fontFamily: "DMSans"),
                    maxLines: 2,
                  ))
            ],
          ),
        ),
      ),
      SizedBox(width: index == 4 ? MediaQuery.of(context).size.width / 10 : 0)
    ],
  );
}

Widget contentBox(context) {
   print("ontapped");
  return Container(
    height: 100,
    width: 100,
    color: Colors.red,
  );
}
