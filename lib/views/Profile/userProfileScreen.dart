import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:safar_project/helper/colors%20and%20style/textStyle.dart';

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade400,
        title: const Text(
          "My Profile",
          style: blackfont20semibold,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.logout),
          )
        ],
      ),
      body: screenBodyWidget(),
    );
  }

  Widget screenBodyWidget() {
    return const Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.amber,
            radius: 25,
            child: Text("N"),
          ),
          title: Text(
            "Keshav Gautam",
            style: blackfont14normal,
          ),
          subtitle: Text("gautam@gmail.com"),
        )
      ],
    );
  }
}
