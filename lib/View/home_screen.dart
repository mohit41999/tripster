import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:tipster/View/login_screen.dart';
import 'package:tipster/View/signup_screen.dart';
import 'package:tipster/utils/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TextStyle subscriptionStyle =
      TextStyle(fontWeight: FontWeight.bold, fontSize: 16);
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
                color: appThemeBlue,
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
        break;
      case 1:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: MediaQuery.of(context).size.height / 3,
              color: appThemeBlue,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 50.0, vertical: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'TIPSTERS',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'FILTER BY NUMBER OF PICKS:',
                      style: TextStyle(color: Colors.white),
                    ),
                    Container(
                        height: 40,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey,
                            ),
                            color: Colors.white),
                        width: double.infinity,
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            isExpanded: true,

                            value: null,
                            hint: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(''),
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
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'ORDER BY:',
                      style: TextStyle(color: Colors.white),
                    ),
                    Container(
                      height: 40,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                          ),
                          color: Colors.white),
                      width: double.infinity,
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          isExpanded: true,

                          value: null,
                          hint: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(''),
                          ),

                          // value: dropdownValue,
                          icon: Padding(
                            padding: const EdgeInsets.only(right: 18.0),
                            child:
                                const Icon(Icons.keyboard_arrow_down_outlined),
                          ),
                          //
                          // iconSize: 24,
                          //
                          // underline: Container(),
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
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 24.0, vertical: 8),
              child: Container(
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                    color: appThemelightPink,
                    width: 3,
                  ))),
                  width: MediaQuery.of(context).size.width / 3.5,
                  child: Center(
                    child: Text(
                      'All',
                      style: TextStyle(
                          color: appThemelightPink,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 8.0, right: 8.0, top: 8.0, bottom: 0.0),
            child: Container(
              color: appThemeBlue,
              child: Padding(
                padding: const EdgeInsets.only(
                    right: 8.0, left: 20.0, top: 4.0, bottom: 4.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'ALL TIPSTERS',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      Icons.refresh,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            ),
          ),
          ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 10,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(
                      left: 8.0, right: 8.0, bottom: 10.0),
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
                                    '2015',
                                    style: subscriptionStyle,
                                  ))),
                                  Expanded(
                                      child: Center(
                                          child: Text('2574',
                                              style: subscriptionStyle))),
                                  Expanded(
                                      child: Center(
                                          child: Text('+157',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16,
                                                  color: appThemelightPink)))),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                      child: Center(
                                          child: Text('Since',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12,
                                              )))),
                                  Expanded(
                                      child: Center(
                                          child: Text('Picks',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12,
                                              )))),
                                  Expanded(
                                      child: Center(
                                          child: Text('Profit',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12,
                                              )))),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                      child: Padding(
                                    padding: const EdgeInsets.only(right: 16.0),
                                    child: Align(
                                        alignment: Alignment.centerRight,
                                        child: Text('+24%',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16,
                                                color: appThemelightPink))),
                                  )),
                                  Expanded(
                                      child: Padding(
                                    padding: const EdgeInsets.only(left: 16.0),
                                    child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text('9735',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16,
                                            ))),
                                  )),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                      child: Padding(
                                    padding: const EdgeInsets.only(right: 16.0),
                                    child: Align(
                                        alignment: Alignment.centerRight,
                                        child: Text('Yield',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12))),
                                  )),
                                  Expanded(
                                      child: Padding(
                                    padding: const EdgeInsets.only(left: 16.0),
                                    child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text('Followers',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12,
                                            ))),
                                  )),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8.0),
                                      child: Container(
                                        height: 30,
                                        decoration: BoxDecoration(
                                            border:
                                                Border.all(color: appThemeBlue),
                                            borderRadius:
                                                BorderRadius.circular(4)),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(Icons
                                                .person_add_alt_1_outlined),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text('FOLLOW')
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8.0),
                                      child: Container(
                                        height: 30,
                                        decoration: BoxDecoration(
                                            color: appThemeBlue,
                                            borderRadius:
                                                BorderRadius.circular(4)),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.add_shopping_cart,
                                              color: Colors.white,
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              '55\$/MONTH',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
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
        ],
      ),
    );
  }
}
