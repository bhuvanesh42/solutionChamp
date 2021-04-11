import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomDialogBox extends StatefulWidget {
  final String title, startdate, endDate, remainder1, remainder2, month;
  final int day;

  const CustomDialogBox(
      {Key key,
      this.title,
      this.startdate,
      this.endDate,
      this.remainder1,
      this.remainder2,
      this.month,
      this.day})
      : super(key: key);

  @override
  _CustomDialogBoxState createState() => _CustomDialogBoxState();
}

class _CustomDialogBoxState extends State<CustomDialogBox> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: contentBox(context),
    );
  }

  contentBox(context) {
    return Container(
      width: MediaQuery.of(context).size.width / 10,
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 65, bottom: 20),
            margin: EdgeInsets.only(top: 45),
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black,
                      offset: Offset(0, 10),
                      blurRadius: 10),
                ]),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  widget.title,
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 15,
                ),
                Divider(
                  color: Colors.grey,
                  height: 2,
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        widget.startdate,
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: "DMSans",
                            color: Color(0xff6442DD)),
                        textAlign: TextAlign.center,
                      )),
                ),
                SizedBox(
                  height: 2,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height / 8,
                          width: 8,
                          decoration: BoxDecoration(
                              color: Color(0xFFE39D93),
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height / 8,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                widget.remainder1,
                                style: TextStyle(
                                    fontSize: 14, fontFamily: "DMSans"),
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                widget.remainder2,
                                style: TextStyle(
                                    fontSize: 14, fontFamily: "DMSans"),
                                textAlign: TextAlign.center,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        widget.endDate,
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: "DMSans",
                            color: Color(0xff6442DD)),
                        textAlign: TextAlign.center,
                      )),
                ),
                SizedBox(
                  height: 22,
                ),
              ],
            ),
          ),
          Positioned(
            left: 100,
            right: 100,
            child: Container(
              height: MediaQuery.of(context).size.height / 9,
              //width: MediaQuery.of(context).size.width /2,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFFE39D93),
                  border: Border.all(color: Colors.white, width: 2)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    widget.month,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontFamily: "DMSans"),
                  ),
                  Text(
                    "${widget.day}",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        fontFamily: "DMSans"),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
