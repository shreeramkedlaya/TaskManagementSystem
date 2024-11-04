import 'package:flutter/material.dart';
import 'package:tms/widgets/constant.dart';

class ChangeButtonText extends StatelessWidget {
  final String text;

  const ChangeButtonText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        text,
        style: const TextStyle(color: Colors.blueAccent),
      ),
    );
  }
}

class BoxButton extends StatelessWidget {
  final String text;
  final Color? bckgcolor;
  final VoidCallback onPressed;

  const BoxButton(
      {super.key, required this.text, this.bckgcolor, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: bckgcolor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      child: Text(
        text,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}

class ButtonText extends StatelessWidget {
  final String text;
  final Widget child;

  const ButtonText({super.key, required this.text, required this.child});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => child,
          ),
        );
      },
      child: Text(
        text,
        style: const TextStyle(fontSize: 30),
      ),
    );
  }
}

class ListTileButton extends StatelessWidget {
  final IconData icon;
  final String text;
  final Widget destination;
  final bool showIcon;

  void navigateToPage(BuildContext context, Widget page) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => page));
  }

  const ListTileButton({
    super.key,
    required this.icon,
    required this.text,
    required this.destination,
    required this.showIcon,
  });

  @override
  Widget build(BuildContext context) {
    var he = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: () => navigateToPage(context, destination),
      child: Row(
        children: [
          Icon(icon, size: 25, color: MyThemeColor.textColor),
          SizedBox(width: he * 0.015),
          Text(
            text,
            style: const TextStyle(
                fontSize: 18,
                color: MyThemeColor.textColor,
                fontWeight: FontWeight.bold),
          ),
          Expanded(child: Container()),
          showIcon
              ? const Icon(
                  Icons.arrow_forward_ios,
                  color: MyThemeColor.textColor,
                  size: 20,
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}

Widget customOption(String text, IconData icon, onTap) {
  return GestureDetector(
    onTap: onTap,
    child: Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Row(
        children: [
          Icon(icon, color: Colors.black87, size: 30),
          const SizedBox(width: 15),
          Text(
            text,
            style: const TextStyle(color: Colors.black87, fontSize: 20),
          ),
          Expanded(child: Container()),
          const Icon(Icons.arrow_forward_ios, color: Colors.black87, size: 20),
        ],
      ),
    ),
  );
}
