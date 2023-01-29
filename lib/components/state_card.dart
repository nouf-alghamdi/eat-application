import 'package:flutter/material.dart';

class StateCard extends StatelessWidget {
  const StateCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Icon(
            Icons.check_circle_outline,
            color: Color(0xFF108849),
          ),
          Text('VERIFIES OPEN'),
          SizedBox(
            width: 200,
          ),
          Icon(
            Icons.arrow_forward_ios,
            size: 20,
          )
        ],
      ),
    );
  }
}
