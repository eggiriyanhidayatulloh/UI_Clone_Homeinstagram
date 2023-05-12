import 'package:flutter/material.dart';

class BubbleStroy extends StatelessWidget {
  final String name;

  const BubbleStroy({
    Key? key,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          CircleAvatar(
            radius: 38,
            backgroundColor: const Color.fromARGB(255, 226, 21, 65),
            child: CircleAvatar(
              radius: 35,
              backgroundImage:
                  NetworkImage('https://i.pravatar.cc/100?u=$name'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Text(
              name,
              style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
            ),
          )
        ],
      ),
    );
  }
}
