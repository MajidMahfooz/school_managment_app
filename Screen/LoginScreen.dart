import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:school_managment_app/Screen/HomeScreen.dart';
import 'package:school_managment_app/constans.dart';

late bool _passwordVisible;

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formkey = GlobalKey<FormState>();
//change current state
  @override
  void initState() {
    super.initState();
    _passwordVisible = true;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      //when the user anywhere on the screen, keybord hides
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        backgroundColor: Colors.blueAccent,
        body: ListView(
          children: [
            //divide the body into two half
            Container(
              //use media query in oder to fit all screen size in the same manner
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.8,

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/login.png',
                    height: 150.0,
                    width: 150.0,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Hi',
                        style: TextStyle(
                          fontWeight: FontWeight.w200,
                          fontSize: 35.0,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Student',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 35.0,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  // SizedBox(
                  //   height: 5.0,
                  // ),
                  Container(
                    child: Text(
                      'Sign in to continue',
                      style: TextStyle(fontSize: 17.0, color: Colors.white),
                    ),
                  )
                ],
              ),
            ),

            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Form(
                        key: _formkey,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w300,
                              ),
                              decoration: InputDecoration(
                                  labelText: 'Mobile Number/Email id',
                                  border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                  ),
                                  //isDense: true,

                                  labelStyle: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black26,
                                      height: 0.5),
                                  hintStyle: TextStyle(
                                      fontSize: 15.0,
                                      color: Colors.red,
                                      height: 0.5),
                                  //color change when user enter wrong info
                                  //we will use validotor for this process
                                  errorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                    color: Colors.red,
                                    width: 1.2,
                                  )),
                                  disabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                    color: Colors.red,
                                    width: 1.2,
                                  )),
                                  //same on focus error color
                                  focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                    color: Colors.redAccent,
                                    width: 1.2,
                                  ))),
                              validator: (value) {
                                RegExp regExp = new RegExp(EmailPattern);
                                if (value == null || value.isEmpty) {
                                  return 'please enter some text';

                                  // if it does not match pattern,  like
                                  //it not contain @
                                } else if (!regExp.hasMatch(value)) {
                                  return 'please enter a valid emil address';
                                }
                              },
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            TextFormField(
                              obscureText: _passwordVisible,
                              keyboardType: TextInputType.visiblePassword,
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w300,
                              ),
                              decoration: InputDecoration(
                                  labelText: 'Password',
                                  border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                  ),
                                  isDense: true,
                                  suffixIcon: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          _passwordVisible = !_passwordVisible;
                                        });
                                      },
                                      icon: Icon(_passwordVisible
                                          ? Icons.visibility_off_outlined
                                          : Icons.visibility_off_outlined)),
                                  labelStyle: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black26,
                                      height: 0.5),
                                  hintStyle: TextStyle(
                                      fontSize: 15.0,
                                      color: Colors.red,
                                      height: 0.5),
                                  //color change when user enter wrong info
                                  //we will use validotor for this process
                                  errorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                    color: Colors.red,
                                    width: 1.2,
                                  )),
                                  disabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                    color: Colors.red,
                                    width: 1.2,
                                  )),
                                  //same on focus error color
                                  focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                    color: Colors.redAccent,
                                    width: 1.2,
                                  ))),
                              validator: (value) {
                                if (value!.length < 5) {
                                  return 'must be more then 5 characters ';
                                }
                              },
                            ),
                            SizedBox(
                              height: 30.0,
                            ),
                            // submit button
                            InkWell(
                              onTap: () {
                                if (_formkey.currentState!.validate()) {
                                  // it go to next activity
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                                }
                              },
                              child: Container(
                                // margin: EdgeInsets.only(
                                //   left: 20.0,
                                //   right: 20.0,
                                // ),
                                padding: EdgeInsets.only(right: 20.0),
                                width: double.infinity,
                                height: 58.0,
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20.0)),
                                    color: Colors.blueAccent),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Spacer(),
                                    Text(
                                      'SIGN IN',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Spacer(),
                                    Icon(
                                      Icons.arrow_forward_outlined,
                                      size: 20,
                                      color: Colors.white,
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Text(
                                'Forgot Password',
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                  color: Colors.blueAccent,
                                  fontSize: 15.0,
                                ),
                              ),
                            )
                          ],
                        ))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
