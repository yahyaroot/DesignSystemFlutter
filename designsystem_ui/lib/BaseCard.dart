import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:homenet_ui/homenet_ui.dart';



//  Untuk Total di Penggunaan Data

class DataCard extends StatelessWidget {
  final String title;
  final List<Map<String, dynamic>> dataSource;

  const DataCard({
    Key? key,
    required this.title,
    required this.dataSource,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Container(
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(20),
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
                      height: 0.2,
                      color: Colors.grey,
                    ),
                    SizedBox(height: 15),
                    // Rectangle with two colors (red and green)
                    Row(
                      children: [
                        // Green Rectangle
                        Expanded(
                            flex: dataSource[0]['value'],
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Container(height: 20, color: dfGreen),
                            )),
                        SizedBox(width: 5),
                        // Blue Rectangle
                        Expanded(
                          flex: dataSource[1]['value'],
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Container(
                              height: 20,
                              color: dfDanger,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20), // Added space
                    // Totalku
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Total",
                                      style: TextStyle(
                                        color: Colors.grey[800],
                                        fontWeight: FontWeight.w400,
                                        fontSize: 15,
                                      ),
                                    ),
                                    Text(
                                      "${dataSource[0]['value'] + dataSource[1]['value']}",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 25,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Text(
                                      "MB",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 5),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Download
                              Container(
                                // color: dfDanger,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      'assets/images/bullet_download.png',
                                      width: 10,
                                      height: 10,
                                    ),
                                    SizedBox(width: 10.0),
                                    Text(
                                      "Download",
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(width: 5),
                                    Row(
                                      children: [
                                        Text(
                                          "${dataSource[0]['value']}",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        SizedBox(width: 5),
                                        Text(
                                          "MB",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 15),
                              // Upload
                              Container(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      'assets/images/bullet_upload.png',
                                      width: 10,
                                      height: 10,
                                    ),
                                    SizedBox(width: 10.0),
                                    Text(
                                      "Upload",
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(width: 10.0),
                                    Row(
                                      children: [
                                        Text(
                                          "${dataSource[1]['value']}",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        SizedBox(width: 5),
                                        Text(
                                          "MB",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
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
      ),
    );
  }
}

//  Untuk Total di Data

class DataUsers extends StatelessWidget {
  final String title;
  final List<Map<String, dynamic>> dataSource;

  const DataUsers({
    Key? key,
    required this.title,
    required this.dataSource,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Container(
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(20),
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
                      height: 0.2,
                      color: Colors.grey,
                    ),

                    SizedBox(
                      height: 10,
                    ),

                    // Table with three rows
                    Table(
                      columnWidths: {
                        0: FlexColumnWidth(2),
                        1: FlexColumnWidth(1),
                        2: FlexColumnWidth(1),
                      },
                      children: [
                        TableRow(
                          children: [
                            TableCell(
                              child: Container(
                                color: Colors.grey.withOpacity(0.1),
                                padding: EdgeInsets.fromLTRB(15, 8, 10, 8),
                                child: Text(
                                  'Name',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                            TableCell(
                              child: Container(
                                color: Colors.grey.withOpacity(0.1),
                                padding: EdgeInsets.symmetric(vertical: 8),
                                child: Text(
                                  'Download',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            TableCell(
                              child: Container(
                                color: Colors.grey.withOpacity(0.1),
                                padding: EdgeInsets.symmetric(vertical: 8),
                                child: Text(
                                  'Upload',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),

                        // Rows for each user
                        ...List.generate(
                          dataSource.length,
                          (index) => TableRow(
                            children: [
                              TableCell(
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(15, 8, 10, 8),
                                  child: Text(
                                    '${dataSource[index]['name']}',
                                    style: TextStyle(fontSize: 14),
                                  ),
                                ),
                              ),
                              TableCell(
                                child: Padding(
                                  padding: EdgeInsets.symmetric(vertical: 8),
                                  child: Text(
                                      '${dataSource[index]['download']} MB'),
                                ),
                              ),
                              TableCell(
                                child: Padding(
                                  padding: EdgeInsets.symmetric(vertical: 8),
                                  child:
                                      Text('${dataSource[index]['upload']} MB'),
                                ),
                              ),
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
      ),
    );
  }
}
