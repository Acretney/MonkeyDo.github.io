import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:monkeydo/src/constants/colors.dart';
import 'package:monkeydo/src/constants/sizes.dart';
import 'package:monkeydo/src/constants/typography.dart';
import 'package:monkeydo/src/sections/top_section/widgets/background_decals.dart';
import 'package:monkeydo/src/sections/top_section/widgets/menu_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:monkeydo/src/sections/top_section/widgets/monkey_do_dev.dart';

class TopSection extends StatelessWidget {
  const TopSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center(
      child: Container(
        constraints: const BoxConstraints(
            maxHeight: 600, minHeight: 600, maxWidth: 1120),
        color: kLight,
        child: Stack(
          children: [
            const BackgroundDecals(),
            const Positioned(
              right: 0,
              top: 12,
              child: MenuBar(),
            ),
            Positioned(
              top: 100,
              left: 48,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hello, im Alex...',
                    style: kBodyText,
                  ),
                  Text('Flutter Developer @', style: kBodyText),
                  gapH12,
                  const MonkeyDoDev(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
