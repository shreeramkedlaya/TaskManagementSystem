import 'package:flutter/material.dart';
import 'package:tms/components/text_helper.dart';
import 'package:tms/widgets/constant.dart';
import '../widgets/tasks.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(right: 8.0, left: 8.0, top: 15.0, bottom: 10.0),
          child: Premium(),
        ),
        Container(
            padding: const EdgeInsets.all(15.0), child: labelText('Tasks', 26, Colors.grey.shade600)
            /*Text(
            'Tasks',
            style: TextStyle(
              color: Colors.grey.shade600,
              fontSize: 26,
              fontWeight: FontWeight.w500,
            ),
          ),*/
            ),
        Expanded(child: Tasks())
      ],
    );
  }
}

class Premium extends StatefulWidget {
  const Premium({super.key});

  @override
  State<Premium> createState() => _PremiumState();
}

class _PremiumState extends State<Premium> {
  @override
  Widget build(BuildContext context) {
    var he = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.all(he * 0.004),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(he * 0.02),
            gradient: const LinearGradient(
              colors: [
                Color(0xfffdc830),
                Color(0xfff37335),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(he * 0.02),
              color: Colors.grey.shade200,
            ),
            padding: EdgeInsets.all(he * 0.012),
            child: Row(
              children: [
                Container(
                  height: he * 0.05,
                  width: he * 0.05,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(he * 0.02),
                    color: Colors.grey.shade300,
                  ),
                  child: ColorFiltered(
                    colorFilter: ColorFilter.mode(
                        const Color.fromARGB(255, 254, 254, 254).withOpacity(0.6),
                        BlendMode.srcATop),
                    child: const Icon(
                      Icons.workspace_premium_outlined,
                      size: 30,
                      color: MyThemeColor.textColor,
                    ),
                  ),
                ),
                SizedBox(width: he * 0.010),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Go Premium',
                      style: TextStyle(
                        color: Color.fromARGB(255, 22, 23, 22),
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      'Get access to all features and\nunlimited downloads',
                      style: TextStyle(
                        color: Colors.grey.shade800,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
                Expanded(child: Container()),
                IconButton(
                  icon: const Icon(Icons.arrow_forward_ios, color: Colors.grey),
                  onPressed: () {},
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
