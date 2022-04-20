import 'package:flutter/material.dart';
import 'package:tipster/View/TIPS/tips_logged_screen.dart';
import 'package:tipster/View/home_screen_logged_id.dart';
import 'package:tipster/View/login_screen.dart';
import 'package:tipster/View/signup_screen.dart';
import 'package:tipster/utils/colors.dart';

class commonSignUpAppBar extends StatefulWidget implements PreferredSizeWidget {
  @override
  _commonSignUpAppBarState createState() => _commonSignUpAppBarState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(50);
}

class _commonSignUpAppBarState extends State<commonSignUpAppBar> {
  @override
  Widget build(BuildContext context) {
    return getAppBar(context);
  }

  final listOfMoreMenu = [
    "Tips",
    "Tipsters",
  ];
  void _showPopupMenu(BuildContext context) async {
    List<PopupMenuEntry<dynamic>> list = [];
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
                    child: Text(
                      element.toString(),
                      style: TextStyle(color: Colors.white),
                    )),
              ),
              Divider(
                color: Colors.white,
              ),
            ],
          )));
      // list.add(PopupMenuDivider());
    }
    var sizeOfScreen = MediaQuery.of(context).size;
    await showMenu(
        context: context,
        color: appThemeBlue,
        position: RelativeRect.fromLTRB(
            0, 80, MediaQuery.of(context).size.width / 2, 0),
        items: list,
        useRootNavigator: true);
  }

  void _selectMoreOption(int index, BuildContext context) {
    switch (index) {
      case 0:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => TipsLoggedInScreen()));
        break;
      case 1:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => HomeScreenLogIn()));
        break;
    }
  }

  Widget getAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.grey,
      leading: GestureDetector(
        child: Icon(Icons.menu),
        onTap: () {
          _showPopupMenu(context);
        },
      ),
      actions: [
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => LoginScreen()));
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.white, width: 2)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(child: Text('Log In')),
                )),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SignUpScreen()));
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                decoration: BoxDecoration(
                  color: appThemelightPink,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(child: Text('Sign Up')),
                )),
          ),
        ),
      ],
    );
  }
}
