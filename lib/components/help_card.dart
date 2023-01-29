import 'package:flutter/material.dart';

class HelpCard extends StatelessWidget {
  const HelpCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Icon(
          Icons.info_rounded,
          color: Color(0xFF108849),
        ),
        SizedBox(
          width: 16,
        ),
        Text('LEARN ABOUT HOW EAT WORKS '),
      ],
    );
  }
}
