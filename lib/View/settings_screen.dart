import 'package:flutter/material.dart';
import 'package:tipster/View/WALLET/wallet_history_screen.dart';
import 'package:tipster/utils/colors.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
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
                      'SETTINGS',
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
                const EdgeInsets.symmetric(horizontal: 24.0, vertical: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(child: Text('Profile Picture')),
                    Expanded(
                        child: CircleAvatar(
                      radius: 55,
                    )),
                    Expanded(child: Container()),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text(
                          'Choose file',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.2),
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(5)),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 2.0, horizontal: 16),
                          child: Text(
                            'profile pic.jpg',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.2),
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(5)),
                      ),
                    ),
                    SizedBox(
                      width: 35,
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Text('Display name'),
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
                  height: 10,
                ),
                Text('Country'),
                SizedBox(
                  height: 10,
                ),
                Container(
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    width: double.infinity,
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        isExpanded: true,

                        value: '1',

                        // value: dropdownValue,
                        icon: Padding(
                          padding: const EdgeInsets.only(right: 18.0),
                          child: const Icon(Icons.keyboard_arrow_down_outlined),
                        ),

                        // iconSize: 24,

                        //underline: Container(),
                        onChanged: (String? newValue) {},
                        items: [
                          DropdownMenuItem<String>(
                            value: '1',
                            child: Padding(
                              padding: const EdgeInsets.only(left: 18.0),
                              child: Text('1'),
                            ),
                          ),
                          DropdownMenuItem<String>(
                            value: '2',
                            child: Padding(
                              padding: const EdgeInsets.only(left: 18.0),
                              child: Text('2'),
                            ),
                          )
                        ],
                      ),
                    )),
                SizedBox(
                  height: 10,
                ),
                Text('Language'),
                SizedBox(
                  height: 10,
                ),
                Container(
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    width: double.infinity,
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        isExpanded: true,

                        value: '1',

                        // value: dropdownValue,
                        icon: Padding(
                          padding: const EdgeInsets.only(right: 18.0),
                          child: const Icon(Icons.keyboard_arrow_down_outlined),
                        ),

                        // iconSize: 24,

                        //underline: Container(),
                        onChanged: (String? newValue) {},
                        items: [
                          DropdownMenuItem<String>(
                            value: '1',
                            child: Padding(
                              padding: const EdgeInsets.only(left: 18.0),
                              child: Text('1'),
                            ),
                          ),
                          DropdownMenuItem<String>(
                            value: '2',
                            child: Padding(
                              padding: const EdgeInsets.only(left: 18.0),
                              child: Text('2'),
                            ),
                          )
                        ],
                      ),
                    )),
                SizedBox(
                  height: 10,
                ),
                Text('Odd style'),
                SizedBox(
                  height: 10,
                ),
                Container(
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    width: double.infinity,
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        isExpanded: true,

                        value: '1',

                        // value: dropdownValue,
                        icon: Padding(
                          padding: const EdgeInsets.only(right: 18.0),
                          child: const Icon(Icons.keyboard_arrow_down_outlined),
                        ),

                        // iconSize: 24,

                        //underline: Container(),
                        onChanged: (String? newValue) {},
                        items: [
                          DropdownMenuItem<String>(
                            value: '1',
                            child: Padding(
                              padding: const EdgeInsets.only(left: 18.0),
                              child: Text('1'),
                            ),
                          ),
                          DropdownMenuItem<String>(
                            value: '2',
                            child: Padding(
                              padding: const EdgeInsets.only(left: 18.0),
                              child: Text('2'),
                            ),
                          )
                        ],
                      ),
                    )),
                SizedBox(
                  height: 10,
                ),
                Text('Currency'),
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
                  height: 10,
                ),
                Text('Email'),
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
                  height: 15,
                ),
                Text(
                  'Change password',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text('Current password'),
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
                  height: 10,
                ),
                Text('New password'),
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
                  height: 10,
                ),
                Text('Confirm new password'),
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
                  height: 50,
                ),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => WalletHistoryScreen()));
                    },
                    child: Text('Update'),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(appThemeBlue)),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
