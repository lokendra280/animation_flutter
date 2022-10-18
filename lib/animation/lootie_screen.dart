import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lottie/lottie.dart';

class LottieScreen extends StatelessWidget {
  const LottieScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Lottie.asset("assets/animation/car.json"),
          Lottie.asset(
            "assets/animation/bus.json",
            height: 200,
          ),
        ],
      ),
    );
  }
}
