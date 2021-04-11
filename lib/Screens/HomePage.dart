import 'package:flutter/material.dart';
import 'package:matrix4_transform/matrix4_transform.dart';
import 'package:solutionchamp_task/Model/lable1Model.dart';
import 'package:solutionchamp_task/Model/lable2Model.dart';
import 'package:solutionchamp_task/Widget/Lable1.dart';
import 'package:solutionchamp_task/Widget/lable2.dart';

import 'CustomeDrawer.dart/Screen2.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  TabController _tabController;
  List<Lable1Model> lable1model = new List();
  List<Lable2Model> lable2model = new List();

  double xoffSet = 0;
  double yoffSet = 0;
  double angle = 0;

  bool isOpen = false;
  bool isPlaying = false;
  bool tabSelected;
  @override
  void initState() {
    super.initState();
    getValues();
    _tabController = new TabController(vsync: this, length: 2);
    _tabController.addListener(_handleTabSelection);
  }

  void _handleTabSelection() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: !isOpen ?
       AppBar(
        backgroundColor: Color(0xff6D4FE0),
        title: Text("Morning, Jony Ive!"),
        leading: GestureDetector(
          onTap: () {/* Write listener code here */},
          child:  IconButton(
                          icon: Icon(
                            Icons.menu,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            setState(() {
                              xoffSet = 150;
                              yoffSet = 80;
                              angle = -0.2;
                              isOpen = true;
                            });

                              secondLayerState.setState(() {
                              secondLayerState.xoffSet = 122;
                              secondLayerState.yoffSet = 110;
                              secondLayerState.angle = -0.275;
                            });
                          }) 
        ),
      ) : null,
      body: AnimatedContainer(
        transform: Matrix4Transform()
            .translate(x: xoffSet, y: yoffSet)
            .rotate(angle)
            .matrix4,
        duration: Duration(milliseconds: 250),
              child: Column(
          children: [
            Stack(
              children: [
                Container(
                height: MediaQuery.of(context).size.height * 0.20,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                  Color(0xff6D4FE0),
                  Color(0xFFE39D93),
                  Color(0xFFE08B5C)
                ])),
                child: lable1(context, lable1model)),
                Visibility(child: IconButton(
                          icon: Icon(Icons.arrow_back_ios,
                              color: Colors.white),
                          onPressed: () {
                            if (isOpen == true) {
                              setState(() {
                                xoffSet = 0;
                                yoffSet = 0;
                                angle = 0;
                                isOpen = false;
                              });

                                secondLayerState.setState(() {
                                secondLayerState.xoffSet = 0;
                                secondLayerState.yoffSet = 0;
                                secondLayerState.angle = 0;
                              });
                            }
                          }),
                          visible: isOpen,
                          )
              ],
            ),
            
            Container(
              height: MediaQuery.of(context).size.height * 0.07,
              width: MediaQuery.of(context).size.width,
              child: TabBar(
                controller: _tabController,
                indicator: UnderlineTabIndicator(
                    borderSide: BorderSide(width: 3.0, color: Color(0xff6D4FE0)),
                    insets: EdgeInsets.symmetric(horizontal: 16.0)),
                tabs: [
                  Text(
                    "Upcomming",
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: "DMSans",
                        color: _tabController.index == 0
                            ? Color(0xff6442DD)
                            : Colors.black,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "History",
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: "DMSans",
                        color: _tabController.index == 1
                            ? Color(0xff6442DD)
                            : Colors.black,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.63,
              color: Color(0xaae0dfe6),
              child: TabBarView(
                controller: _tabController,
                children: [
                  Container(child: lable2(context,lable2model)),
                  lable2History(context,lable2model),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  void getValues() {
    lable1model.clear();
    // lable 1 class values
    lable1model.add(new Lable1Model(
        month: "MAY",
        day: 01,
        symptoms: "Track your Symtoms",
        startTime: "9:00 AM",
        endTime: "10:00 PM",
        remainder1: "Blood Test, Breath Test",
        remainder2: "Sleep Test, Breath Test"));
    lable1model.add(new Lable1Model(
        month: "MAY",
        day: 02,
        symptoms: "Track your Symtoms",
        startTime: "9:00 AM",
        endTime: "10:00 PM",
        remainder1: "Blood Test, Breath Test",
        remainder2: "Sleep Test, Breath Test"));
    lable1model.add(new Lable1Model(
        month: "MAY",
        day: 03,
        symptoms: "Track your Symtoms",
        startTime: "9:00 AM",
        endTime: "10:00 PM",
        remainder1: "Blood Test, Breath Test",
        remainder2: "Sleep Test, Breath Test"));
    lable1model.add(new Lable1Model(
        month: "MAY",
        day: 05,
        symptoms: "Track your Symtoms",
        startTime: "9:00 AM",
        endTime: "10:00 PM",
        remainder1: "Blood Test, Breath Test",
        remainder2: "Sleep Test, Breath Test"));
    lable1model.add(new Lable1Model(
        month: "MAY",
        day: 06,
        symptoms: "Track your Symtoms",
        startTime: "9:00 AM",
        endTime: "10:00 PM",
        remainder1: "Blood Test, Breath Test",
        remainder2: "Sleep Test, Breath Test"));

    // lable 2 class values
    lable2model.clear();

    lable2model.add(new Lable2Model(
        patientName: "Bhuavnesh",
        hospitslName: "surya ",
        locationName: "coimbatore",
        email: "bhuvan2842@gmail.com",
        month: "MAY",
        day: 02,
        isover: false));
    lable2model.add(new Lable2Model(
        patientName: "Ragu",
        hospitslName: "surya ",
        locationName: "coimbatore",
        email: "ragu@gmail.com",
        month: "MAY",
        day: 10,
        isover: false));
    lable2model.add(new Lable2Model(
        patientName: "yuvaraja",
        hospitslName: "surya ",
        locationName: "coimbatore",
        email: "yuvaraja@gmail.com",
        month: "MAY",
        day: 25,
        isover: false));
    lable2model.add(new Lable2Model(
        patientName: "viswa",
        hospitslName: "surya ",
        locationName: "coimbatore",
        email: "viswa@gmail.com",
        month: "APR",
        day: 02,
        isover: true));
    lable2model.add(new Lable2Model(
        patientName: "vijay",
        hospitslName: "surya ",
        locationName: "coimbatore",
        email: "vijay@gmail.com",
        month: "APR",
        day: 09,
        isover: true));
    lable2model.add(new Lable2Model(
        patientName: "Sri Ganesh",
        hospitslName: "surya ",
        locationName: "coimbatore",
        email: "ganesh@gmail.com",
        month: "APR",
        day: 12,
        isover: true));
  }
}
