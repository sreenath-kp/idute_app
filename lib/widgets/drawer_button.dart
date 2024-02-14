import 'package:flutter/material.dart';

class MyDrawerButton extends StatelessWidget {
  final String title;

  final IconData icon;

  const MyDrawerButton({
    super.key,
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: ListTile(
        onTap: () {
          // Navigator.of(context).pushReplacementNamed('/');
        },
        leading: Icon(icon, color: Colors.white),
        minLeadingWidth: 20,
        title: Text(
          title,
          style: const TextStyle(
            fontFamily: 'inter',
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}

// drawer_button.dart