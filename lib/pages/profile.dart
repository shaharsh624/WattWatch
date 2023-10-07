import 'package:flutter/material.dart';
import 'package:wattwatch_v1/pages/coupons.dart';
import 'package:wattwatch_v1/pages/dashboard.dart';
import 'package:wattwatch_v1/pages/login.dart';
import 'package:wattwatch_v1/pages/suggestions.dart';
import 'package:wattwatch_v1/pages/utility.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

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
                            MaterialPageRoute(
                                builder: (context) {
                                  return Dashboard();
                                }));
                      },
                    ),
                    Text(
                      "My Account",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18.0),
                    ),
                  ],
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 10.0, bottom: 30.0),
                  child: Column(
                    children: [
                      Container(
                        child: CircleAvatar(
                          radius: 75.0,
                          child: Image.asset(
                            'lib/assets/icons/profile.png',
                            height: 400,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ],
                  )),
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
                    padding: const EdgeInsets.all(30.0),
                    child: ListView(
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                    flex: 4,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 20.0, bottom: 30.0),
                                      child: Text(
                                        "John Doe",
                                        style: TextStyle(
                                            fontSize: 30,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    )),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                    flex: 1,
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.person))),
                                Expanded(
                                    flex: 3,
                                    child: Text(
                                      "Account",
                                      style: TextStyle(fontSize: 16),
                                    )),
                                Expanded(
                                  flex: 1,
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.arrow_forward_ios)),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                    flex: 1,
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.star))),
                                Expanded(
                                    flex: 3,
                                    child: Text(
                                      "My Rewards",
                                      style: TextStyle(fontSize: 16),
                                    )),
                                Expanded(
                                  flex: 1,
                                  child: IconButton(
                                      onPressed: () {
                                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                                          return Coupons();
                                        }));
                                      },
                                      icon: Icon(Icons.arrow_forward_ios)),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                    flex: 1,
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.handyman_sharp))),
                                Expanded(
                                    flex: 3,
                                    child: Text(
                                      "Utilities",
                                      style: TextStyle(fontSize: 16),
                                    )),
                                Expanded(
                                  flex: 1,
                                  child: IconButton(
                                      onPressed: () {
                                        Navigator.push(context,
                                            MaterialPageRoute(
                                                builder: (context) {
                                          return Utility();
                                        }));
                                      },
                                      icon: Icon(Icons.arrow_forward_ios)),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                    flex: 1,
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.handshake_sharp))),
                                Expanded(
                                    flex: 3,
                                    child: Text(
                                      "Suggestions",
                                      style: TextStyle(fontSize: 16),
                                    )),
                                Expanded(
                                  flex: 1,
                                  child: IconButton(
                                      onPressed: () {
                                        Navigator.push(context,
                                            MaterialPageRoute(
                                                builder: (context) {
                                          return Suggestions();
                                        }));
                                      },
                                      icon: Icon(Icons.arrow_forward_ios)),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                    flex: 1,
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.power_settings_new))),
                                Expanded(
                                    flex: 3,
                                    child: Text(
                                      "Logout",
                                      style: TextStyle(fontSize: 16),
                                    )),
                                Expanded(
                                  flex: 1,
                                  child: IconButton(
                                      onPressed: () {
                                        Navigator.push(context,
                                            MaterialPageRoute(
                                                builder: (context) {
                                          return Login();
                                        }));
                                      },
                                      icon: Icon(Icons.arrow_forward_ios)),
                                ),
                              ],
                            ),
                          ],
                        )
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
