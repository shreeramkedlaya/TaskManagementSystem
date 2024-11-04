import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tms/components/text_helper.dart';
import 'package:tms/widgets/constant.dart';

import '../components/button_helper.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    var he = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: MyThemeColor.backgroundColor,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(
              left: he * 0.03,
              right: he * 0.03,
              top: he * 0.03,
              bottom: he * 0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              labelText('First Name', 16, Colors.grey[600]),
              SizedBox(height: he * 0.01),
              SizedBox(
                  height: he * 0.045, child: myTextField('Shreeram', context)),
              SizedBox(height: he * 0.02),
              labelText('Last Name', 16, Colors.grey[600]),
              SizedBox(height: he * 0.01),
              SizedBox(
                  height: he * 0.045, child: myTextField('Kedlaya', context)),
              SizedBox(height: he * 0.02),
              labelText('Username', 16, Colors.grey[600]),
              SizedBox(height: he * 0.01),
              Row(
                children: [
                  SizedBox(
                    height: he * 0.045,
                    width: he * 0.20,
                    child: myTextField('shreeram', context),
                  ),
                  Expanded(child: Container()),
                  const ChangeButtonText(text: 'Change Username'),
                  const Icon(Icons.edit, color: Colors.blueAccent, size: 18)
                ],
              ),
              SizedBox(height: he * 0.02),
              labelText('Phone Number', 16, Colors.grey[600]),
              SizedBox(height: he * 0.01),
              Row(
                children: [
                  SizedBox(
                    height: he * 0.045,
                    width: he * 0.20,
                    child: myTextField('+91123445698', context),
                  ),
                  Expanded(child: Container()),
                  const ChangeButtonText(text: 'Change Number'),
                  const Icon(Icons.edit, color: Colors.blueAccent, size: 18)
                ],
              ),
              SizedBox(height: he * 0.02),
              labelText('Email Address', 16, Colors.grey[600]),
              SizedBox(height: he * 0.01),
              Row(
                children: [
                  SizedBox(
                    height: he * 0.045,
                    width: he * 0.24,
                    child: myTextField('ked@gmail.com', context),
                  ),
                  Expanded(child: Container()),
                  const ChangeButtonText(text: 'Change Email ID'),
                  const Icon(Icons.edit, color: Colors.blueAccent, size: 18)
                ],
              ),
              SizedBox(height: he * 0.02),
              Divider(color: Colors.grey[300], thickness: 1),
              SizedBox(height: he * 0.01),
              const RowText(text: 'Add Account', iconSize: 21),
              SizedBox(height: he * 0.021),
              const RowText(text: 'Switch Account', iconSize: 21),
              SizedBox(height: he * 0.021),
              GestureDetector(
                onTap: () => SystemNavigator.pop(),
                child: labelText('Log Out', 18, Colors.blueAccent),
              )
            ],
          ),
        ),
      ),
    );
  }
}
