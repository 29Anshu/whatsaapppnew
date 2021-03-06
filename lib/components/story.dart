import 'package:flutter/material.dart';

Widget storyButton(
  String imgUrl,
  String userName,
) {
  return Padding(
    padding: const EdgeInsets.only(right: 10),
    child: Column(
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(imgUrl),
          radius: 30,
        ),
        SizedBox(
          height: 5,
        ),
        Text( userName,
        style: TextStyle(color: Colors.white),)
      ],
    ),
  );
}
