import 'package:flutter/material.dart';
import 'package:monkeydo/src/constants/colors.dart';

class MonkeyDoDev extends StatelessWidget {
  const MonkeyDoDev({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Stack(
              children: [
                Text('Monkey',
                    style: TextStyle(
                        fontFamily: 'BigHeroes',
                        fontSize: 80,
                        foreground: Paint()
                          ..style = PaintingStyle.stroke
                          ..strokeWidth = 8
                          ..color = Colors.white)),
                const Text(
                  'Monkey',
                  style: TextStyle(
                    fontFamily: 'BigHeroes',
                    fontSize: 80,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                Text('Do',
                    style: TextStyle(
                        fontFamily: 'BigHeroes',
                        fontSize: 80,
                        foreground: Paint()
                          ..style = PaintingStyle.stroke
                          ..strokeWidth = 8
                          ..color = Colors.white)),
                Text(
                  'Do',
                  style: TextStyle(
                    fontFamily: 'BigHeroes',
                    fontSize: 80,
                    color: kOrange,
                  ),
                ),
              ],
            ),
          ],
        ),
        Stack(
          children: [
            Stack(
              children: [
                Text('Dev',
                    style: TextStyle(
                        fontFamily: 'BigHeroes',
                        fontSize: 80,
                        foreground: Paint()
                          ..style = PaintingStyle.stroke
                          ..strokeWidth = 8
                          ..color = Colors.white)),
                Text(
                  'Dev',
                  style: TextStyle(
                    fontFamily: 'BigHeroes',
                    fontSize: 80,
                    color: kOrange,
                  ),
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
