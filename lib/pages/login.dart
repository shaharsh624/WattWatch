import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:wattwatch_v1/pages/connectMeter.dart';
import 'package:wattwatch_v1/pages/dashboard.dart';
import 'package:wattwatch_v1/pages/forgotPassword.dart';
import 'package:wattwatch_v1/pages/questions1.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool alreadyUser = true;
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
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
          Padding(padding: EdgeInsets.all(25.0)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'lib/assets/icons/logo.png',
                height: 150,
                fit: BoxFit.contain,
              ),
            ],
          ),
          Container(
            width: 350.0,
            height: 500.0,
            margin: EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 10.0),
            padding: EdgeInsets.fromLTRB(50.0, 70.0, 50.0, 10.0),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(30.0)),
            child: Column(
              children: [
                Container(
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
                          alreadyUser = true;
                        } else {
                          alreadyUser = false;
                        }
                      });
                    },
                    isSelected: isSelected,
                    children: const <Widget>[
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 25.0, vertical: 0.0),
                        child: Text(
                          'Login',
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 17.0, vertical: 0.0),
                        child: Text(
                          'Sign Up',
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                ),
                if (alreadyUser)
                  Column(
                    children: [
                      TextField(
                        controller: usernameController,
                        decoration: const InputDecoration(
                            hintText: 'Enter username',
                            contentPadding:
                            EdgeInsets.fromLTRB(0, 50.0, 0, 5.0)),
                        onChanged: (user) {
                          setState(() {
                            username = user;
                            //you can access nameController in its scope to get
                            // the value of text entered as shown below
                            //fullName = nameController.text;
                          });
                        },
                      ),
                      TextField(
                        controller: passwordController,
                        obscureText: true,
                        decoration: const InputDecoration(
                            hintText: 'Enter password',
                            contentPadding:
                            EdgeInsets.fromLTRB(0, 30.0, 0, 5.0)),
                        onChanged: (val) {
                          setState(() {
                            password = val;
                          });
                        },
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                                return ForgotPassword();
                              }));
                        },
                        child: const Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(0, 10.0, 0, 50.0),
                              child: Text(
                                "Forgot Password?",
                                style: TextStyle(color: Color(0xFFABA7A7)),
                              ),
                            )),
                      ),
                      ElevatedButton(
                        child: const Text('Login'),
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(200.0, 30.0),
                          backgroundColor: Color(0xFF34CC98),
                          foregroundColor: Colors.white,
                        ),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                                return Dashboard();
                              }));
                        },
                      )
                    ],
                  ),
                if (!alreadyUser)
                  Column(
                    children: [
                      TextField(
                        controller: usernameController,
                        decoration: const InputDecoration(
                            hintText: 'Enter username',
                            contentPadding:
                            EdgeInsets.fromLTRB(0, 40.0, 0, 5.0)),
                        onChanged: (value) {
                          setState(() {});
                        },
                      ),
                      TextField(
                        controller: mobileController,
                        decoration: const InputDecoration(
                            hintText: 'Enter mobile',
                            contentPadding:
                            EdgeInsets.fromLTRB(0, 30.0, 0, 5.0)),
                        onChanged: (value) {
                          setState(() {});
                        },
                      ),
                      TextField(
                        controller: passwordController,
                        obscureText: true,
                        decoration: const InputDecoration(
                            hintText: 'Enter password',
                            contentPadding:
                            EdgeInsets.fromLTRB(0, 30.0, 0, 5.0)),
                        onChanged: (value) {
                          setState(() {});
                        },
                      ),
                      TextField(
                        controller: confirmPasswordController,
                        obscureText: true,
                        decoration: const InputDecoration(
                            hintText: 'Confirm password',
                            contentPadding:
                            EdgeInsets.fromLTRB(0, 30.0, 0, 5.0)),
                        onChanged: (value) {
                          setState(() {});
                        },
                      ),
                      const Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 15, horizontal: 0)),
                      ElevatedButton(
                        child: const Text(
                          'Sign up',
                        ),
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(200.0, 30.0),
                          backgroundColor: Color(0xFF34CC98),
                          foregroundColor: Colors.white,
                        ),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) {
                            return Questions();
                          }));
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
