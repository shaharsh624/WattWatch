import 'package:flutter/material.dart';
import 'package:wattwatch_v1/pages/analytics.dart';
import 'package:wattwatch_v1/pages/coupons.dart';
import 'package:wattwatch_v1/pages/login.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wattwatch_v1/pages/profile.dart';
import 'package:wattwatch_v1/pages/rewards.dart';
import 'package:wattwatch_v1/pages/suggestions.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  TextEditingController nameController = TextEditingController();
  late List<bool> isSelected;
  String utility = 'electricity';

  @override
  void initState() {
    isSelected = [true, false];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff34cc98),
        elevation: 0,
        leading: IconButton(
            icon: Image.asset(
              'lib/assets/icons/profile.png',
              width: 200,
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Profile();
              }));
            }),
        title: Text(
          "John Doe",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
        ),
        titleSpacing: 5.0,
        actions: [
          Text(
            "3528",
            style: TextStyle(
                fontSize: 18,
                color: Colors.black87,
                fontWeight: FontWeight.bold),
          ),
          IconButton(
            icon: Icon(
              Icons.monetization_on_outlined,
              color: Colors.black87,
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Coupons();
              }));
            },
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 5.0),
              child: IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Suggestions();
                    }));
                  },
                  icon: Icon(
                    Icons.message,
                    size: 30,
                  )),
            ),
            Padding(
              padding: EdgeInsets.only(left: 5.0),
              child: IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Coupons();
                    }));
                  },
                  icon: Icon(
                    Icons.star,
                    size: 30,
                  )),
            ),
            Padding(
              padding: EdgeInsets.only(left: 5.0),
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.dashboard,
                    color: Color(0xFF268D6A),
                    size: 40,
                  )),
            ),
            Padding(
              padding: EdgeInsets.only(left: 5.0),
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.pin_drop,
                    size: 30,
                  )),
            ),
            Padding(
              padding: EdgeInsets.only(left: 5.0),
              child: IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Analytics();
                    }));
                  },
                  icon: Icon(
                    Icons.bar_chart,
                    size: 30,
                  )),
            ),
          ],
        ),
      ),
      backgroundColor: Color(0xFFF7F6FF),
      body: Column(children: [
        Container(
          margin: EdgeInsets.only(top: 30.0, bottom: 20.0),
          child: ToggleButtons(
            borderColor: Colors.grey.shade700,
            fillColor: Color(0xFF34CC98),
            borderWidth: 1,
            selectedBorderColor: Color(0xFFABA7A7),
            selectedColor: Colors.white,
            borderRadius: BorderRadius.circular(70.0),
            onPressed: (int index) {
              setState(() {
                for (int i = 0; i < isSelected.length; i++) {
                  isSelected[i] = i == index;
                }
                if (isSelected[0]) {
                  utility = "electricity";
                } else {
                  utility = "water";
                }
              });
            },
            isSelected: isSelected,
            children: const <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 0.0),
                child: Text(
                  'Electricity',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 27.0, vertical: 0.0),
                child: Text(
                  'Water',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
        if (utility == "electricity")
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                width: 10,
                color: Colors.white,
              ),
              boxShadow: [BoxShadow(blurRadius: 6, color: Colors.grey)],
              borderRadius: BorderRadius.circular(100.0),
              color: Colors.white,
            ),
            margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
            child: Stack(children: [
              const SizedBox(
                height: 170.0,
                width: 170.0,
                child: CircularProgressIndicator(
                  color: Color(0xFFF2AB40),
                  value: 0.45,
                  strokeWidth: 20.0,
                ),
              ),
              Positioned(
                top: 40,
                left: 25,
                child: Container(
                  child: const Column(
                    children: [
                      Text(
                        "June 2023",
                        style: TextStyle(
                          color: Color(0xFF7A7A7A),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "250 kWh",
                        style: TextStyle(
                            color: Color(0xFF7A7A7A),
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                      Text(
                        "45% of limit",
                        style: TextStyle(
                          color: Color(0xFF7A7A7A),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ]),
          ),
        if (utility == "water")
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                width: 10,
                color: Colors.white,
              ),
              boxShadow: [BoxShadow(blurRadius: 6, color: Colors.grey)],
              borderRadius: BorderRadius.circular(100.0),
              color: Colors.white,
            ),
            margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
            child: Stack(children: [
              const SizedBox(
                height: 170.0,
                width: 170.0,
                child: CircularProgressIndicator(
                  color: Color(0xFF406AF2),
                  value: 0.80,
                  strokeWidth: 20.0,
                ),
              ),
              Positioned(
                top: 40,
                left: 45,
                child: Container(
                  child: const Column(
                    children: [
                      Text(
                        "June 2023",
                        style: TextStyle(
                          color: Color(0xFF7A7A7A),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "5000 L",
                        style: TextStyle(
                            color: Color(0xFF7A7A7A),
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                      Text(
                        "80% of limit",
                        style: TextStyle(
                          color: Color(0xFF7A7A7A),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ]),
          ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                  onPressed: () {},
                  child: Text("Month"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF34CC98),
                    foregroundColor: Colors.white,
                  )),
              ElevatedButton(
                  onPressed: () {},
                  child: Text("Week"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF268D6A),
                    foregroundColor: Colors.white,
                  )),
              ElevatedButton(
                  onPressed: () {},
                  child: Text("Day"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF34CC98),
                    foregroundColor: Colors.white,
                  )),
            ],
          ),
        ),
        Container(
          width: 300.0,
          height: 130.0,
          padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
          margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(15.0)),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 5.0, bottom: 15.0),
                child: Text(
                  "Prediction of your month",
                  style: TextStyle(
                    color: Color(0xFF7A7A7A),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              if (utility == 'electricity')
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Image(
                                image:
                                    AssetImage('lib/assets/icons/hazard.png'),
                                width: 30),
                            Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 0, horizontal: 5.0)),
                            Text(
                              "387 kWh",
                              style: TextStyle(
                                  color: Color(0xFFFF9D0A),
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Padding(padding: EdgeInsets.only(bottom: 10)),
                        Text(
                          "Energy usage",
                          style: TextStyle(
                            color: Color(0xFF7A7A7A),
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Image(
                                image: AssetImage('lib/assets/icons/rupee.png'),
                                width: 30),
                            Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 0, horizontal: 5.0)),
                            Text(
                              "1500 Rs",
                              style: TextStyle(
                                  color: Color(0xFF268D6A),
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Padding(padding: EdgeInsets.only(bottom: 10)),
                        Text(
                          "Billing",
                          style: TextStyle(
                            color: Color(0xFF7A7A7A),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              if (utility == 'water')
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Image(
                                image: AssetImage('lib/assets/icons/water.png'),
                                width: 35),
                            Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 0, horizontal: 5.0)),
                            Text(
                              "6000 L",
                              style: TextStyle(
                                  color: Color(0xFF406AF2),
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Padding(padding: EdgeInsets.only(bottom: 10)),
                        Text(
                          "Water usage",
                          style: TextStyle(
                            color: Color(0xFF7A7A7A),
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Image(
                                image: AssetImage('lib/assets/icons/rupee.png'),
                                width: 30),
                            Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 0, horizontal: 5.0)),
                            Text(
                              "400 Rs",
                              style: TextStyle(
                                  color: Color(0xFF268D6A),
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Padding(padding: EdgeInsets.only(bottom: 10)),
                        Text(
                          "Billing",
                          style: TextStyle(
                            color: Color(0xFF7A7A7A),
                          ),
                        ),
                      ],
                    ),
                  ],
                )
            ],
          ),
        ),
      ]),
    );
  }
}
