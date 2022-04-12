import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tipster/View/BUYER%20ADMIN/buyer_admin_transactions.dart';
import 'package:tipster/utils/colors.dart';

class BuyerAdminSubscriptions extends StatefulWidget {
  const BuyerAdminSubscriptions({Key? key}) : super(key: key);

  @override
  State<BuyerAdminSubscriptions> createState() =>
      _BuyerAdminSubscriptionsState();
}

class _BuyerAdminSubscriptionsState extends State<BuyerAdminSubscriptions> {
  late TextStyle subscriptionStyle;

  @override
  Widget build(BuildContext context) {
    subscriptionStyle = TextStyle(fontWeight: FontWeight.bold, fontSize: 16);
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
                      'BUYER ADMIN',
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
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BuyerAdminTransactions()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: appThemeBlue,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 8.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.menu,
                            color: Colors.white,
                            size: 25,
                          ),
                          Text(
                            'SUBSCRIPTIONS',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Filter by status',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                        height: 50,
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

                            value: null,
                            hint: Text(''),

                            // value: dropdownValue,
                            icon: Padding(
                              padding: const EdgeInsets.only(right: 18.0),
                              child: const Icon(
                                  Icons.keyboard_arrow_down_outlined),
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
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Filter by subscription',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16)),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                        height: 50,
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
                            value: null,
                            hint: Text(''),

                            // value: dropdownValue,
                            icon: Padding(
                              padding: const EdgeInsets.only(right: 18.0),
                              child: const Icon(
                                  Icons.keyboard_arrow_down_outlined),
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
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Order by',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16)),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                        height: 50,
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
                            value: null,
                            hint: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Plan start'),
                            ),

                            // value: dropdownValue,
                            icon: Padding(
                              padding: const EdgeInsets.only(right: 18.0),
                              child: const Icon(
                                  Icons.keyboard_arrow_down_outlined),
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
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: Material(
                      elevation: 2.0,
                      child: Column(
                        children: [
                          Container(
                            width: double.maxFinite,
                            decoration: BoxDecoration(
                              color: Color(0xff3C78B5),
                            ),
                            child: Column(
                              children: [
                                CircleAvatar(
                                  radius: 40,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'WinnerOU',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'winnerou.webname.com',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 14),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                        child: Center(
                                            child: Text(
                                      '55(=/MONTH',
                                      style: subscriptionStyle,
                                    ))),
                                    Expanded(
                                        child: Center(
                                            child: Text('15.01.2022',
                                                style: subscriptionStyle))),
                                    Expanded(
                                        child: Center(
                                            child: Text('13.02.2022',
                                                style: subscriptionStyle))),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                        child: Center(
                                            child: Text('Price',
                                                style: subscriptionStyle))),
                                    Expanded(
                                        child: Center(
                                            child: Text('Start date',
                                                style: subscriptionStyle))),
                                    Expanded(
                                        child: Center(
                                            child: Text('End date',
                                                style: subscriptionStyle))),
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: appThemelightPink,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      'CANCEL SUBSCRIPTION',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}