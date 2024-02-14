import 'package:flutter/material.dart';
import 'package:idute_app/widgets/main_drawer.dart';

import 'widgets/homepage_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MainDrawer(),
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.menu,
                size: 36,
              ), // Change the icon here
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(36.0),
        child: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: 2,
          shrinkWrap: true,
          crossAxisSpacing: 40,
          mainAxisSpacing: 26,
          children: const [
            HomePageCard(
              heading: "Total Users",
              count: "2000",
            ),
            HomePageCard(
              heading: "Average Usage Time",
              count: "30 mins",
            ),
            HomePageCard(
              heading: "Monthly Active Users",
              count: "158",
            ),
            HomePageCard(
              heading: "Daily Active Users",
              count: "200",
            ),
          ],
        ),
      ),
    );
  }
}
