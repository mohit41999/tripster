import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';
import 'package:tipster/View/login_screen.dart';
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: MediaQuery.of(context).size.height / 1.5,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: appThemeBlue,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        topLeft: Radius.circular(10))),
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
                              text: '*', style: TextStyle(color: Colors.red))
                        ]),
                  ),
                  Container(
                    height: 30,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 3,
                          child: TextField(
                            decoration: InputDecoration(
                              fillColor: Colors.white,
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
                              text: '*', style: TextStyle(color: Colors.red))
                        ]),
                  ),
                  Container(
                    height: 30,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 3,
                          child: TextField(
                            decoration: InputDecoration(
                              fillColor: Colors.white,
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
                        Expanded(
                          flex: 2,
                          child: Container(),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 40),
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Email Address',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        Container(
                          height: 30,
                          child: TextField(
                            decoration: InputDecoration(
                              fillColor: Colors.white,
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
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Password',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                        Container(
                          height: 30,
                          child: TextField(
                            decoration: InputDecoration(
                              fillColor: Colors.white,
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
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Confirm Password',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                        Container(
                          height: 30,
                          child: TextField(
                            decoration: InputDecoration(
                              fillColor: Colors.white,
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
              TextButton(
                  onPressed: () {},
                  child: Text(
                    'SIGN UP',
                    style: TextStyle(
                        fontSize: 20,
                        decoration: TextDecoration.underline,
                        color: Color(0xffFD5A77)),
                  )),
              Text('Already have an account?'),
              TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
                  child: Text(
                    'Sign In',
                    style: TextStyle(
                        fontSize: 14,
                        decoration: TextDecoration.underline,
                        color: Color(0xffFD5A77)),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
