// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class UserPost extends StatelessWidget {
  final String name;

  const UserPost({
    Key? key,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16, top: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundImage:
                        NetworkImage('https://i.pravatar.cc/100?u=$name'),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      name,
                      style: const TextStyle(fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(right: 16),
                child: Icon(Icons.more_vert),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: SizedBox(
              height: 300,
              child: Image.network(
                'https://picsum.photos/600/300?random=$name',
                fit: BoxFit.cover,
              )),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
              child: Row(
                children: const [
                  Icon(Icons.favorite_border),
                  SizedBox(
                    width: 8,
                  ),
                  Icon(Icons.chat_bubble_outline_outlined),
                  SizedBox(
                    width: 8,
                  ),
                  Icon(Icons.send_outlined)
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 16),
              child: Icon(Icons.archive_outlined),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: const [
              Text("Liked by "),
              Text(
                "Ryans ",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text("and "),
              Text(
                "Others",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: RichText(
              text: const TextSpan(
                  style: TextStyle(color: Colors.black),
                  children: [
                TextSpan(
                    text: "Irkham_Muzakir",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(
                    text:
                        "Thanks for Post Very Religious and Good Feeling ......")
              ])),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            "View All Comments",
            style: TextStyle(color: Colors.black45, fontSize: 12),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        const Padding(
          padding: EdgeInsets.only(left: 16, bottom: 25),
          child: Text(
            "10 hours ago",
            style: TextStyle(color: Colors.black45, fontSize: 10),
          ),
        ),
        const Divider(
          height: 1,
        )
      ],
    );
  }
}
