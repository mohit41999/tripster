import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:marquee/marquee.dart';
import 'package:tipster/View/login_screen.dart';
import 'package:tipster/constants/widgets/commonBtn.dart';
import 'package:tipster/constants/widgets/signUpAppBar.dart';
import 'package:tipster/utils/colors.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool termsandcond = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonSignUpAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: appThemeBlue,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          topLeft: Radius.circular(10))),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.close,
                          color: appThemeBlue,
                          size: 35,
                        ),
                      ),
                      Expanded(
                        child: Center(
                          child: Text(
                            'SIGN UP',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.close,
                          color: Colors.white,
                          size: 35,
                        ),
                      )
                    ],
                  ),
                ),
                commonSizedbox(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Column(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            text: TextSpan(
                                text: 'Subdomain ',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                                children: [
                                  TextSpan(
                                      text: '*',
                                      style: TextStyle(color: Colors.red))
                                ]),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            height: 30,
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 3,
                                  child: TextField(
                                    maxLines: 1,
                                    decoration: InputDecoration(
                                      fillColor: Colors.white,
                                      isDense: true,
                                      contentPadding: EdgeInsets.symmetric(
                                          horizontal: 4, vertical: 6),
                                      filled: true,
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                              color: Colors.grey, width: 1.0),
                                          borderRadius:
                                              BorderRadius.circular(7)),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            color: appThemeBlue, width: 1.0),
                                        borderRadius: BorderRadius.circular(7),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Text(
                                    '.webname.com',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      commonSizedbox(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            text: TextSpan(
                                text: 'Display Name ',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                                children: [
                                  TextSpan(
                                      text: '*',
                                      style: TextStyle(color: Colors.red))
                                ]),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            height: 30,
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 3,
                                  child: TextField(
                                    maxLines: 1,
                                    decoration: InputDecoration(
                                      fillColor: Colors.white,
                                      isDense: true,
                                      contentPadding: EdgeInsets.symmetric(
                                          horizontal: 4, vertical: 6),
                                      filled: true,
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                              color: Colors.grey, width: 1.0),
                                          borderRadius:
                                              BorderRadius.circular(7)),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            color: appThemeBlue, width: 1.0),
                                        borderRadius: BorderRadius.circular(7),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Container(),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      commonSizedbox(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: appThemeBlue,
                            child: Icon(FontAwesomeIcons.google,
                                color: Colors.white),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: appThemeBlue,
                            child: Icon(
                              FontAwesomeIcons.facebookF,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: appThemeBlue,
                            child: Icon(FontAwesomeIcons.apple,
                                color: Colors.white),
                          ),
                        ],
                      ),
                      commonSizedbox(),
                      Center(
                          child: Text(
                        'or',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                      commonSizedbox(),
                      Column(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Email Address',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                height: 30,
                                child: TextField(
                                  maxLines: 1,
                                  decoration: InputDecoration(
                                    fillColor: Colors.white,
                                    filled: true,
                                    isDense: true,
                                    contentPadding: EdgeInsets.symmetric(
                                        horizontal: 4, vertical: 6),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            color: Colors.grey, width: 1.0),
                                        borderRadius: BorderRadius.circular(7)),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: appThemeBlue, width: 1.0),
                                      borderRadius: BorderRadius.circular(7),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          commonSizedbox(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Password',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold)),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                height: 30,
                                child: TextField(
                                  maxLines: 1,
                                  decoration: InputDecoration(
                                    fillColor: Colors.white,
                                    isDense: true,
                                    contentPadding: EdgeInsets.symmetric(
                                        horizontal: 4, vertical: 6),
                                    filled: true,
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            color: Colors.grey, width: 1.0),
                                        borderRadius: BorderRadius.circular(7)),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: appThemeBlue, width: 1.0),
                                      borderRadius: BorderRadius.circular(7),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          commonSizedbox(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Confirm Password',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold)),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                height: 30,
                                child: TextField(
                                  maxLines: 1,
                                  decoration: InputDecoration(
                                    fillColor: Colors.white,
                                    filled: true,
                                    isDense: true,
                                    contentPadding: EdgeInsets.symmetric(
                                        horizontal: 4, vertical: 6),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            color: Colors.grey, width: 1.0),
                                        borderRadius: BorderRadius.circular(7)),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: appThemeBlue, width: 1.0),
                                      borderRadius: BorderRadius.circular(7),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          commonSizedbox(),
                        ],
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Checkbox(
                        value: termsandcond,
                        onChanged: (v) {
                          setState(() {
                            termsandcond = v!;
                          });
                        }),
                    Expanded(
                        child: Text(
                      'I agree with the Terms&Conditions and Privacy Policy',
                      style: TextStyle(fontSize: 12),
                    ))
                  ],
                ),
                GestureDetector(
                    onTap: () {},
                    child: Text(
                      'SIGN UP',
                      style: TextStyle(
                          fontSize: 20,
                          decoration: TextDecoration.underline,
                          color: Color(0xffFD5A77)),
                    )),
                commonSizedbox(),
                Text('Already have an account?'),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()));
                    },
                    child: Text(
                      'Sign In',
                      style: TextStyle(
                          fontSize: 16,
                          decoration: TextDecoration.underline,
                          color: Color(0xffFD5A77)),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
