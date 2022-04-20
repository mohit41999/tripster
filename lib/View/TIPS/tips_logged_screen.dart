import 'package:flutter/material.dart';
import 'package:tipster/constants/widgets/commonAppBar.dart';
import 'package:tipster/utils/colors.dart';

class TipsLoggedInScreen extends StatefulWidget {
  const TipsLoggedInScreen({Key? key}) : super(key: key);

  @override
  State<TipsLoggedInScreen> createState() => _TipsLoggedInScreenState();
}

class _TipsLoggedInScreenState extends State<TipsLoggedInScreen>
    with SingleTickerProviderStateMixin {
  late TabController _controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width / 1.5,
            child: TabBar(
              tabs: [Tab(child: Text('ALL')), Tab(child: Text('MY TIPSTERS'))],
              controller: _controller,
              labelColor: appThemelightPink,
              indicatorColor: appThemelightPink,
              unselectedLabelColor: Colors.grey,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 40,
              color: appThemeBlue,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'SPORTS BETTING TIPS FEED',
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
          Expanded(
            child: TabBarView(
              controller: _controller,
              children: [
                AllTipsScreen(),
                MyTipsScreen(),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class MyTipsScreen extends StatelessWidget {
  const MyTipsScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: MediaQuery.of(context).size.height / 2,
              color: Colors.white,
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 40,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'OnlyElite',
                                  style: TextStyle(color: appThemelightPink),
                                ),
                                Text('11 Feb 2022 11:20'),
                                Text('+14% (253)'),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Divider(),
                  Expanded(
                      flex: 3,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Sassuola v Roma',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          Text('Over 1.5(Match Goals) @ 1.667'),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: appThemelightBlue,
                                    borderRadius: BorderRadius.circular(3)),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 6.0, vertical: 2.0),
                                  child: Text(
                                    '10/10',
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.white),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: appThemeteal,
                                    borderRadius: BorderRadius.circular(3)),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 6.0, vertical: 2.0),
                                  child: Text(
                                    'bet365',
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.white),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Text(
                            'Football / Livebet / Kick off: 13 Feb 2022, 19:00',
                            style:
                                TextStyle(color: Colors.black.withOpacity(0.5)),
                          ),
                        ],
                      )),
                  Divider(),
                  Expanded(
                      flex: 2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(2),
                                      border: Border.all(color: Colors.grey)),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 4.0),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.thumb_up_off_alt,
                                          size: 18,
                                        ),
                                        Text('Like')
                                      ],
                                    ),
                                  )),
                              Row(
                                children: [
                                  Text(
                                    'Likes (15)',
                                    style: TextStyle(color: appThemelightPink),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text('Comments (0)'),
                                ],
                              )
                            ],
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Container(
                              color: Colors.grey.withOpacity(0.3),
                              width: double.infinity,
                              height: 50,
                              child: Row(
                                children: [
                                  Expanded(
                                      child: TextField(
                                    decoration: InputDecoration(
                                      fillColor: Colors.transparent,
                                      filled: true,
                                      hintText: 'Write a comment',
                                      hintStyle: TextStyle(fontSize: 12),
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                              color: Colors.transparent,
                                              width: 1.0),
                                          borderRadius:
                                              BorderRadius.circular(7)),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            color: Colors.transparent,
                                            width: 1.0),
                                        borderRadius: BorderRadius.circular(7),
                                      ),
                                    ),
                                  )),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: appThemelightPink,
                                        borderRadius: BorderRadius.circular(4)),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8.0, vertical: 4.0),
                                      child: Text(
                                        'Comment',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ))
                ],
              ),
            ),
          );
        });
  }
}

class AllTipsScreen extends StatelessWidget {
  const AllTipsScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: MediaQuery.of(context).size.height / 2.5,
              color: Colors.white,
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 40,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'OnlyElite',
                                  style: TextStyle(
                                      color: appThemelightPink,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text('11 Feb 2022 11:20'),
                                Text('+14% (253)'),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 100,
                              height: 35,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(Icons.person_add_alt),
                                  Text('FOLLOW')
                                ],
                              ),
                              decoration: BoxDecoration(
                                  border: Border.all(color: appThemeBlue),
                                  borderRadius: BorderRadius.circular(8)),
                            ),
                            Container(
                              width: 100,
                              height: 35,
                              decoration: BoxDecoration(
                                  color: appThemeBlue,
                                  borderRadius: BorderRadius.circular(8)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(
                                    Icons.shopping_cart,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                  Text(
                                    '55\$/MONTH',
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Divider(),
                  Expanded(
                      flex: 2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.lock),
                              Text(
                                'Paid pick',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Wrap(
                            children: [
                              Text('You can see the pick only after'),
                              Text(
                                ' subscribing',
                                style: TextStyle(color: appThemelightPink),
                              ),
                              Text(
                                'or buying it for 5.00\$',
                                style: TextStyle(),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ],
                      )),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 150,
                      decoration: BoxDecoration(
                          color: appThemelightPink,
                          borderRadius: BorderRadius.circular(4)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 4.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.shopping_cart,
                              color: Colors.white,
                            ),
                            Text(
                              'Buy for 5.00 \$',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }
}
