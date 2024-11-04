import 'package:flutter/material.dart';
import 'package:tms/components/button_helper.dart';
import '../../../components/upper_header.dart';
import 'privacy_security.dart';
import 'package:tms/components/text_helper.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  @override
  Widget build(BuildContext context) {
    var he = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(left: he * 0.03, right: he * 0.03),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              upperHeader("Change Password", context, false, page: const PrivacySecurity()),
              SizedBox(height: he * 0.042),
              labelText(
                  'Your password must be at least 6 characters and should include a combination of numbers, letters and special characters ',
                  16,
                  Colors.grey[600]),
              SizedBox(height: he * 0.01),
              const TextBox(obscureText: true, text: 'Current Password'),
              SizedBox(height: he * 0.01),
              const TextBox(obscureText: true, text: 'New Password'),
              SizedBox(height: he * 0.01),
              const TextBox(obscureText: true, text: 'Confirm Password'),
              SizedBox(height: he * 0.06),
              SizedBox(
                width: double.infinity,
                height: he * 0.07,
                child: BoxButton(
                  text: 'Change Password',
                  onPressed: () {},
                  bckgcolor: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
