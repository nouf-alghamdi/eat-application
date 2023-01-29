import 'package:flutter/material.dart';

class VenuesCard extends StatelessWidget {
  const VenuesCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 500,
      color: const Color(0xFF108849),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          Text('VENUES', style: TextStyle(color: Colors.white, fontSize: 16)),
          Text('|', style: TextStyle(color: Colors.white, fontSize: 26)),
          Text('COLLECTIONS', style: TextStyle(color: Colors.white, fontSize: 16)),
        ],
      ),
    );
  }
}
