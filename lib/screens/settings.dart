// ignore_for_file: deprecated_member_use

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tms/components/button_helper.dart';
import 'package:tms/components/text_helper.dart';
import 'package:tms/screens/help_page.dart';
import '../../../components/upper_header.dart';
import '../components/custom_text.dart';
import '../widgets/constant.dart';
import 'menu_page.dart';
import 'privacy_security.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool isSwitched = true;
  bool isSound = true;

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
              upperHeader("Settings", context, false, page: const MenuPage()),
              SizedBox(height: he * 0.035),
              Container(
                padding: EdgeInsets.all(he * 0.003),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color.fromARGB(255, 208, 240, 1),
                      Color.fromARGB(255, 253, 170, 53),
                    ],
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey[100],
                  ),
                  padding: EdgeInsets.all(he * 0.012),
                  child: Row(
                    children: [
                      Container(
                        height: he * 0.07,
                        width: he * 0.07,
                        padding: EdgeInsets.all(he * 0.01),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.grey[300],
                        ),
                        child: ColorFiltered(
                          colorFilter: ColorFilter.mode(
                              const Color.fromARGB(255, 224, 224, 224)
                                  .withOpacity(0.6),
                              BlendMode.srcATop),
                          child: const Icon(
                            Icons.workspace_premium_outlined,
                            size: 30,
                            color: MyThemeColor.textColor,
                          ),
                        ),
                      ),
                      SizedBox(width: he * 0.015),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              customText('Tasks ', 26),
                              SizedBox(width: he * 0.005),
                              const Icon(
                                Icons.add,
                                size: 25,
                                color: Color.fromARGB(255, 141, 127, 65),
                              )
                            ],
                          ),
                          SizedBox(height: he * 0.0005),
                          customText('Unlock our most exclusive features', 14)
                        ],
                      ),
                      Expanded(child: Container()),
                      const Icon(
                        Icons.arrow_forward_ios,
                        color: Color.fromARGB(255, 22, 23, 22),
                        size: 20,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: he * 0.025),
              Row(
                children: [
                  if (isSound == true)
                    const Icon(
                      Icons.volume_up_outlined,
                      size: 25,
                      color: MyThemeColor.textColor,
                    )
                  else
                    const Icon(
                      Icons.volume_off_outlined,
                      size: 25,
                      color: MyThemeColor.textColor,
                    ),
                  SizedBox(width: he * 0.015),
                  customText('Sounds', 18),
                  Expanded(child: Container()),
                  CupertinoSwitch(
                    value: isSound,
                    onChanged: (bool value) {
                      setState(() {
                        isSound = value;
                      });
                    },
                  )
                ],
              ),
              SizedBox(height: he * 0.025),
              Row(
                children: [
                  isSwitched
                      ? const Icon(Icons.notifications_active_outlined,
                          size: 25, color: MyThemeColor.textColor)
                      : const Icon(Icons.notifications_off_outlined,
                          size: 25, color: MyThemeColor.textColor),
                  SizedBox(width: he * 0.015),
                  customText('Notifications', 18),
                  Expanded(child: Container()),
                  CupertinoSwitch(
                      value: isSwitched,
                      onChanged: (bool value) {
                        setState(() {
                          isSwitched = value;
                        });
                      })
                ],
              ),
              SizedBox(height: he * 0.025),
              const ListTileButton(
                icon: Icons.lock_open_outlined,
                text: 'Privacy & Security',
                destination: PrivacySecurity(),
                showIcon: true,
              ),
              SizedBox(height: he * 0.025),
              /*const ListTileButton(
                icon: Icons.info_outline,
                text: 'About App',
                destination: AboutApp(),
                showIcon: true,
              ),*/
              SizedBox(height: he * 0.025),
              const ListTileButton(
                icon: Icons.help_outline,
                text: 'Help & Support',
                destination: HelpPage(),
                showIcon: true,
              ),
              SizedBox(height: he * 0.025),
              const Divider(color: Colors.blue, thickness: 1),
              SizedBox(height: he * 0.02),
              GestureDetector(
                onTap: () {},
                child: labelText('Sign Out', 17, MyThemeColor.textColor),
              ),
              SizedBox(height: he * 0.02),
            ],
          ),
        ),
      ),
    );
  }
}
