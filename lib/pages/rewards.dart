import 'package:flutter/material.dart';
import 'package:wattwatch_v1/pages/coupons.dart';
import 'package:wattwatch_v1/pages/dashboard.dart';
import 'package:wattwatch_v1/pages/profile.dart';

class Rewards extends StatefulWidget {
  const Rewards({super.key});

  @override
  State<Rewards> createState() => _RewardsState();
}

class _RewardsState extends State<Rewards> {
  bool redeemed = false;

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
        body: Center(
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0, top: 5.0),
              child: Row(children: [
                IconButton(
                  icon: Icon(Icons.keyboard_backspace),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Coupons();
                    }));
                  },
                ),
                const Align(
                  child: Padding(
                    padding: EdgeInsets.only(left: 15.0),
                    child: Text(
                      "Rewards",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                )
              ]),
            ),
            const Align(
                alignment: Alignment.center,
                child: Text(
                  "Sometimes it pays to be loyal",
                  style: TextStyle(fontSize: 18),
                )),
            if (!redeemed)
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xFF34CC98),
                        Color(0xFF78dbd9),
                        Color(0xFFbfe9db)
                      ]),
                ),
                width: 280.0,
                height: 320.0,
                margin: EdgeInsets.only(top: 50),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 30, bottom: 10),
                      child: Image.asset(
                        'lib/assets/icons/redeem.png',
                        height: 90,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 40.0, vertical: 10.0),
                      child: Text(
                        textAlign: TextAlign.center,
                        "Do you want to redeem your points",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            redeemed = !redeemed; // Toggle the flag
                          });
                        },
                        child: Text("Redeem"),
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(150.0, 30.0),
                          foregroundColor: Color(0xFF091B6B),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            if (redeemed)
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  gradient: const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xFF34CC98),
                        Color(0xFF78dbd9),
                        Color(0xFFbfe9db)
                      ]),
                ),
                width: 280.0,
                height: 320.0,
                margin: EdgeInsets.only(top: 50),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30, bottom: 10),
                      child: Image.asset(
                        'lib/assets/icons/redeemed.png',
                        height: 100,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        "Congratulations!",
                        style: TextStyle(fontSize: 18),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        "Your Points have been Redeemed",
                        style: TextStyle(fontSize: 18),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
          ]),
        ));
  }
}
