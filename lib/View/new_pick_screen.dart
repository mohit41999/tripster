import 'package:flutter/material.dart';
import 'package:tipster/utils/colors.dart';

class NewPickScreen extends StatefulWidget {
  const NewPickScreen({Key? key}) : super(key: key);

  @override
  State<NewPickScreen> createState() => _NewPickScreenState();
}

class _NewPickScreenState extends State<NewPickScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
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
                      'NEW PICK',
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
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Sport'),
                  Container(
                      height: 40,
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
                            child: Text('Soccer'),
                          ),

                          // value: dropdownValue,
                          icon: Padding(
                            padding: const EdgeInsets.only(right: 18.0),
                            child:
                                const Icon(Icons.keyboard_arrow_down_outlined),
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
                  Text('Competition'),
                  Container(
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('UEFA Champions League'),
                          Icon(Icons.search)
                        ],
                      ),
                    ),
                  ),
                  Text('Event'),
                  Container(
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [Text('Pick event'), Icon(Icons.search)],
                      ),
                    ),
                  ),
                  Text('Market'),
                  Container(
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Total corners FT'),
                          Icon(Icons.search)
                        ],
                      ),
                    ),
                  ),
                  Text('Bet'),
                  Container(
                      height: 40,
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
                            child: Text('Pick bet'),
                          ),

                          // value: dropdownValue,
                          icon: Padding(
                            padding: const EdgeInsets.only(right: 18.0),
                            child:
                                const Icon(Icons.keyboard_arrow_down_outlined),
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
              ))
        ],
      ),
    );
  }
}
