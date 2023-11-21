import 'package:flutter/material.dart';
import 'package:homenet_ui/homenet_ui.dart';
import 'package:designsystem_ui/BaseCard.dart';

// class BaseDatausage extends StatefulWidget {
//   const BaseDatausage({Key? key}) : super(key: key);

//   @override
//   State<BaseDatausage> createState() => _HomeState();
// }

// class _HomeState extends State<BaseDatausage> {
//   int selectedButtonIndex = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         elevation: 1,
//         title: Text(
//           "Card Data Usage",
//           style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
//         ),
//       ),
//       body: Container(
//         color: Color(0xFFF4F5F9),
//         child: Padding(
//           padding: EdgeInsets.all(20),
//           child: DefaultTabController(
//             length: 3,
//             child: Column(
//               children: [
//                 Card(
//                   elevation: 0,
//                   child: ClipRRect(
//                     borderRadius: BorderRadius.circular(100),
//                     child: Container(
//                       color: Colors.white,
//                       height: 70,
//                       child: TabBar(
//                         physics: const ClampingScrollPhysics(),
//                         padding: EdgeInsets.only(
//                           top: 10,
//                           left: 10,
//                           right: 10,
//                           bottom: 10,
//                         ),
//                         unselectedLabelColor: Colors.black,
//                         labelColor: Colors.white,
//                         indicatorSize: TabBarIndicatorSize.label,
//                         indicatorPadding: EdgeInsets.zero,
//                         dividerColor: Colors.transparent,
//                         indicator: ShapeDecoration(
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(50),
//                           ),
//                           color: dfPrimary,
//                         ),
//                         tabs: [
//                           Tab(
//                             child: Container(
//                               height: 50,
//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(30),
//                                 border: Border.all(color: dfPrimary, width: 1),
//                               ),
//                               child: Align(
//                                 alignment: Alignment.center,
//                                 child: Text(
//                                   "Sekarang",
//                                   style: TextStyle(
//                                       fontSize: 12,
//                                       fontWeight: FontWeight.w400),
//                                 ),
//                               ),
//                             ),
//                           ),
//                           Tab(
//                             child: Container(
//                               height: 50,
//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(30),
//                                 border: Border.all(color: dfPrimary, width: 1),
//                               ),
//                               child: Align(
//                                 alignment: Alignment.center,
//                                 child: Text("Rata-rata",
//                                     style: TextStyle(
//                                         fontSize: 12,
//                                         fontWeight: FontWeight.w400)),
//                               ),
//                             ),
//                           ),
//                           Tab(
//                             child: Container(
//                               height: 50,
//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(30),
//                                 border: Border.all(color: dfPrimary, width: 1),
//                               ),
//                               child: Align(
//                                 alignment: Alignment.center,
//                                 child: Text("Total",
//                                     style: TextStyle(
//                                         fontSize: 12,
//                                         fontWeight: FontWeight.w400)),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 20),
//                 Expanded(
//                   child: TabBarView(
//                     children: [
//                       _buildNowListView(),
//                       _buildAverageListView(),
//                       _buildTotalListView(),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildNowListView() {
//     return ListView.separated(
//       itemCount: 2,
//       separatorBuilder: (BuildContext context, int index) =>
//           SizedBox(height: 20),
//       itemBuilder: (context, index) {
//         if (index == 0) {
//           return CustomCard(
//             title: "Download",
//             mbAmount: 5,
//             downloadData: [
//               {"bandwidth": "20.0", "time": "14:40"},
//               {"bandwidth": "15.0", "time": "14:45"},
//               {"bandwidth": "18.0", "time": "14:50"},
//               {"bandwidth": "22.0", "time": "14:55"},
//             ],
//           );
//         } else {
//           return CustomCard(
//             title: "Upload",
//             mbAmount: 8,
//             downloadData: [
//               {"bandwidth": "10.0", "time": "11:40"},
//               {"bandwidth": "12.0", "time": "12:45"},
//               {"bandwidth": "14.0", "time": "13:50"},
//               {"bandwidth": "16.0", "time": "14:55"},
//             ],
//           );
//         }
//       },
//     );
//   }

//   Widget _buildAverageListView() {
//     return Column(
//       children: [
//         SingleChildScrollView(
//           scrollDirection: Axis.horizontal,
//           child: Row(
//             children: [
//               _buildButton("Per Jam", 0),
//               _buildButton("Per Hari", 1),
//               _buildButton("Per Minggu", 2),
//               _buildButton("Per Bulan", 3),
//               _buildButton("Per Tahun", 4),
//             ],
//           ),
//         ),
//         SizedBox(height: 10),
//         Expanded(
//           child: ListView.separated(
//             padding: EdgeInsets.all(15),
//             itemCount: 2,
//             separatorBuilder: (BuildContext context, int index) =>
//                 SizedBox(height: 15),
//             itemBuilder: (context, index) {
//               return ListTile(
//                 onTap: () {},
//                 title: Text("Call List $index"),
//                 subtitle: Text("Tab Icon"),
//                 trailing: Icon(Icons.arrow_circle_right_sharp),
//               );
//             },
//           ),
//         ),
//       ],
//     );
//   }

//   Widget _buildTotalListView() {
//     return ListView.separated(
//       itemCount: 2,
//       separatorBuilder: (BuildContext context, int index) =>
//           SizedBox(height: 20),
//       itemBuilder: (context, index) {
//         if (index == 0) {
//           return DataCard(
//             title: "Penggunaan Data",
//             dataSource: [
//               {"category": "Download", "value": 100, "color": dfGreen},
//               {"category": "Upload", "value": 40, "color": dfRed},
//             ],
//           );
//         } else {
//           return DataUsers(
//             title: "Detail",
//             dataSource: [
//               {"name": "Amrikun", "download": 10, "upload": 20},
//               {"name": "Yahya", "download": 15, "upload": 25},
//               {"name": "Sandi", "download": 12, "upload": 25},
//               {"name": "Nisa", "download": 12, "upload": 25},
//             ],
//           );
//         }
//       },
//     );
//   }

//   Widget _buildButton(String text, int index) {
//     return Padding(
//       padding: EdgeInsets.symmetric(
//           horizontal: 8.0), // Adjust the horizontal padding as needed
//       child: ElevatedButton(
//         onPressed: () {
//           setState(() {
//             selectedButtonIndex = index;
//           });
//         },
//         style: ElevatedButton.styleFrom(
//           primary: selectedButtonIndex == index ? dfPrimary : Colors.white,
//           onPrimary: dfPrimary,
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(50),
//             side: BorderSide(color: dfPrimary),
//           ),
//         ),
//         child: Text(
//           text,
//           style: TextStyle(
//             color: selectedButtonIndex == index ? Colors.white : dfPrimary,
//             fontSize: 12, // Adjust the font size as needed
//             fontWeight: FontWeight.normal, // Adjust the font weight as nee
//           ),
//         ),
//       ),
//     );
//   }
// }
