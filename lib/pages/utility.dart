import 'package:flutter/material.dart';
import 'package:wattwatch_v1/pages/connectMeter.dart';
import 'package:wattwatch_v1/pages/coupons.dart';
import 'package:wattwatch_v1/pages/dashboard.dart';
import 'package:wattwatch_v1/pages/profile.dart';

class Utility extends StatelessWidget {
  const Utility({super.key});

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
                    IconButton(icon: Icon(Icons.keyboard_backspace), onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return Dashboard();
                      }));
                    },),
                    Text("My Utilities", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 40.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      child: Image.asset(
                        'lib/assets/images/image_37cat.png',
                        height: 140.0,
                        fit: BoxFit.contain,
                      ),
                    )
                  ],
                ),
              ),

              Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topRight: Radius.circular(30.0),topLeft: Radius.circular(30.0)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Container(
                            width: 200.0,
                            height: 60.0,
                            decoration: BoxDecoration(
                              color: Color(0xff268d6a),
                              borderRadius: BorderRadius.all(Radius.circular(30.0)),
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Container(
                                    child: Image.asset(
                                      'lib/assets/images/image_34.png',
                                      height: 30.0,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                                      return ConnectMeter();
                                    }));},
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 10.0),
                                    child: Text("Electricity", style: TextStyle(fontSize: 18, color: Color(0xffeeeeee)),),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Container(
                            width: 200.0,
                            height: 60.0,
                            decoration: BoxDecoration(
                              color: Color(0xff268d6a),
                              borderRadius: BorderRadius.all(Radius.circular(30.0)),
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Container(
                                    child: Image.asset(
                                      'lib/assets/images/image_35.png',
                                      height: 30.0,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                                      return ConnectMeter();
                                    }));},
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 10.0),
                                    child: Text("Water", style: TextStyle(fontSize: 18, color: Color(0xffeeeeee)),),
                                  ),
                                ),
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
