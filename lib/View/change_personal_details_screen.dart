import 'package:flutter/material.dart';
import 'package:tipster/View/BUYER%20ADMIN/buyer_admin_susbscription.dart';
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
      appBar: AppBar(
        backgroundColor: appThemeBlue,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          'CHANGE PERSONAL DETAILS',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
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
                            builder: (context) => BuyerAdminSubscriptions()));
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
    );
  }
}
