import 'package:flag/flags_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';
import 'package:tipster/View/BUYER%20ADMIN/buyer_admin_susbscription.dart';
import 'package:tipster/View/WALLET/wallet_deposit_screen.dart';
import 'package:tipster/View/login_screen.dart';
import 'package:tipster/constants/widgets/TipsWidgets/Graded/graded_pick.dart';
import 'package:tipster/constants/widgets/TipsWidgets/Paid/paid_pick.dart';
import 'package:tipster/constants/widgets/TipsWidgets/Public/public_pick.dart';
import 'package:tipster/constants/widgets/TipsWidgets/tips_widgets.dart';
import 'package:tipster/constants/widgets/commonAppBar.dart';
import 'package:tipster/constants/widgets/commonWidgets.dart';
import 'package:tipster/constants/widgets/common_bottom_widget.dart';
import 'package:tipster/utils/colors.dart';

class BlogView extends StatefulWidget {
  final bool isLoggedin;
  final bool isUser;

  BlogView({Key? key, required this.isLoggedin, required this.isUser})
      : super(key: key);

  @override
  State<BlogView> createState() => _BlogViewState();
}

class _BlogViewState extends State<BlogView> {
  @override
  Widget build(BuildContext context) {
    final List<ChartData> chartData = [
      ChartData('loss', 33.33, appThemelightPink),
      ChartData('Profit', 66.66, appThemeteal),
    ];

    final List<ChartData> chartData1 = [
      ChartData('soccer', 33.33, appThemelightPink),
      ChartData('baseball', 66.66, appThemeteal),
    ];

    return Scaffold(
      appBar: commonAppBar(),
      body: ListView(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 3,
            width: double.infinity,
            color: appThemelightBlue,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  radius: 80,
                  backgroundColor: appThemeBlue,
                  backgroundImage: AssetImage('assets/images/profile.jpg'),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Hi, I\'m Lorem!',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Center(child: commonFlag())
                  ],
                )
              ],
            ),
          ),
          Container(
              height: 50,
              width: double.infinity,
              color: appThemeBlue.withOpacity(0.8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('1458\nPICKS',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w600),
                      textAlign: TextAlign.center),
                  Text('+273\nPROFITS',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w600),
                      textAlign: TextAlign.center),
                  Text('+13%\nYIELD',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w600),
                      textAlign: TextAlign.center),
                  Text(
                    '5425\nFOLLOWERS',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w600),
                    textAlign: TextAlign.center,
                  ),
                ],
              )),
          Divider(
            color: appThemeBlue,
            thickness: 3,
            indent: 0,
            height: 0,
          ),
          Container(
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      if (widget.isLoggedin) {
                        showPopup();
                        // ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        //     content: Text(
                        //         "you will subscribe and therespective amount will be deducted from youraccount")));

                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => WalletDepositScreen()));
                      } else {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginScreen()));
                      }
                    },
                    child: Container(
                      width: 120,
                      height: 35,
                      decoration: BoxDecoration(
                          color: appThemeBlue,
                          borderRadius: BorderRadius.circular(4)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.shopping_cart,
                            color: Colors.white,
                            size: 20,
                          ),
                          Text(
                            '55\€/MONTH',
                            style: TextStyle(fontSize: 12, color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      if (widget.isLoggedin) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    BuyerAdminSubscriptions()));
                      } else {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginScreen()));
                      }
                    },
                    child: Container(
                      width: 120,
                      height: 35,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.person_add_alt),
                          Text(
                            'FOLLOW',
                            style: TextStyle(fontSize: 12),
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                          border: Border.all(color: appThemeBlue),
                          borderRadius: BorderRadius.circular(4)),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  height: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(5),
                          topLeft: Radius.circular(5)),
                      color: appThemeBlue),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'WIN RATE',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 12),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 200,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '66%\n WON',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: appThemeteal,
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                      ),
                      Container(
                        width: 200,
                        height: 200,
                        child: SfCircularChart(
                            palette: [appThemelightPink, appThemeteal],
                            borderWidth: double.minPositive,
                            series: <CircularSeries>[
                              // Render pie chart
                              DoughnutSeries<ChartData, String>(
                                  dataSource: chartData,
                                  radius: '85',
                                  xValueMapper: (ChartData data, _) => data.x,
                                  yValueMapper: (ChartData data, _) => data.y),
                            ]),
                      ),
                      Text('33%\n LOST',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: appThemelightPink,
                              fontWeight: FontWeight.bold,
                              fontSize: 14)),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  height: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(5),
                          topLeft: Radius.circular(5)),
                      color: appThemeBlue),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'TOP SPORTS',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 12),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 200,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Text(
                      //   '66%\n FOOTBALL',
                      //   textAlign: TextAlign.center,
                      //   style: TextStyle(
                      //       color: appThemeteal,
                      //       fontWeight: FontWeight.bold,
                      //       fontSize: 14),
                      // ),
                      Container(
                        height: 200,
                        child: SfCircularChart(
                            palette: [
                              Color(0xff095199),
                              Color(0xff0b65bf),
                            ],
                            borderWidth: double.minPositive,
                            legend: Legend(
                                isVisible: true,
                                textStyle: TextStyle(color: Colors.grey)),
                            series: <CircularSeries>[
                              // Render pie chart
                              DoughnutSeries<ChartData, String>(
                                  dataSource: chartData1,
                                  radius: '85',
                                  xValueMapper: (ChartData data, _) => data.x,
                                  yValueMapper: (ChartData data, _) => data.y),
                            ]),
                      ),
                      // Text('33%\n TENNIS',
                      //     textAlign: TextAlign.center,
                      //     style: TextStyle(
                      //         color: appThemelightPink,
                      //         fontWeight: FontWeight.bold,
                      //         fontSize: 14)),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  height: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(5),
                          topLeft: Radius.circular(5)),
                      color: appThemeBlue),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'PROFIT CHART',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 12),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 200,
                  color: Colors.white,
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
                    child: Container(
                        child: Center(
                            child: Container(
                                child: SfCartesianChart(
                      primaryXAxis: CategoryAxis(),
                      plotAreaBorderColor: Colors.white,
                      plotAreaBackgroundColor: Colors.white,
                      borderColor: Colors.white,
                      backgroundColor: Colors.white,
                      palette: [appThemeBlue],
                      series: <ChartSeries<SalesData, String>>[
                        LineSeries<SalesData, String>(
                            dataSource: <SalesData>[
                              SalesData('Feb\n\'21', 0),
                              SalesData('Mar\n\'21', 0),
                              SalesData('Apr\n\'21', 0),
                              SalesData('May\n\'21', 0),
                              SalesData('Jun\n\'21', 0),
                              SalesData('Jul\n\'21', 0),
                              SalesData('Aug\n\'21', 0),
                              SalesData('Sep\n\'21', 0),
                              SalesData('Dec\n\'21', 13),
                              SalesData('Jan\n\'21', 15),
                              SalesData('Feb\n\'22', 32),
                            ],
                            markerSettings: MarkerSettings(
                                isVisible: true, color: appThemeBlue),
                            xValueMapper: (SalesData data, _) => data.year,
                            yValueMapper: (SalesData data, _) => data.sales),
                      ],
                    )))),
                  ),
                ),
              ],
            ),
          ),
          Container(),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  height: 40,
                  decoration: BoxDecoration(color: appThemeBlue),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'PENDING PICKS',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                        Icon(
                          Icons.refresh,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
                PublicPickWidget(isFollowing: true),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
            child: PaidPickWidget(
              isFollowing: true,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  height: 40,
                  decoration: BoxDecoration(color: appThemeBlue),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'GRADED PICKS',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                        Icon(
                          Icons.refresh,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 8.0),
                  child: GradedPick(grade: 'Won'),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 8.0),
                  child: GradedPick(grade: 'Lost'),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 8.0),
                  child: GradedPick(grade: 'Pushed'),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 8.0),
                  child: PublicPickAnalysisWidget(
                    isFollowing: true,
                  ),
                ),
              ],
            ),
          ),
          // Padding(
          //   padding:  EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
          //   child: PublicPickAnalysisWidget(
          //     isFollowing: true,
          //   ),
          // ),
          // Padding(
          //   padding:  EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
          //   child: PaidPickWidget(
          //     isFollowing: true,
          //   ),
          // ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Container(
                decoration: BoxDecoration(
                    color: appThemeBlue,
                    borderRadius: BorderRadius.circular(5)),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 8),
                  child: Text(
                    'See Older',
                    style: TextStyle(color: Colors.white),
                  ),
                )),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  height: 35,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(5),
                          topLeft: Radius.circular(5)),
                      color: appThemeBlue),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'SERVICE DESCRIPTION',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                      )
                    ],
                  ),
                ),
                Container(
                  color: Colors.white,
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 20, horizontal: 10.0),
                    child: Text(
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
                  ),
                )
              ],
            ),
          ),
          CommonBottomWidget()
        ],
      ),
    );
  }

  Future showPopup() async {
    return showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) {
          return StatefulBuilder(builder: (context, setState) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: AlertDialog(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                contentPadding: EdgeInsets.zero,
                insetPadding: EdgeInsets.zero,

                // To display the title it is optional
                content: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        height: 50,
                        width: double.infinity,
                        color: appThemeBlue,
                        child: Center(
                          child: Text(
                            'DEPOSIT',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 16, bottom: 16, left: 8, right: 8),
                        child: Text(
                          "your balance is not enough. you need to deposit before purchasing",
                          style: TextStyle(color: Colors.red, fontSize: 12),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Current Balance:'),
                          Expanded(
                              child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                                height: 40, child: Center(child: Text('15€'))),
                          ))
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Deposit Amount(EUR):'),
                          Expanded(
                              child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                                height: 40,
                                child: TextField(
                                  decoration: InputDecoration(
                                    fillColor: Colors.white,
                                    filled: true,
                                    contentPadding: EdgeInsets.only(left: 4),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.grey, width: 1.0),
                                        borderRadius: BorderRadius.circular(7)),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: appThemeBlue, width: 1.0),
                                      borderRadius: BorderRadius.circular(7),
                                    ),
                                  ),
                                )),
                          ))
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: Text('Payment method:'),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Radio(
                                        value: '1',
                                        groupValue: '1',
                                        onChanged: (v) {}),
                                    Text(
                                      'Card',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                        value: '1',
                                        groupValue: '1',
                                        onChanged: (v) {}),
                                    Text(
                                      'Paypal',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                        value: '1',
                                        groupValue: '1',
                                        onChanged: (v) {}),
                                    Text(
                                      'Skirll',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(
                            value: false,
                            onChanged: (v) {},
                          ),
                          Expanded(
                            child: Text(
                                "i knowladge that i read and agree with the Wallwet Rulles"),
                          )
                        ],
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text('Deposit'),
                      )
                    ],
                  ),
                ),
                // Message which will be pop up on the screen
                // Action widget which will provide the user to acknowledge the choice
              ),
            );
          });
        });
  }
}

class ChartData {
  ChartData(this.x, this.y, this.color);

  final String x;
  final double y;
  final Color color;
}

class SalesData {
  SalesData(this.year, this.sales);

  final String year;
  final double sales;
}
