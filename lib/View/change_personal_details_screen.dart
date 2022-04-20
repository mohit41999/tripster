import 'package:flutter/material.dart';
import 'package:tipster/View/BUYER%20ADMIN/buyer_admin_susbscription.dart';
import 'package:tipster/constants/widgets/commonAppBar.dart';
import 'package:tipster/utils/colors.dart';

class ChangePersonalDetailsScreen extends StatefulWidget {
  const ChangePersonalDetailsScreen({Key? key}) : super(key: key);

  @override
  State<ChangePersonalDetailsScreen> createState() =>
      _ChangePersonalDetailsScreenState();
}

class _ChangePersonalDetailsScreenState
    extends State<ChangePersonalDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppBar(),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                  color: appThemeBlue,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8))),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: [
                    Text(
                      'CHANGE PERSONAL DETAILS',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Name *'),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 40,
                  child: TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.grey, width: 1.0),
                          borderRadius: BorderRadius.circular(7)),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: appThemeBlue, width: 1.0),
                        borderRadius: BorderRadius.circular(7),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text('Surname *'),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 40,
                  child: TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.grey, width: 1.0),
                          borderRadius: BorderRadius.circular(7)),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: appThemeBlue, width: 1.0),
                        borderRadius: BorderRadius.circular(7),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text('Address'),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 40,
                  child: TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.grey, width: 1.0),
                          borderRadius: BorderRadius.circular(7)),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: appThemeBlue, width: 1.0),
                        borderRadius: BorderRadius.circular(7),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text('Country'),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 40,
                  child: TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.grey, width: 1.0),
                          borderRadius: BorderRadius.circular(7)),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: appThemeBlue, width: 1.0),
                        borderRadius: BorderRadius.circular(7),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text('Phone'),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 40,
                  child: TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.grey, width: 1.0),
                          borderRadius: BorderRadius.circular(7)),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: appThemeBlue, width: 1.0),
                        borderRadius: BorderRadius.circular(7),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text('E-mail *'),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 40,
                  child: TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.grey.withOpacity(0.2),
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.grey, width: 1.0),
                          borderRadius: BorderRadius.circular(7)),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: appThemeBlue, width: 1.0),
                        borderRadius: BorderRadius.circular(7),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text('* mandatory field'),
                Text('Your personal details will not be shown publicly'),
                SizedBox(
                  height: 35,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: appThemelightPink,
                          borderRadius: BorderRadius.circular(3)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 6.0, vertical: 4.0),
                        child: Text(
                          'Cancel',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    BuyerAdminSubscriptions()));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: appThemeteal,
                            borderRadius: BorderRadius.circular(3)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 6.0, vertical: 4.0),
                          child: Text(
                            'Submit',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
