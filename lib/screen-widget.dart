import 'package:flutter/material.dart';
import 'package:flutternary/widget/bymeacooffe_button/bymeacooffe_button.dart';
import 'package:flutternary/widget/github_button/github_button.dart';

class ScreenWidget extends StatefulWidget {
  const ScreenWidget({Key? key}) : super(key: key);

  @override
  State<ScreenWidget> createState() => _ScreenWidgetState();
}

class _ScreenWidgetState extends State<ScreenWidget> {

  bool check = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_new_rounded),
            iconSize: 35,
            onPressed: () {}
          ),
        toolbarHeight: 120,
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
      body: Container(
        color: Colors.grey[200],
        padding: const EdgeInsets.only(top: 20, left: 20),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: 200,
                    child: const Text('Widget Container',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                  IconButton(
                    onPressed: (){
                      setState(() {
                        check = !check;
                      });
                    }, 
                    padding: EdgeInsets.only(left: 125, bottom: 55),
                    icon: check? Icon(Icons.bookmark_outline): Icon(Icons.bookmark),
                    iconSize: 40,
                  )
              ],
            ),
            Row(
              children: [
                ElevatedButton(
                    onPressed: () {},
                    style:
                      ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(0, 0, 0, 0),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)
                        ),
                        padding: EdgeInsets.only(left: 10,right: 10)
                      ),
                    child: Text('Simple',  style: TextStyle(color: Colors.blue[600])),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: 
                    ElevatedButton(
                      onPressed: () {}, 
                      style:
                        ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(0, 0, 0, 0),
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)
                          ),
                          padding: EdgeInsets.all(10)
                        ),
                      child: Text('Detailed', 
                        style: TextStyle(color: Colors.blue[600])),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    padding: const EdgeInsets.only(right: 20),
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Text('Hello Flutter developers! Today, we´re going to learn how to set a background color for a container in Flutter. To do this, we can use the Container widget and set the color parameter to the desired color, For example:',
                    style: TextStyle(fontSize: 14),),
                  ),
                ],
              )
            ]
          ),
        ),
      );
  }
}
