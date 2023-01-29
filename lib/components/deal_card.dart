import 'package:flutter/material.dart';

class DealCard extends StatelessWidget {
  const DealCard({
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
            Icons.money,
            color: Color(0xFF108849),
          ),
          Text(' Deal'),
          SizedBox(
            width: 290,
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
