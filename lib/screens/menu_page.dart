import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tms/components/button_helper.dart';
import 'package:tms/screens/contact_page.dart';
import 'package:tms/screens/help_page.dart';
import 'package:tms/screens/settings.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    var he = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding:
            EdgeInsets.only(left: he * 0.03, right: he * 0.03, top: he * 0.04),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(top: he * 0.03, bottom: he * 0.03),
              child: Row(
                children: [
                  Expanded(child: Container()),
                  GestureDetector(
                      onTap: () {
                        Navigator.of(context)
                            .popUntil((route) => route.isFirst);
                      },
                      child: const Icon(
                        Icons.close_rounded,
                        size: 30,
                      )),
                  SizedBox(height: he * 0.01),
                ],
              ),
            ),
            SizedBox(height: he * 0.13),
            const ButtonText(text: 'Contact Us', child: ContactUs()),
            SizedBox(height: he * 0.03),
            const Text('About Us', style: TextStyle(fontSize: 30)),
            SizedBox(height: he * 0.03),
            const ButtonText(text: 'Help', child: HelpPage()),
            SizedBox(height: he * 0.03),
            const ButtonText(text: 'Settings', child: SettingsPage()),
            SizedBox(height: he * 0.03),
            GestureDetector(
              onTap: () => SystemNavigator.pop(),
              child: const Text('Logout', style: TextStyle(fontSize: 30)),
            ),
            SizedBox(height: he * 0.03),
          ],
        ),
      ),
    );
  }
}
