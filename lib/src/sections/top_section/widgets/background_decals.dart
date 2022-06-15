import 'package:flutter/material.dart';
import 'package:monkeydo/src/constants/colors.dart';
import 'package:monkeydo/src/constants/typography.dart';

class BackgroundDecals extends StatelessWidget {
  const BackgroundDecals({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipPath(
          clipper: LeftClipPath(),
          child: Container(
            color: kDarkGreen,
          ),
        ),
        Positioned(
          top: 380,
          left: 160,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                width: 145,
                height: 145,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: kOrange,
                ),
              ),
              Positioned(
                top: -20,
                left: -40,
                child: Icon(
                  Icons.arrow_drop_down_outlined,
                  color: kLightOrange,
                  size: 220,
                ),
              ),
              Positioned(
                top: 25,
                left: -70,
                child: Text(
                  'View Services',
                  style: kBodyText.copyWith(fontSize: 26),
                ),
              )
            ],
          ),
        ),
        Positioned(
          top: 120,
          left: 720,
          child: Container(
            width: 280,
            height: 280,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: kDarkGreen,
            ),
          ),
        ),
        Positioned(
          top: 160,
          left: 260,
          child: Image.asset(
            'images/monkeydo_logo.png',
            width: 300,
            height: 300,
          ),
        ),
        const Positioned(
          top: 340,
          left: 600,
          child: ContactMeBubble(),
        ),
        Positioned(
          top: 80,
          left: 560,
          child: Transform.rotate(
            angle: 0.08,
            child: Image.asset(
              'images/under_destruction.png',
              width: 300,
              height: 300,
            ),
          ),
        ),
      ],
    );
  }
}

class ContactMeBubble extends StatelessWidget {
  const ContactMeBubble({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        width: 330,
        height: 330,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: kOrange,
        ),
      ),
      Positioned(
        top: 80,
        left: 76,
        child: Text('Contact Me', style: kBodyText.copyWith(fontSize: 28)),
      ),
      Positioned(
        left: 330 / 2 - 55,
        bottom: 56,
        child: Container(
          width: 110,
          height: 110,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: kLightOrange,
          ),
          child: const Icon(
            Icons.mail_outline,
            color: Colors.white,
            size: 60,
          ),
        ),
      )
    ]);
  }
}

class LeftClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path()
      ..lineTo(0, 600)
      ..lineTo(200, 600)
      ..lineTo(320, 0)
      ..lineTo(0, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
