import 'package:flutter/material.dart';
import 'package:tipster/View/change_personal_details_screen.dart';
import 'package:tipster/utils/colors.dart';

class WalletWithdrawScreen extends StatefulWidget {
  const WalletWithdrawScreen({Key? key}) : super(key: key);

  @override
  State<WalletWithdrawScreen> createState() => _WalletWithdrawScreenState();
}

class _WalletWithdrawScreenState extends State<WalletWithdrawScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Padding(
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
                      'WALLET',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'BALANCE: 0.00 EUR',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 180,
                  decoration: BoxDecoration(
                    color: appThemeBlue,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.menu,
                          color: Colors.white,
                          size: 25,
                        ),
                        Text(
                          'WITHDRAW',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Withdraw amount (EUR):',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 50,
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
                Row(
                  children: [
                    Text(
                      'Choose account:',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Radio(
                                  value: '1',
                                  fillColor:
                                      MaterialStateProperty.all(appThemeBlue),
                                  groupValue: '1',
                                  onChanged: (v) {}),
                              Text('Bank account'),
                            ],
                          ),
                          Row(
                            children: [
                              Radio(
                                  value: '1',
                                  fillColor:
                                      MaterialStateProperty.all(appThemeBlue),
                                  groupValue: '1',
                                  onChanged: (v) {}),
                              Text('PayPal'),
                            ],
                          ),
                          Row(
                            children: [
                              Radio(
                                  value: '1',
                                  fillColor:
                                      MaterialStateProperty.all(appThemeBlue),
                                  groupValue: '1',
                                  onChanged: (v) {}),
                              Text('Skrill'),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Checkbox(value: false, onChanged: (v) {}),
                    Expanded(
                      child: Text(
                          'I acknowledge that I read and agree with the wallet Rules'),
                    ),
                  ],
                ),
                Center(
                  child: Container(
                    width: 100,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    ChangePersonalDetailsScreen()));
                      },
                      child: Text('Withdraw'),
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(appThemeBlue)),
                    ),
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
