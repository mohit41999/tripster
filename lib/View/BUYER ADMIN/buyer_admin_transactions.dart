import 'package:flutter/material.dart';
import 'package:tipster/View/SELLER%20ADMIN/seller_admin_settings.dart';
import 'package:tipster/View/WALLET/wallet_deposit_screen.dart';
import 'package:tipster/constants/widgets/buyer_admin_popup_widget.dart';
import 'package:tipster/constants/widgets/commonAppBar.dart';
import 'package:tipster/constants/widgets/common_bottom_widget.dart';
import 'package:tipster/utils/colors.dart';

class BuyerAdminTransactions extends StatefulWidget {
  const BuyerAdminTransactions({Key? key}) : super(key: key);

  @override
  State<BuyerAdminTransactions> createState() => _BuyerAdminTransactionsState();
}

class _BuyerAdminTransactionsState extends State<BuyerAdminTransactions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppBar(),
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
                   buyerAdminDialog(context);
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
                            'TRANSACTIONS',
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
                      'Filter from',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 200,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey.withOpacity(0.5),
                          ),
                          borderRadius: BorderRadius.circular(5)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Expanded(child: Text('')),
                            Icon(Icons.calendar_today_outlined)
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Filter to',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16)),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 200,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey.withOpacity(0.5),
                          ),
                          borderRadius: BorderRadius.circular(5)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Expanded(child: Text('')),
                            Icon(Icons.calendar_today_outlined)
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                        color: appThemeBlue,
                        borderRadius: BorderRadius.circular(5)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 8.0),
                      child: Text(
                        'Show',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 60,
              decoration: BoxDecoration(
                color: appThemeBlue,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'TYPE',
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
                Text('Deposit 25.00'),
                Text('WID:6c9413a3ee046418b70059b1b34c7038'),
                Text('Skrill Transaction ID: 444555666'),
                Text('Market Fee'),
                Text('WID:6c9413a3ee046418b70059b1b34c7038'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(child: Text('Date')),
                    Expanded(child: Text('29 Dec 2021, 16:34')),
                  ],
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(flex: 2, child: Text('Amount')),
                    Expanded(child: Text('-25')),
                  ],
                ),
                Divider(),
              ],
            ),
          ),

          CommonBottomWidget()
        ],
      ),
    );
  }
}
