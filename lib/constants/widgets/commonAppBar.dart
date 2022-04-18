import 'package:flutter/material.dart';
import 'package:tipster/View/BUYER%20ADMIN/buyer_admin_susbscription.dart';
import 'package:tipster/View/SELLER%20ADMIN/seller_admin_settings.dart';
import 'package:tipster/View/WALLET/wallet_deposit_screen.dart';
import 'package:tipster/View/home_screen.dart';
import 'package:tipster/View/home_screen_logged_id.dart';
import 'package:tipster/View/publish_new_pick.dart';
import 'package:tipster/View/settings_screen.dart';
import 'package:tipster/View/signup_screen.dart';
import 'package:tipster/utils/colors.dart';

class commonAppBar extends StatefulWidget implements PreferredSizeWidget {
  @override
  _commonAppBarState createState() => _commonAppBarState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(50);
}

class _commonAppBarState extends State<commonAppBar> {
  @override
  Widget build(BuildContext context) {
    return getAppBar(context);
  }

  final listOfMoreMenu = [
    "BLOG",
    "NEWPICK+",
    "TIPS",
    "MY TIPSTERS",
    "BALANCE",
    "SETTINGS",
    "SELLER ADMIN ",
    "BUYER ADMIN",
    "LOGOUT"
  ];
  final listOfMoreMenu2 = [
    "NEWPICK+",
    "TIPS",
    "TIPSTERS",
  ];
  void _showPopupMenu(BuildContext context) async {
    List<PopupMenuEntry<Object>> list = [];
    for (var element in listOfMoreMenu) {
      list.add(PopupMenuItem(
          value: element,
          enabled: true,
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                child: GestureDetector(
                    onTap: () {
                      _selectMoreOption(
                          listOfMoreMenu.indexOf(element), context);
                    },
                    child: Center(
                      child: Text(
                        element.toString(),
                        style: TextStyle(color: Colors.white),
                      ),
                    )),
              ),
              (listOfMoreMenu.indexOf(element) + 1 < listOfMoreMenu.length)
                  ? Divider(
                      color: Colors.white,
                    )
                  : SizedBox()
            ],
          )));
    }
    var sizeOfScreen = MediaQuery.of(context).size;
    await showMenu(
        context: context,
        color: appThemeBlue,
        position: RelativeRect.fromLTRB(sizeOfScreen.width, 50, 0, 0),
        items: list,
        useRootNavigator: true);
  }

  void _showPopupMenu2(BuildContext context) async {
    List<PopupMenuEntry<Object>> list = [];
    for (var element in listOfMoreMenu2) {
      list.add(PopupMenuItem(
          value: element,
          enabled: true,
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                child: GestureDetector(
                    onTap: () {
                      _selectMoreOption2(
                          listOfMoreMenu2.indexOf(element), context);
                    },
                    child: Text(element.toString(),
                        style: TextStyle(color: Colors.white))),
              ),
              Divider(
                color: Colors.white,
              ),
            ],
          )));
    }
    var sizeOfScreen = MediaQuery.of(context).size;
    await showMenu(
        color: appThemeBlue,
        context: context,
        position: RelativeRect.fromLTRB(
            sizeOfScreen.width, 100, MediaQuery.of(context).size.width / 2, 0),
        items: list,
        useRootNavigator: true);
  }

  void _selectMoreOption(int index, BuildContext context) {
    switch (index) {
      case 0:
        break;
      case 1:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => PublishNewPickScreen()));
        break;
      case 2:
        break;
      case 3:
        break;
      case 4:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => WalletDepositScreen()));
        break;
      case 5:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => SettingsScreen()));
        break;
      case 6:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => SellerAdminSettings()));
        break;
      case 7:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => BuyerAdminSubscriptions()));
        break;
      case 8:
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => HomeScreen()),
            (route) => false);
        break;
    }
  }

  void _selectMoreOption2(int index, BuildContext context) {
    switch (index) {
      case 0:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => PublishNewPickScreen()));
        break;
      case 1:
        break;
      case 2:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => HomeScreenLogIn()));
        break;
    }
  }

  Widget getAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: appThemeBlue,
      leading: GestureDetector(
        child: Icon(Icons.menu),
        onTap: () {
          _showPopupMenu2(context);
        },
      ),
      actions: [
        GestureDetector(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(),
          ),
        ),
        GestureDetector(
          onTap: () {
            _showPopupMenu(context);
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.keyboard_arrow_down,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
