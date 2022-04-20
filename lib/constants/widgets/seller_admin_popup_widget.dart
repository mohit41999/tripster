import 'package:flutter/material.dart';
import 'package:tipster/View/SELLER%20ADMIN/seller_admin_earnings.dart';
import 'package:tipster/View/SELLER%20ADMIN/seller_admin_fees.dart';
import 'package:tipster/View/SELLER%20ADMIN/seller_admin_settings.dart';
import 'package:tipster/View/SELLER%20ADMIN/seller_admin_subscribers.dart';
import 'package:tipster/View/WALLET/wallet_deposit_screen.dart';
import 'package:tipster/View/WALLET/wallet_history_screen.dart';
import 'package:tipster/View/WALLET/wallet_withdraw_screen.dart';
import 'package:tipster/utils/colors.dart';

Future sellerAdminDialog(BuildContext context) async {
  return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          titlePadding: EdgeInsets.zero,
          title: Container(
              color: appThemeBlue,
              child: Center(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'SELLER ADMIN',
                  style: TextStyle(color: Colors.white),
                ),
              ))),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SellerAdminSettings()));
                  },
                  child: Text('SETTINGS')),
              Divider(),
              GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SellerAdminEarnings()));
                  },
                  child: Text('EARNINGS')),
              Divider(),
              GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SellerAdminSubscribers()));
                  },
                  child: Text('SUBSCRIBERS')),
              Divider(),
              GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SellerAdminFeesEarnings()));
                  },
                  child: Text('FEES&EARNINGS')),
            ],
          ),
        );
      });
}
