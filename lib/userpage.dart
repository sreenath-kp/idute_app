import 'package:flutter/material.dart';
import 'package:idute_app/models/user_list.dart';
import 'package:idute_app/widgets/main_drawer.dart';
import 'package:idute_app/widgets/menu_button.dart';
import 'package:idute_app/widgets/search_delegate.dart';
import 'package:idute_app/widgets/user_tile.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
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
            onPressed: () {
              showSearch(context: context, delegate: SearchUserDelegate());
            },
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
