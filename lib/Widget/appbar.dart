
import 'package:flutter/material.dart';


AppBar appbar(BuildContext context) {
    return AppBar(
      title: const Image(image: AssetImage('assets/foodie_logo.png'),
      width: 110, height: 80,
      ),
      actions: [
        GestureDetector(
          onTap: () => Navigator.pushReplacementNamed(context, '/profile'),

          child: const Padding(padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/profile_pic.jpeg'),
          ),
          ),
        )
      ],
    );
  }