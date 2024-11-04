import 'package:flutter/material.dart';
import 'package:tms/components/button_helper.dart';
import 'package:tms/components/text_helper.dart';
import 'package:tms/screens/passwords.dart';
import 'package:tms/screens/settings.dart';
import '../components/upper_header.dart';

class PrivacySecurity extends StatefulWidget {
  const PrivacySecurity({super.key});

  @override
  State<PrivacySecurity> createState() => _PrivacySecurityState();
}

class _PrivacySecurityState extends State<PrivacySecurity> {
  @override
  Widget build(BuildContext context) {
    var he = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.only(left: he * 0.03, right: he * 0.03),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              upperHeader("Privacy & Security", context, false, page: const SettingsPage()),
              SizedBox(height: he * 0.035),
              labelText('Login & Security', 16, Colors.grey.shade600),
              SizedBox(height: he * 0.01),
              customOption(
                "Password",
                Icons.lock,
                () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ChangePassword(),
                    ),
                  );
                },
              ),
              SizedBox(height: he * 0.01),
              customOption("My Account", Icons.account_circle, () {}),
              SizedBox(height: he * 0.01),
              customOption("My Data", Icons.save_alt, () {}),
            ],
          ),
        ),
      ),
    );
  }
}
