import 'package:flutter/material.dart';
import 'package:tms/components/build_timeline.dart';

class TaskTimeline extends StatelessWidget {
  final Map<String, dynamic> detail;

  const TaskTimeline({super.key, required this.detail});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          buildTimeLine(detail['tlcolor']),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(detail['time'],
                    style: const TextStyle(color: Colors.grey, fontSize: 15)),
                detail['title'].isNotEmpty
                    ? _buildCard(
                        detail['bgcolor'], detail['title'], detail['slot'])
                    : _buildCard(Colors.white, '', ''),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCard(Color bgcolor, String title, String slot) {
    return Container(
      height: 250,
      width: 250,
      decoration: BoxDecoration(
        color: bgcolor,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(10),
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              style: TextStyle(
                color: Colors.grey.shade900,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              slot,
              style: TextStyle(
                color: Colors.grey.shade900,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
