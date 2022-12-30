import 'package:flutter/material.dart';
import 'package:flutternary/widget/bymeacooffe_button/bymeacooffe_button.dart';
import 'package:flutternary/widget/github_button/github_button.dart';

class ScreenWidget extends StatelessWidget {
  const ScreenWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_new_rounded),
            iconSize: 35,
            onPressed: () {}
          ),
        toolbarHeight: 90,
        title: const Text(
          'Back',
          style: TextStyle(fontSize: 16),
        ),
        // ignore: prefer_const_literals_to_create_immutables
        actions: [
         GithubButton(),
         BuyMeaCoffeeButton()
        ],
      ),
      body: Container(),
    );
  }
}
