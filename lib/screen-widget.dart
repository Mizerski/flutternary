import 'package:flutter/material.dart';
import 'package:flutternary/widget/bymeacooffe_button/bymeacooffe_button.dart';
import 'package:flutternary/widget/github_button/github_button.dart';
import 'package:url_launcher/url_launcher.dart';

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
            color: Colors.black,
            iconSize: 35,
            onPressed: () {}
          ),
        toolbarHeight: 120,
        title: Row(
          children: [
              const Text.rich(
              TextSpan(
                text: 'Back',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
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
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    icon: check? const Icon(Icons.bookmark_outline): const Icon(Icons.bookmark),
                    iconSize: 40,
                  )
                ],
              ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                
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
                        ),
                      child: 
                      Text('Simple',  
                      style: TextStyle(color: Colors.blue[600])),
                    ),
                    
                      ElevatedButton(
                        onPressed: () {}, 
                        style:
                          ElevatedButton.styleFrom(
                            backgroundColor: const Color.fromARGB(0, 0, 0, 0),
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)
                            ),
                          ),
                        child: Text('Detailed', 
                          style: TextStyle(color: Colors.blue[600])),
                      ),
                    
                  ],
                ),
            ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: 
                      const Text.rich(
                        TextSpan(
                          text: 'Hello flutter developers! \n',
                          children: <TextSpan>[
                            TextSpan(text: "Today we're going to learn how to set a ", style: TextStyle(color: Colors.black)),
                            TextSpan(text: 'background ', style: TextStyle(color: Color.fromARGB(121, 152, 231, 48))),
                            TextSpan(text: 'color for a '),
                            TextSpan(text: 'container', style: TextStyle(color: Color.fromARGB(207, 243, 196, 41))),
                            TextSpan(text: ' in Flutter. To do this, we can use the'),
                            TextSpan(text: ' container ', style: TextStyle(color: Color.fromARGB(207, 243, 196, 41))),
                            TextSpan(text: 'widget and set the color parameter to the desired color. For example:')
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: 
                  Column(
                    children: [
                      Row(
                        children:  [
                          Container(
                            padding: const EdgeInsets.all(10),
                            height: 75,
                            decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(15)
                            ),
                            child: 
                            const Text.rich(
                              textAlign: TextAlign.left,
                              TextSpan(
                                children: [
                                  TextSpan(text: 'Container', style: TextStyle(color: Color.fromARGB(207, 243, 196, 41))),
                                  TextSpan(text: '( \n'),
                                  TextSpan(text: 'color: Colors.'),
                                  TextSpan(text: 'blue', style: TextStyle(color: Colors.blue)),
                                  TextSpan(text: ', \n'),
                                  TextSpan(text: ')')
                                ]
                              )
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: 
                      const Text.rich(
                        TextSpan(
                          children: <TextSpan>[
                            TextSpan(text: 'The will set the ', style: TextStyle(color: Colors.black)),
                            TextSpan(text: 'background', style: TextStyle(color: Color.fromARGB(121, 152, 231, 48))),
                            TextSpan(text: 'color for the '),
                            TextSpan(text: 'container', style: TextStyle(color: Color.fromARGB(207, 243, 196, 41))),
                            TextSpan(text: ' to blue. You can also use a hex code or create your own custom color using the Color class'),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: 
                  Column(
                    children: [
                      Row(
                        children:  [
                          Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(15)
                            ),
                            child: 
                            const Text.rich(
                              textAlign: TextAlign.left,
                              TextSpan(
                                children: [
                                  TextSpan(text: 'Container', style: TextStyle(color: Color.fromARGB(207, 243, 196, 41))),
                                  TextSpan(text: '( \n'),
                                  TextSpan(text: '// Set the '),
                                  TextSpan(text: 'background ', style: TextStyle(color: Color.fromARGB(121, 152, 231, 48))),
                                  TextSpan(text: 'color to a custom color \n'),
                                  TextSpan(text: 'color: Color(0xff00ff00), //Green \n'),
                                  TextSpan(text: ')')
                                ]
                              )
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
              ),
              Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    padding: const EdgeInsets.all(10),
                    child: 
                    const Text.rich(
                      textAlign: TextAlign.left,
                      TextSpan(
                        children: [
                          TextSpan(text: "That'ts it! You can now easily set the"),
                          TextSpan(text: 'background ', style: TextStyle(color: Color.fromARGB(121, 152, 231, 48))),
                          TextSpan(text: 'color of your '),
                          TextSpan(text: 'Container', style: TextStyle(color: Color.fromARGB(207, 243, 196, 41))),
                          TextSpan(text: 'in Flutter.'),
                        ]
                      )
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('font: '),                  
                  InkWell(
                    onTap: () {
                      launchUrl(Uri.parse('https://docs.flutter.dev/'));
                    },
                    child: const Text('https://docs.flutter.dev/', 
                    style: TextStyle(color: Color.fromARGB(100, 114, 114, 212),)
                    )
                  ),
                ],
              )
            ]
          ),
        ),
      );
  }
}
