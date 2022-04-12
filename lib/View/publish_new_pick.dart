import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tipster/View/new_pick_screen.dart';
import 'package:tipster/utils/colors.dart';

class PublishNewPickScreen extends StatefulWidget {
  const PublishNewPickScreen({Key? key}) : super(key: key);

  @override
  State<PublishNewPickScreen> createState() => _PublishNewPickScreenState();
}

class _PublishNewPickScreenState extends State<PublishNewPickScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => NewPickScreen()));
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 60,
                decoration: BoxDecoration(
                    color: appThemeBlue,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(8.0),
                        topLeft: Radius.circular(8.0))),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'BOOKMAKER',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.maxFinite,
                  color: appThemelightPink.withOpacity(0.3),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Bet365',
                      style: TextStyle(
                          color: appThemelightPink,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                ),
                Divider(),
                Text(
                  'Pinnacle',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Divider(),
                Text('WilliamHill',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                Divider(),
                Text(
                  '1XBet',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Divider(),
                Text(
                  'BetClick',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Divider(),
                Text(
                  'SBObet',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
