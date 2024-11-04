import 'package:flutter/material.dart';
import 'package:tms/components/button_helper.dart';
import 'package:tms/components/upper_header.dart';
import 'package:tms/screens/menu_page.dart';

class HelpPage extends StatelessWidget {
  const HelpPage({super.key});

  @override
  Widget build(BuildContext context) {
    var he = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(left: he * 0.03, right: he * 0.03),
          child: Column(
            children: [
              upperHeader("Help", context, false, page: const MenuPage()),
              SizedBox(height: he * 0.042),
              customOption("Report a Problem", Icons.report_problem, () {}),
              SizedBox(height: he * 0.015),
              customOption("Account Status", Icons.account_box_rounded, () {}),
              SizedBox(height: he * 0.015),
              customOption("Privacy and Security Help", Icons.security, () {}),
              SizedBox(height: he * 0.015),
              customOption(
                  "Submit Request", Icons.settings_applications_rounded, () {}),
            ],
          ),
        ),
      ),
    );
  }
}
