import 'package:flutter/material.dart';
import 'package:instagramhome_ui/widgets/bubble_story.dart';
import 'package:instagramhome_ui/widgets/user_post.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  // buat list data dummy user nya
  final List users = [
    "Michel",
    "Mirra",
    "Febby",
    "Andika",
    "Dicky",
    "Renald",
    "Richard",
    "Frensz",
    "Adelle"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Instagram",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        centerTitle: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: const [
          Icon(
            Icons.add_box_outlined,
            size: 30,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Icon(
              Icons.favorite_border,
              size: 30,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(
              Icons.send_outlined,
              size: 30,
            ),
          ),
        ],
      ),
      // kalo pake final List harus pake listview builder
      body: Column(
        children: [
          // listview dibungkus sizbox agar tidak hilang
          SizedBox(
            height: 120,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: ((context, index) {
                return BubbleStroy(name: users[index]);
              }),
              itemCount: users.length,
            ),
          ),
          // untuk ngasih garis
          const Divider(
            height: 1,
          ),
          // listview nya dibungkus expanded agar tidak error
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return UserPost(name: users[index]);
              },
              itemCount: users.length,
            ),
          )
        ],
      ),
    );
  }
}
