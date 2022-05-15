import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:web_dashboard/Widgets/StylishText.dart';

import '../../../Constants/Style.dart';

/// Example without a datasource
class AvailableDrivers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 30),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 6),
                color: mediumLight.withOpacity(.1),
                blurRadius: 12)
          ],
          border: Border.all(color: mediumLight, width: .5)),
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              SizedBox(
                width: 10,
              ),
              StylishText(
                text: "Available Drivers",
                color: grey,
                fontWeight: FontWeight.bold,
              )
            ],
          ),
          DataTable2(
              columnSpacing: 12,
              horizontalMargin: 12,
              minWidth: 600,
              columns: [
                DataColumn2(
                  label: Text('Name'),
                  size: ColumnSize.L,
                ),
                DataColumn(
                  label: Text('Location'),
                ),
                DataColumn(
                  label: Text('Rating'),
                ),
                DataColumn(
                  label: Text('Action'),
                ),
              ],
              rows: List<DataRow>.generate(
                  7,
                  (index) => DataRow(cells: [
                        DataCell(StylishText(
                          text: "Ghost Rider",
                        )),
                        DataCell(StylishText(
                          text: "Faisalabad",
                        )),
                        DataCell(Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.deepOrange,
                              size: 18,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            StylishText(text: "4.$index")
                          ],
                        )),
                        DataCell(Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: dark, width: .5),
                              color: light,
                              borderRadius: BorderRadius.circular(20)),
                          padding:
                              EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                          child: StylishText(
                            text: "Set Delivery",
                            color: dark.withOpacity(.7),
                            fontWeight: FontWeight.bold,
                          ),
                        ))
                      ]))),
        ],
      ),
    );
  }
}
