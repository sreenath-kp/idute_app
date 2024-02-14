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
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: Column(
            children: [
              const Padding(
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
                route: "/home",
                context: context,
              ),
              MyDrawerButton(
                title: "Users",
                icon: Icons.group,
                route: "/users",
                context: context,
              ),
              MyDrawerButton(
                title: "MVI",
                icon: Icons.lightbulb,
                route: "/home",
                context: context,
              ),
              MyDrawerButton(
                title: "Join Startup",
                icon: Icons.rocket_launch_rounded,
                route: "/home",
                context: context,
              ),
              MyDrawerButton(
                title: "Report",
                icon: Icons.report_rounded,
                route: "/home",
                context: context,
              ),
              MyDrawerButton(
                title: "Help",
                icon: Icons.help_rounded,
                route: "/home",
                context: context,
              ),
              MyDrawerButton(
                title: "App Suggestions",
                icon: Icons.lightbulb,
                route: "/home",
                context: context,
              ),
              const Spacer(),
              MyDrawerButton(
                title: "Logout",
                icon: Icons.logout,
                route: "/",
                context: context,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
