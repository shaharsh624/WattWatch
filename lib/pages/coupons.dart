import 'package:flutter/material.dart';
import 'package:wattwatch_v1/pages/analytics.dart';
import 'package:wattwatch_v1/pages/dashboard.dart';
import 'package:wattwatch_v1/pages/profile.dart';
import 'package:wattwatch_v1/pages/rewards.dart';
import 'package:wattwatch_v1/pages/suggestions.dart';

class Coupons extends StatefulWidget {
  const Coupons({super.key});

  @override
  State<Coupons> createState() => _CouponsState();
}

class _CouponsState extends State<Coupons> {
  var num = new List<int>.generate(10, (i) => i+1);
  var dates = [
    "24 Jun 2022",
    "5 July 2022",
    "12 Aug 2022",
    "28 Feb 2022",
    "4 Jan 2022",
    "14 Sep 2022",
    "21 Jan 2023",
    "6 Feb 2023",
    "9 March 2023",
    "11 April 2023"
  ];
  var points = [53, 89, 47, 23, 54, 74, 110, 31, 45, 53];

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
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
        ),
        titleSpacing: 5.0,
        actions: [
          Text(
            "3528",
            style: TextStyle(fontSize: 18, color: Colors.black87, fontWeight: FontWeight.bold),
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
                    color: Color(0xFF268D6A),
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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0, top: 5.0),
            child: Row(children: [
              IconButton(
                icon: Icon(Icons.keyboard_backspace),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Dashboard();
                  }));
                },
              ),
              const Align(
                child: Padding(
                  padding: EdgeInsets.only(left: 15.0),
                  child: Text(
                    "Coupons",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              )
            ]),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25.0, right: 25, top: 0, bottom: 15),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(
                  color: Color(0xff34cc98),
                  width: 2.0,
                ),
              ),
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Green Points", style: TextStyle(fontSize: 24),),
                        Text("You are a Green Warrior", style: TextStyle(fontSize: 11)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("3528", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900, color: Color(0xff34cc98)),),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView(
              itemExtent: 80.0,
              children: [
                for (var i = 0; i < points.length; i++)
                  new ListTile(
                    leading: CircleAvatar(
                      child: Icon((Icons.local_offer)),
                    ),
                    title: Text(
                      ("Coupons " + num[i].toString()),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                    subtitle: Text(
                      ("Expires on " + dates[i].toString()),
                      style: TextStyle(color: Colors.red.shade300),
                    ),
                    trailing: Text(
                      ("+" + points[i].toString()),
                      style: TextStyle(fontSize: 18, color: Colors.green),
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                            return Rewards();
                          }));
                    },
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}