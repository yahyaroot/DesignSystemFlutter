import 'package:flutter/material.dart';
import 'package:designsystem_ui/BaseButton.dart';
import 'package:homenet_ui/homenet_ui.dart';
import 'package:designsystem_ui/BaseTypography.dart';
import 'package:designsystem_ui/BaseDatausage.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
          children: [
            BoxText.headingOne('Design System HomeNet'),
            verticalSpaceSmall,
            Divider(),
            CardWidget()
          ],
        ));
  }
}

class CardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          // Navigate to the other screen when the "Typography" column is clicked
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BaseTypography(),
                            ),
                          );
                        },
                        child: Container(
                          height: 100.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.grey, // Stroke color
                              width: 1.0, // Stroke width
                            ),
                            borderRadius:
                                BorderRadius.circular(8.0), // Adjust as needed
                          ),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.star, color: Colors.yellow),
                                Text('Typography'),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          // Navigate to the other screen when the "Typography" column is clicked
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BaseButton(),
                            ),
                          );
                        },
                        child: Container(
                          height: 100.0,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey, // Stroke color
                              width: 1.0, // Stroke width
                            ),
                            borderRadius:
                                BorderRadius.circular(8.0), // Adjust as needed
                          ),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.star, color: Colors.yellow),
                                Text('Button'),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          // Navigate to the other screen when the "Typography" column is clicked
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BaseDatausage(),
                            ),
                          );
                        },
                        child: Container(
                          height: 100.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.grey, // Stroke color
                              width: 1.0, // Stroke width
                            ),
                            borderRadius:
                                BorderRadius.circular(8.0), // Adjust as needed
                          ),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.star, color: Colors.yellow),
                                Text('Card'),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          // Navigate to the other screen when the "Typography" column is clicked
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BaseButton(),
                            ),
                          );
                        },
                        child: Container(
                          height: 100.0,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey, // Stroke color
                              width: 1.0, // Stroke width
                            ),
                            borderRadius:
                                BorderRadius.circular(8.0), // Adjust as needed
                          ),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.star, color: Colors.yellow),
                                Text('Button'),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),

            //   bottom: 0,
            //   right: 0,
            //   child: Container(
            //     decoration: BoxDecoration(
            //       boxShadow: [
            //         BoxShadow(
            //           color: Colors.white,
            //           spreadRadius: 2,
            //           blurRadius: 5,
            //           offset: Offset(0, 3),
            //         ),
            //       ],
            //     ),
            //     child: GestureDetector(onTap: () {
            //       // Navigate to the other screen when the "Typography" column is clicked
            //       Navigator.push(
            //         context,
            //         MaterialPageRoute(
            //           builder: (context) => ExampleView(),
            //         ),
            //       );
            //     }),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
