import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

Widget buildTimeLine(Color color) {
  return SizedBox(
    width: 20,
    height: 115,
    child: TimelineTile(
      alignment: TimelineAlign.manual,
      lineXY: 0,
      indicatorStyle: IndicatorStyle(
        indicatorXY: 0,
        width: 20,
        indicator: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: color, width: 5),
            shape: BoxShape.circle,
          ),
        ),
      ),
      afterLineStyle: LineStyle(color: color, thickness: 2),
    ),
  );
}
