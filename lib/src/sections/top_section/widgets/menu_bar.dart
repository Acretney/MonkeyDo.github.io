import 'package:flutter/material.dart';
import 'package:monkeydo/src/constants/sizes.dart';
import 'package:monkeydo/src/constants/typography.dart';

class MenuBar extends StatelessWidget {
  const MenuBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
            onPressed: null,
            child: Text(
              'Home',
              style: kMenuHeader,
            ),
          ),
          TextButton(
            onPressed: null,
            child: Text(
              'Services',
              style: kMenuHeader,
            ),
          ),
          TextButton(
            onPressed: null,
            child: Text(
              'About',
              style: kMenuHeader,
            ),
          ),
          TextButton(
            onPressed: null,
            child: Text(
              'Work',
              style: kMenuHeader,
            ),
          ),
          gapW12,
        ],
      ),
    );
  }
}
