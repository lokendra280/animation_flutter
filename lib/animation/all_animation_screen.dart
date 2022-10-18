import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'hero_1.dart';

class AllAnimationScreen extends StatelessWidget {
  AllAnimationScreen({super.key});

  final List Screens = [
    {
      "title": "Hero Animation",
      "widget": Hero1(),
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: Screens.length,
          itemBuilder: (context, index) {
            Map screen = Screens[index];
            return MaterialButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => screen['widget']));
              },
              color: Colors.red,
              child: Text(
                screen['title'],
                style: TextStyle(color: Colors.white),
              ),
            );
          }),
    );
  }
}
