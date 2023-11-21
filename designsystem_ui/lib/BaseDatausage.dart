import 'package:flutter/material.dart';
import 'package:homenet_ui/homenet_ui.dart';
import 'package:designsystem_ui/BaseCard.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class BaseDatausage extends StatefulWidget {
  const BaseDatausage({Key? key}) : super(key: key);

  @override
  State<BaseDatausage> createState() => _HomeState();
}

class _HomeState extends State<BaseDatausage> {
  int selectedButtonIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        title: Text(
          "Card Data Usage",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
      ),
      body: Container(
        color: Color(0xFFF4F5F9),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: DefaultTabController(
            length: 3,
            child: Column(
              children: [
                Card(
                  elevation: 0,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Container(
                      color: Colors.white,
                      height: 70,
                      child: TabBar(
                        physics: const ClampingScrollPhysics(),
                        padding: EdgeInsets.only(
                          top: 10,
                          left: 10,
                          right: 10,
                          bottom: 10,
                        ),
                        unselectedLabelColor: Colors.black,
                        labelColor: Colors.white,
                        indicatorSize: TabBarIndicatorSize.label,
                        indicatorPadding: EdgeInsets.zero,
                        dividerColor: Colors.transparent,
                        indicator: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          color: dfPrimary,
                        ),
                        tabs: [
                          Tab(
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                border: Border.all(color: dfPrimary, width: 1),
                              ),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "Sekarang",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ),
                          ),
                          Tab(
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                border: Border.all(color: dfPrimary, width: 1),
                              ),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text("Rata-rata",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400)),
                              ),
                            ),
                          ),
                          Tab(
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                border: Border.all(color: dfPrimary, width: 1),
                              ),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text("Total",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Expanded(
                  child: TabBarView(
                    children: [
                      _buildNowListView(),
                      _buildAverageListView(),
                      _buildTotalListView(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildNowListView() {
    return ListView.separated(
      itemCount: 2,
      separatorBuilder: (BuildContext context, int index) =>
          SizedBox(height: 20),
      itemBuilder: (context, index) {
        if (index == 0) {
          return CustomCard(
            title: "Download",
            mbAmount: 5,
            downloadData: [
              {"bandwidth": "20.0", "time": "14:40"},
              {"bandwidth": "15.0", "time": "14:45"},
              {"bandwidth": "18.0", "time": "14:50"},
              {"bandwidth": "22.0", "time": "14:55"},
            ],
          );
        } else {
          return CustomCard(
            title: "Upload",
            mbAmount: 8,
            downloadData: [
              {"bandwidth": "10.0", "time": "11:40"},
              {"bandwidth": "12.0", "time": "12:45"},
              {"bandwidth": "14.0", "time": "13:50"},
              {"bandwidth": "16.0", "time": "14:55"},
            ],
          );
        }
      },
    );
  }

  Widget _buildAverageListView() {
    List<List<Map<String, dynamic>>> averageData = [
      // Data for Per Jam
      [
        {"bandwidth": "10.0", "time": "12:00"},
        {"bandwidth": "12.0", "time": "13:00"},
        {"bandwidth": "15.0", "time": "14:00"},
        {"bandwidth": "18.0", "time": "15:00"},
      ],
      // Data for Per Hari
      [
        {"bandwidth": "20.0", "time": "Senin"},
        {"bandwidth": "22.0", "time": "Selasa"},
        {"bandwidth": "18.0", "time": "Rabu"},
        {"bandwidth": "15.0", "time": "Kamis"},
      ],
      // Data for Per Minggu
      [
        {"bandwidth": "30.0", "time": "Minggu 1"},
        {"bandwidth": "32.0", "time": "Minggu 2"},
        {"bandwidth": "28.0", "time": "Minggu 3"},
        {"bandwidth": "25.0", "time": "Minggu 4"},
      ],
      // Data for Per Bulan
      [
        {"bandwidth": "40.0", "time": "Januari"},
        {"bandwidth": "42.0", "time": "Februari"},
        {"bandwidth": "38.0", "time": "Maret"},
        {"bandwidth": "35.0", "time": "April"},
      ],
      // Data for Per Tahun
      [
        {"bandwidth": "50.0", "time": "2021"},
        {"bandwidth": "52.0", "time": "2022"},
        {"bandwidth": "48.0", "time": "2023"},
        {"bandwidth": "45.0", "time": "2024"},
      ],
    ];

    return Column(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              _buildButton("Per Jam", 0),
              _buildButton("Per Hari", 1),
              _buildButton("Per Minggu", 2),
              _buildButton("Per Bulan", 3),
              _buildButton("Per Tahun", 4),
            ],
          ),
        ),
        SizedBox(height: 10),
        Expanded(
          child: ListView.separated(
            padding: EdgeInsets.all(15),
            itemCount: 2,
            separatorBuilder: (BuildContext context, int index) =>
                SizedBox(height: 15),
            itemBuilder: (context, index) {
              return CustomCard(
                title: index == 0 ? "Download" : "Upload",
                mbAmount: index == 0 ? 5 : 8,
                downloadData: averageData[selectedButtonIndex],
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildTotalListView() {
    return ListView.separated(
      itemCount: 2,
      separatorBuilder: (BuildContext context, int index) =>
          SizedBox(height: 20),
      itemBuilder: (context, index) {
        if (index == 0) {
          return DataCard(
            title: "Penggunaan Data",
            dataSource: [
              {"category": "Download", "value": 100, "color": dfGreen},
              {"category": "Upload", "value": 40, "color": dfRed},
            ],
          );
        } else {
          return DataUsers(
            title: "Detail",
            dataSource: [
              {"name": "Amri ", "download": 10, "upload": 20},
              {"name": "Yahya", "download": 15, "upload": 25},
              {"name": "Sandi", "download": 12, "upload": 25},
              {"name": "Nisa", "download": 12, "upload": 25},
            ],
          );
        }
      },
    );
  }

  Widget _buildButton(String text, int index) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: 8.0), // Adjust the horizontal padding as needed
      child: ElevatedButton(
        onPressed: () {
          setState(() {
            selectedButtonIndex = index;
          });
        },
        style: ElevatedButton.styleFrom(
          primary: selectedButtonIndex == index ? dfPrimary : Colors.white,
          onPrimary: dfPrimary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
            side: BorderSide(color: dfPrimary),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: selectedButtonIndex == index ? Colors.white : dfPrimary,
            fontSize: 12, // Adjust the font size as needed
            fontWeight: FontWeight.normal, // Adjust the font weight as nee
          ),
        ),
      ),
    );
  }
}

//  Untuk Card Sekarang
class CustomCard extends StatelessWidget {
  final String title;
  final int mbAmount;
  final List<Map<String, dynamic>> downloadData;

  const CustomCard({
    Key? key,
    required this.title,
    required this.mbAmount,
    required this.downloadData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        // color: Colors.white, // Set the background color to white
        color: Colors.white,
        elevation: 0, // Set the background color to white
        // margin: EdgeInsets.all(10),
        shape: RoundedRectangleBorder(
          borderRadius:
              BorderRadius.circular(100), // Adjust the border radius as needed
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(15),
            bottomRight: Radius.circular(15),
            topLeft: Radius.circular(15), // Adjust the radius as needed
            topRight: Radius.circular(15),
          ),
          child: Container(
            // decoration: BoxDecoration(
            color: Colors.white, // Set the background color to white
            // ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        height: 0.2, // Adjust the thickness of the line
                        color: Colors.grey, // Adjust the color of the line
                      ),
                      SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "$mbAmount",
                                    style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Mbps",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  // Replace Image.asset with your image path or network image
                                  Image.asset(
                                    'assets/images/download_icon.png',
                                    width: 20,
                                    height: 20,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Expanded(
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        'assets/images/warning_icon.png',
                                        width: 20,
                                        height: 20,
                                      ),
                                      SizedBox(width: 5),
                                      Text(
                                        'Diambil dari 1 hari kemarin',
                                        style: TextStyle(fontSize: 12),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 10),
                                Container(
                                  height: 100,
                                  child: SfCartesianChart(
                                    primaryXAxis: CategoryAxis(),
                                    series: <ChartSeries>[
                                      SplineSeries<Map<String, dynamic>,
                                          String>(
                                        dataSource: downloadData,
                                        xValueMapper:
                                            (Map<String, dynamic> data, _) =>
                                                data["time"],
                                        yValueMapper:
                                            (Map<String, dynamic> data, _) =>
                                                double.parse(data["bandwidth"]),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 10),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 10,
                ),
              ],
            ),
          ),
        ));
  }
}
