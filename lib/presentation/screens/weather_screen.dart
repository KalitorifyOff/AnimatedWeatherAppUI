import 'package:flutter/material.dart';

import '../widgets/background_animation.dart';
import '../widgets/foreground_data.dart';


class WeatherScreen extends StatefulWidget {
  const WeatherScreen({super.key});

  @override
  State<WeatherScreen> createState() => _WeatherState();
}

class _WeatherState extends State<WeatherScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          AnimatedBackground(),
          mainScreen(),
        ],
      ),
    );
  }
}