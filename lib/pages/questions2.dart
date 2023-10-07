import 'package:flutter/material.dart';
import 'package:wattwatch_v1/pages/dashboard.dart';
import 'package:wattwatch_v1/pages/questions1.dart';


class Questions2 extends StatelessWidget {
  const Questions2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff34cc98),
        elevation: 0,
        leading: IconButton(icon: Icon(Icons.account_circle_outlined, color: Color(0xff747474),), onPressed: () {},),
        title: Text("My Account", style: TextStyle(color: Colors.black),),
        titleSpacing: 5.0,
        actions: [
          IconButton(icon: Icon(Icons.monetization_on_outlined, color: Color(0xff747474),), onPressed: () {},),
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
                        return Questions();
                      }));
                    },),
                    Text("Question 2", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),),
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
                        'lib/assets/images/image_7.png',
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
                    padding: const EdgeInsets.all(30.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Question 2?", style: TextStyle(fontSize: 24.0, color: Color(0xff7a7a7a)),),
                        Padding(
                          padding: const EdgeInsets.only(top: 25.0),
                            child: ElevatedButton(
                              child: const Text('Option 1'),
                              style: ElevatedButton.styleFrom(
                                  fixedSize: Size(300.0, 30.0),
                                  primary: Colors.white,
                                  onPrimary: Colors.black,
                                  elevation: 0,
                                  side: BorderSide(color: Colors.black, width: 1.0),
                              ),
                              onPressed: () {
                                // Navigator.push(context, MaterialPageRoute(builder: (context){
                                //   return Login();
                                // }));
                              },
                            ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: ElevatedButton(
                            child: const Text('Option 2'),
                            style: ElevatedButton.styleFrom(
                                fixedSize: Size(300.0, 30.0),
                                primary: Colors.white,
                                onPrimary: Colors.black,
                                elevation: 0,
                                side: BorderSide(color: Colors.black, width: 1.0)
                            ),
                            onPressed: () {
                              // Navigator.push(context, MaterialPageRoute(builder: (context){
                              //   return Login();
                              // }));
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: ElevatedButton(
                            child: const Text('Option 3'),
                            style: ElevatedButton.styleFrom(
                                fixedSize: Size(300.0, 30.0),
                                primary: Colors.white,
                                onPrimary: Colors.black,
                                elevation: 0,
                                side: BorderSide(color: Colors.black, width: 1.0)
                            ),
                            onPressed: () {
                              // Navigator.push(context, MaterialPageRoute(builder: (context){
                              //   return Login();
                              // }));
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: ElevatedButton(
                            child: const Text('Option 4'),
                            style: ElevatedButton.styleFrom(
                                fixedSize: Size(300.0, 30.0),
                                primary: Colors.white,
                                onPrimary: Colors.black,
                                elevation: 0,
                                side: BorderSide(color: Colors.black, width: 1.0)
                            ),
                            onPressed: () {
                              // Navigator.push(context, MaterialPageRoute(builder: (context){
                              //   return Login();
                              // }));
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                ElevatedButton(
                                  child: const Text('Back'),
                                  style: ElevatedButton.styleFrom(
                                      fixedSize: Size(100.0, 20.0),
                                      primary: Colors.white,
                                      onPrimary: Colors.black,
                                      elevation: 0,
                                      side: BorderSide(color: Colors.black, width: 1.0)
                                  ),
                                  onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context){
                                      return Questions();
                                    }));
                                  },
                                ),
                                ElevatedButton(
                                  child: const Text('Next'),
                                  style: ElevatedButton.styleFrom(
                                      fixedSize: Size(100.0, 20.0),
                                      primary: Color(0xff34cc98),
                                      onPrimary: Colors.black,
                                      elevation: 0,
                                      side: BorderSide(color: Colors.black, width: 1.0)
                                  ),
                                  onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context){
                                      return Dashboard();
                                    }));
                                  },
                                ),
                              ],
                            )
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
