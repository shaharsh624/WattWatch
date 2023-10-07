import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:wattwatch_v1/pages/analytics.dart';
import 'package:wattwatch_v1/pages/coupons.dart';
import 'package:wattwatch_v1/pages/dashboard.dart';
import 'package:wattwatch_v1/pages/profile.dart';

class Suggestions extends StatelessWidget {
  const Suggestions({super.key});

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
                    color: Color(0xFF268D6A),
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
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Dashboard();
                    }));
                  },
                  icon: const Icon(
                    Icons.dashboard,
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
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xff34cc98),
        ),
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.keyboard_backspace),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return Dashboard();
                        }));
                      },
                    ),
                    Text(
                      "Suggestions",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18.0),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30.0),
                        topLeft: Radius.circular(30.0)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 0.0),
                    child: ListView(
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 10.0, top: 40.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "September 1",
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontWeight: FontWeight.bold),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(top: 5.0),
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      color: Color(0xff34cc98),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(5.0))),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                        "Switch off Lights when you go out. Do not use lights in the day."),
                                  ),
                                ),
                                Divider(
                                  height: 20,
                                  thickness: 0,
                                  indent: 20,
                                  endIndent: 0,
                                  color: Color(0xff747474),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 10.0, top: 10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "September 1",
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontWeight: FontWeight.bold),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(top: 5.0),
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      color: Color(0xff34cc98),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(5.0))),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                        "Switch off Lights when you go out. Do not use lights in the day."),
                                  ),
                                ),
                                Divider(
                                  height: 20,
                                  thickness: 0,
                                  indent: 20,
                                  endIndent: 0,
                                  color: Color(0xff747474),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 10.0, top: 10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "September 1",
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontWeight: FontWeight.bold),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(top: 5.0),
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      color: Color(0xff34cc98),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(5.0))),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                        "Switch off Lights when you go out. Do not use lights in the day."),
                                  ),
                                ),
                                Divider(
                                  height: 20,
                                  thickness: 0,
                                  indent: 20,
                                  endIndent: 0,
                                  color: Color(0xff747474),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 10.0, top: 10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "September 1",
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontWeight: FontWeight.bold),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(top: 5.0),
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      color: Color(0xff34cc98),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(5.0))),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                        "Switch off Lights when you go out. Do not use lights in the day."),
                                  ),
                                ),
                                Divider(
                                  height: 20,
                                  thickness: 0,
                                  indent: 20,
                                  endIndent: 0,
                                  color: Color(0xff747474),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 10.0, top: 10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "September 1",
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontWeight: FontWeight.bold),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(top: 5.0),
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      color: Color(0xff34cc98),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(5.0))),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                        "Switch off Lights when you go out. Do not use lights in the day."),
                                  ),
                                ),
                                Divider(
                                  height: 20,
                                  thickness: 0,
                                  indent: 20,
                                  endIndent: 0,
                                  color: Color(0xff747474),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 10.0, top: 10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "September 1",
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontWeight: FontWeight.bold),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(top: 5.0),
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      color: Color(0xff34cc98),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(5.0))),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                        "Switch off Lights when you go out. Do not use lights in the day."),
                                  ),
                                ),
                                Divider(
                                  height: 20,
                                  thickness: 0,
                                  indent: 20,
                                  endIndent: 0,
                                  color: Color(0xff747474),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 10.0, top: 10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "September 1",
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontWeight: FontWeight.bold),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(top: 5.0),
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      color: Color(0xff34cc98),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(5.0))),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                        "Switch off Lights when you go out. Do not use lights in the day."),
                                  ),
                                ),
                                Divider(
                                  height: 20,
                                  thickness: 0,
                                  indent: 20,
                                  endIndent: 0,
                                  color: Color(0xff747474),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 10.0, top: 10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "September 1",
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontWeight: FontWeight.bold),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(top: 5.0),
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      color: Color(0xff34cc98),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(5.0))),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                        "Switch off Lights when you go out. Do not use lights in the day."),
                                  ),
                                ),
                                Divider(
                                  height: 20,
                                  thickness: 0,
                                  indent: 20,
                                  endIndent: 0,
                                  color: Color(0xff747474),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 10.0, top: 10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "September 1",
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontWeight: FontWeight.bold),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(top: 5.0),
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      color: Color(0xff34cc98),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(5.0))),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                        "Switch off Lights when you go out. Do not use lights in the day."),
                                  ),
                                ),
                                Divider(
                                  height: 20,
                                  thickness: 0,
                                  indent: 20,
                                  endIndent: 0,
                                  color: Color(0xff747474),
                                )
                              ],
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
