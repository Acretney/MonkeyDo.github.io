import 'package:flutter/material.dart';
import 'package:monkeydo/src/sections/top_section/top_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const TopSection(),
          ],
        ),
      ),
    );
  }
}
