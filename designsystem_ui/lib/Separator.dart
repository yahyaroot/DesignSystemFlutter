import 'package:flutter/material.dart';
import 'package:designsystem_ui/BaseCard.dart';
import 'package:homenet_ui/homenet_ui.dart';

//  Separator Untuk Total
Widget _buildTotalListView() {
  return ListView.separated(
    itemCount: 2,
    separatorBuilder: (BuildContext context, int index) => SizedBox(height: 20),
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
            {"name": "Amrikun", "download": 10, "upload": 20},
            {"name": "Yahya", "download": 15, "upload": 25},
            {"name": "Sandi", "download": 12, "upload": 25},
            {"name": "Nisa", "download": 12, "upload": 25},
          ],
        );
      }
    },
  );
}
