import 'package:flag/flags_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';
import 'package:tipster/constants/widgets/commonAppBar.dart';
import 'package:tipster/constants/widgets/commonWidgets.dart';
import 'package:tipster/utils/colors.dart';

class BlogView extends StatefulWidget {
  const BlogView({Key? key}) : super(key: key);

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
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
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
                          '55\$/MONTH',
                          style: TextStyle(fontSize: 12, color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 120,
                    height: 35,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [Icon(Icons.person_add_alt), Text('FOLLOW')],
                    ),
                    decoration: BoxDecoration(
                        border: Border.all(color: appThemeBlue),
                        borderRadius: BorderRadius.circular(4)),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
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
            padding: const EdgeInsets.all(8.0),
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
            padding: const EdgeInsets.all(8.0),
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
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 8),
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
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: MediaQuery.of(context).size.height / 2,
              color: Colors.white,
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding:
                          const EdgeInsets.only(top: 20.0, left: 10, right: 10),
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
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'OnlyElite',
                                      style: TextStyle(
                                          color: appThemelightPink,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      '11 Feb 2022 11:20',
                                      style:
                                          TextStyle(color: Color(0xffB5B5B5)),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Row(
                                      children: [
                                        commonFlag(),
                                        SizedBox(
                                          width: 3,
                                        ),
                                        Text('+14% (253)'),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Divider(),
                  Expanded(
                      flex: 3,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16.0, vertical: 4.0),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.info_rounded,
                                  color: Colors.transparent,
                                ),
                                Expanded(
                                  child: Center(
                                    child: Text(
                                      'Sassuola v Roma',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                Icon(
                                  Icons.info_rounded,
                                  color: appThemelightPink,
                                ),
                              ],
                            ),
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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('assets/images/footbal_icon.png'),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Football / Livebet / Kick off: 13 Feb 2022, 19:00',
                                style: TextStyle(
                                    color: Colors.black.withOpacity(0.5)),
                              ),
                            ],
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
                                  Text('Likes (15)'),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Row(
                                    children: [
                                      Text('Comments '),
                                      Text(
                                        '(0)',
                                        style:
                                            TextStyle(color: appThemelightPink),
                                      ),
                                    ],
                                  ),
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
          ),
          Padding(
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
          )
        ],
      ),
    );
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
