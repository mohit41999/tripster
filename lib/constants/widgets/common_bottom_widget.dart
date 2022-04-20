import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tipster/utils/colors.dart';

class CommonBottomWidget extends StatelessWidget {
  const CommonBottomWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Text(
            'TIP & WIN',
            style: TextStyle(
                color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Text('ALL RIGHTS RESERVED @2022'),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                child: Icon(
                  FontAwesomeIcons.instagram,
                  color: Colors.white,
                  size: 50,
                ),
                backgroundColor: appThemeBlue,
                radius: 40,
              ),
              CircleAvatar(
                child: Icon(
                  FontAwesomeIcons.facebookF,
                  color: Colors.white,
                  size: 40,
                ),
                backgroundColor: appThemeBlue,
                radius: 40,
              ),
              CircleAvatar(
                child: Icon(
                  FontAwesomeIcons.twitter,
                  color: Colors.white,
                  size: 40,
                ),
                backgroundColor: appThemeBlue,
                radius: 40,
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Terms & Conditions',
            style: TextStyle(decoration: TextDecoration.underline),
          ),
          Text(
            'Privacy Policy',
            style: TextStyle(decoration: TextDecoration.underline),
          ),
        ],
      ),
    );
  }
}
