import 'package:flutter/material.dart';
import 'package:solutionchamp_task/Model/lable2Model.dart';

import 'CustomDialog.dart';

Widget lable2(BuildContext context, List<Lable2Model> lable2model) {
  List<Lable2Model> afterSortingModel = new List();
  lable2model.forEach((element) {
    if (!element.isover) afterSortingModel.add(element);
  });
  return afterSortingModel != null && afterSortingModel.length > 0? ListView.builder(
    scrollDirection: Axis.vertical,
    itemCount: afterSortingModel.length,
    shrinkWrap: true,
    itemBuilder: (BuildContext context, int index) {
      return Container(
          // alignment: Alignment.center,
          padding: EdgeInsets.only(top: 10, bottom: 10),
          child: lable2Widget(context, index, afterSortingModel[index]));
    },
  ):Container();
}

Widget lable2Widget(BuildContext context, int index, Lable2Model list) {
  return Column(
    children: [
      Container(
        height: MediaQuery.of(context).size.height * 0.23,
        width: MediaQuery.of(context).size.width * 0.80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.white,
        ),
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.07,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.grey[300], width: 1)),
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.04,
                    width: MediaQuery.of(context).size.width * 0.25,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xff6D4FE0)),
                    child: Row(
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
                        SizedBox(
                          width: 3,
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
                    width: 20,
                  ),
                  Text(
                    "Appointment",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                        fontFamily: "DMSans"),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.16,
                  width: MediaQuery.of(context).size.width * 0.30,
                  color: Color(0xffded9ff),
                  padding: EdgeInsets.only(left: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Patient",
                        style: TextStyle(
                            color: Color(0xff6D4FE0),
                            fontSize: 15,
                            fontFamily: "DMSans"),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Hospital",
                        style: TextStyle(
                            color: Color(0xff6D4FE0),
                            fontSize: 15,
                            fontFamily: "DMSans"),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Location",
                        style: TextStyle(
                            color: Color(0xff6D4FE0),
                            fontSize: 15,
                            fontFamily: "DMSans"),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Email",
                        style: TextStyle(
                            color: Color(0xff6D4FE0),
                            fontSize: 15,
                            fontFamily: "DMSans"),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.16,
                  width: MediaQuery.of(context).size.width * 0.50,
                  padding: EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        list.patientName,
                        style: TextStyle(fontSize: 15, fontFamily: "DMSans"),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        list.hospitslName,
                        style: TextStyle(fontSize: 15, fontFamily: "DMSans"),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        list.locationName,
                        style: TextStyle(fontSize: 15, fontFamily: "DMSans"),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        list.email,
                        style: TextStyle(fontSize: 15, fontFamily: "DMSans"),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    ],
  );
}

Widget lable2History(BuildContext context, List<Lable2Model> lable2model) {
  List<Lable2Model> afterSortingModel = new List();
  lable2model.forEach((element) {
    if (element.isover) afterSortingModel.add(element);
  });
  return afterSortingModel != null && afterSortingModel.length > 0? ListView.builder(
    scrollDirection: Axis.vertical,
    itemCount: afterSortingModel.length,
    shrinkWrap: true,
    itemBuilder: (BuildContext context, int index) {
      return Container(
          padding: EdgeInsets.only(top: 10, bottom: 10),
          child: lable2HistoryWidget(context, index, afterSortingModel[index]));
    },
  ): Container();
}

Widget lable2HistoryWidget(BuildContext context, int index, Lable2Model list) {
  return Column(
    children: [
      Container(
        height: MediaQuery.of(context).size.height * 0.23,
        width: MediaQuery.of(context).size.width * 0.80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Color(0xAAfcfcfc),
        ),
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.07,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.grey[300], width: 1)),
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.04,
                    width: MediaQuery.of(context).size.width * 0.25,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xff757373)),
                    child: Row(
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
                        SizedBox(
                          width: 3,
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
                    width: 20,
                  ),
                  Text(
                    "Appointment",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                        fontFamily: "DMSans"),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.16,
                  width: MediaQuery.of(context).size.width * 0.30,
                  color: Color(0xAAc4c4c4),
                  padding: EdgeInsets.only(left: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Patient",
                        style: TextStyle(
                            color: Color(0xff757373),
                            fontSize: 15,
                            fontFamily: "DMSans"),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Hospital",
                        style: TextStyle(
                            color: Color(0xff757373),
                            fontSize: 15,
                            fontFamily: "DMSans"),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Location",
                        style: TextStyle(
                            color: Color(0xff757373),
                            fontSize: 15,
                            fontFamily: "DMSans"),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Email",
                        style: TextStyle(
                            color: Color(0xff757373),
                            fontSize: 15,
                            fontFamily: "DMSans"),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.16,
                  width: MediaQuery.of(context).size.width * 0.50,
                  padding: EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        list.patientName,
                        style: TextStyle(fontSize: 15, fontFamily: "DMSans"),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        list.hospitslName,
                        style: TextStyle(fontSize: 15, fontFamily: "DMSans"),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        list.locationName,
                        style: TextStyle(fontSize: 15, fontFamily: "DMSans"),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        list.email,
                        style: TextStyle(fontSize: 15, fontFamily: "DMSans"),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    ],
  );
}
