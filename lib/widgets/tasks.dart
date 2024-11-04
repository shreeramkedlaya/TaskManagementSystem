import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:tms/widgets/constant.dart';
import 'package:tms/widgets/detail.dart';

import '../models/task_model.dart';

class Tasks extends StatelessWidget {
  final taskList = Task.generateTasks();

  Tasks({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: GridView.builder(
        itemCount: taskList.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
        itemBuilder: (context, index) => taskList[index].isLast
            ? buildAddTask()
            : buildTask(context, taskList[index]),
      ),
    );
  }
}

Widget buildAddTask() {
  return DottedBorder(
    borderType: BorderType.RRect,
    radius: const Radius.circular(20),
    color: Colors.grey.shade600,
    strokeWidth: 2,
    dashPattern: const [10, 10],
    child: Center(
      child: Icon(
        Icons.add,
        size: 30,
        color: Colors.grey.shade600,
      ),
    ),
  );
}

Widget buildTask(BuildContext context, Task taskList) {
  return GestureDetector(
    onTap: () {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => DetailPage(taskList)));
    },
    child: Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: taskList.bgcolor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(taskList.icon, color: taskList.iconcolor, size: 30),
          const SizedBox(height: 30),
          Text(
            taskList.title.toString(),
            style: TextStyle(
              color: Colors.grey[600],
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              buildTaskStatus(
                Colors.white54,
                taskList.iconcolor!,
                '${taskList.left} left',
              ),
              const SizedBox(width: 5),
              buildTaskStatus(
                kwhite,
                taskList.iconcolor!,
                '${taskList.done} done',
              )
            ],
          ),
        ],
      ),
    ),
  );
}

Widget buildTaskStatus(Color bgcolor, Color txtColor, String txt) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
    decoration: BoxDecoration(
      color: bgcolor,
      borderRadius: BorderRadius.circular(15),
    ),
    child: Text(
      txt,
      style: TextStyle(
        color: txtColor,
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
    ),
  );
}
