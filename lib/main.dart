import 'package:flutter/material.dart';
import 'screens/splash_screen/spalsh_screen.dart';

void main() {
  runApp(const SkyVin());
}

class SkyVin extends StatefulWidget {
  const SkyVin({Key? key}) : super(key: key);

  @override
  State<SkyVin> createState() => _SkyVinState();
}

class _SkyVinState extends State<SkyVin> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SplashScreen(),
    );
  }
}
