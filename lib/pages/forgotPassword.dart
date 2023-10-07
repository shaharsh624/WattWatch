import 'package:flutter/material.dart';
import 'package:wattwatch_v1/pages/login.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  bool alreadyUser = true;
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController otpController = TextEditingController();
  String username = '';
  String password = '';
  late List<bool> isSelected;

  @override
  void initState() {
    isSelected = [true, false];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Padding(padding: EdgeInsets.all(40.0)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'lib/assets/icons/logo.png',
                height: 100,
                fit: BoxFit.contain,
              ),
              Text('WattWatch', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
            ],
          ),
          Container(
            width: 350.0,
            height: 500.0,
            margin: EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 30.0),
            padding: EdgeInsets.fromLTRB(40.0, 50.0, 40.0, 50.0),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(30.0)),
            child: Column(
              children: [
                const Text(
                  "Reset Password",
                  style: TextStyle(
                      fontSize: 22,
                      color: Color(0xFF34CC98),
                      fontWeight: FontWeight.bold),
                ),
                TextField(
                  controller: usernameController,
                  decoration: const InputDecoration(
                      hintText: 'Enter username',
                      contentPadding: EdgeInsets.fromLTRB(0, 40.0, 0, 5.0)),
                  onChanged: (user) {
                    setState(() {
                      username = user;
                    });
                  },
                ),
                TextField(
                  controller: otpController,
                  decoration: const InputDecoration(
                      hintText: 'Enter OTP',
                      contentPadding: EdgeInsets.fromLTRB(0, 30.0, 0, 5.0)),
                  onChanged: (value) {
                    setState(() {
                    });
                  },
                ),
                TextField(
                  controller: passwordController,
                  decoration: const InputDecoration(
                      hintText: 'Enter password',
                      contentPadding: EdgeInsets.fromLTRB(0, 30.0, 0, 5.0)),
                  onChanged: (value) {
                    setState(() {
                    });
                  },
                ),
                TextField(
                  controller: confirmPasswordController,
                  decoration: const InputDecoration(
                      hintText: 'Confirm password',
                      contentPadding: EdgeInsets.fromLTRB(0, 30.0, 0, 5.0)),
                  onChanged: (value) {
                    setState(() {
                    });
                  },
                ),
                const Padding(
                    padding: EdgeInsets.symmetric(vertical: 25, horizontal: 0)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      child: const Text('Send OTP'),
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(115.0, 30.0),
                        backgroundColor: Color(0xFF34CC98),
                        foregroundColor: Colors.white,
                      ),
                      onPressed: () {

                      },
                    ),
                    ElevatedButton(
                      child: const Text('Reset'),
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(115.0, 30.0),
                        backgroundColor: Color(0xFF34CC98),
                        foregroundColor: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return Login();
                        })
                        );
                      },
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      backgroundColor: Color(0xFFEAEAF5),
    );
  }
}
