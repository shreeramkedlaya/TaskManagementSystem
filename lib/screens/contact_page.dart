import 'package:flutter/material.dart';
import 'package:tms/components/button_helper.dart';
import 'package:tms/components/text_helper.dart';
import 'package:tms/components/upper_header.dart';
import 'package:tms/screens/menu_page.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    var he = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.only(left: he * 0.03, right: he * 0.03),
          child: Column(
            children: [
              upperHeader("Contact Us", context, false, page: const MenuPage()),
              SizedBox(height: he * 0.02),
              SizedBox(
                height: he * 0.27,
                width: he * 0.35,
                child: Image.asset('lib/assets/ProfPageImg.png'),
              ),
              labelText('We are here to help you', 18, Colors.grey.shade600),
              SizedBox(height: he * 0.1),
              Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.only(left: he * 0.03, right: he * 0.03),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      myTextField('Enter your name', context),
                      const SizedBox(height: 15),
                      myTextField('Enter your email', context),
                      const SizedBox(height: 15),
                      myTextField('Enter your message', context),
                      const SizedBox(height: 30),
                      SizedBox(
                        width: double.infinity,
                        height: he * 0.06,
                        child: BoxButton(
                          text: 'Send',
                          bckgcolor: Colors.grey.shade900,
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
