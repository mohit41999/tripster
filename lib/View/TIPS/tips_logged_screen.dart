import 'package:flutter/material.dart';
import 'package:tipster/constants/widgets/TipsWidgets/tips_widgets.dart';
import 'package:tipster/constants/widgets/commonAppBar.dart';
import 'package:tipster/constants/widgets/commonWidgets.dart';
import 'package:tipster/constants/widgets/common_bottom_widget.dart';
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
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
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
          return (index + 1 == 10)
              ? CommonBottomWidget()
              : Padding(
                  padding:
                      const EdgeInsets.only(left: 8.0, bottom: 8.0, right: 8.0),
                  child: (index % 3 == 0) ? TipsWidget() : TipsWidgetPaid(),
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
        itemCount: 20,
        itemBuilder: (context, index) {
          return (index + 1 == 10)
              ? CommonBottomWidget()
              : Padding(
                  padding:
                      const EdgeInsets.only(left: 8.0, bottom: 8.0, right: 8.0),
                  child: (index % 3 == 0)
                      ? TipsWidgetWithFollow()
                      : (index % 5 == 0)
                          ? TipsWidgetComboPick()
                          : TipsWidgetPaidWithFollow(),
                );
        });
  }
}
