import 'package:flutter/material.dart';
import 'package:idute_app/widgets/drawer_button.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        backgroundColor: Colors.black,
        shadowColor: Colors.white,
        shape: Border.all(
          color: Colors.white70,
          width: 1,
        ),
        child: const Padding(
          padding: EdgeInsets.symmetric(vertical: 20.0),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 28),
                child: Text(
                  'IDUTE',
                  style: TextStyle(
                    fontFamily: 'inter',
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              MyDrawerButton(
                title: "Home",
                icon: Icons.home_rounded,
              ),
              MyDrawerButton(
                title: "Users",
                icon: Icons.group,
              ),
              MyDrawerButton(
                title: "MVI",
                icon: Icons.lightbulb,
              ),
              MyDrawerButton(
                title: "Join Startup",
                icon: Icons.rocket_launch_rounded,
              ),
              MyDrawerButton(
                title: "Report",
                icon: Icons.report_rounded,
              ),
              MyDrawerButton(
                title: "Help",
                icon: Icons.help_rounded,
              ),
              MyDrawerButton(
                title: "App Suggestions",
                icon: Icons.lightbulb,
              ),
              Spacer(),
              MyDrawerButton(
                title: "Logout",
                icon: Icons.logout,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
