import 'package:flutter/material.dart';
import 'package:tipster/utils/colors.dart';

class BlogView extends StatefulWidget {
  const BlogView({Key? key}) : super(key: key);

  @override
  State<BlogView> createState() => _BlogViewState();
}

class _BlogViewState extends State<BlogView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 2.5,
            width: double.infinity,
            color: appThemeBlue,
          )
        ],
      ),
    );
  }
}
