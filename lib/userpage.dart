import 'package:flutter/material.dart';
import 'package:idute_app/models/user.dart';
import 'package:idute_app/widgets/main_drawer.dart';
import 'package:idute_app/widgets/menu_button.dart';
import 'package:idute_app/widgets/user_tile.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  List<User> users = [
    User(
      username: 'John Doe',
      field: 'Technology',
      imageUrl:
          'https://img.freepik.com/free-photo/young-bearded-man-with-striped-shirt_273609-5677.jpg?w=1800&t=st=1707908233~exp=1707908833~hmac=b8e107da59d273df4809c10b45f5c69de3131f10c0d26d45f4976bcbae8c5a23',
      position: 'Founder',
      company: 'Google',
      rating: 63,
    ),
    User(
      username: 'Jane Doe',
      field: 'Technology',
      imageUrl:
          'https://img.freepik.com/free-photo/young-bearded-man-with-striped-shirt_273609-5677.jpg?w=1800&t=st=1707908233~exp=1707908833~hmac=b8e107da59d273df4809c10b45f5c69de3131f10c0d26d45f4976bcbae8c5a23',
      position: 'Founder',
      company: 'Google',
      rating: 63,
    ),
    User(
      username: 'John Doe',
      field: 'Technology',
      imageUrl:
          'https://img.freepik.com/free-photo/young-bearded-man-with-striped-shirt_273609-5677.jpg?w=1800&t=st=1707908233~exp=1707908833~hmac=b8e107da59d273df4809c10b45f5c69de3131f10c0d26d45f4976bcbae8c5a23',
      position: 'Founder',
      company: 'Google',
      rating: 63,
    ),
    User(
      username: 'Jane Doe',
      field: 'Technology',
      imageUrl:
          'https://img.freepik.com/free-photo/young-bearded-man-with-striped-shirt_273609-5677.jpg?w=1800&t=st=1707908233~exp=1707908833~hmac=b8e107da59d273df4809c10b45f5c69de3131f10c0d26d45f4976bcbae8c5a23',
      position: 'Founder',
      company: 'Google',
      rating: 63,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MainDrawer(),
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          'Users',
          style: TextStyle(
            fontFamily: 'inter',
            color: Colors.white,
            fontSize: 32,
            fontWeight: FontWeight.w400,
          ),
        ),
        backgroundColor: Colors.black,
        leadingWidth: 40,
        leading: MenuButton(context: context),
        actions: [
          IconButton(
            icon: const Icon(Icons.filter_list_alt),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.sort),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          return UserTile(
            username: users[index].username,
            field: users[index].field,
            imageUrl: users[index].imageUrl,
            position: users[index].position,
            company: users[index].company,
            rating: users[index].rating,
          );
        },
      ),
    );
  }
}
