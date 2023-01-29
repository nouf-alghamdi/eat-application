
import 'package:flutter/material.dart';

class ReservationTime extends StatelessWidget {
  const ReservationTime({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 500,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          Text('UPCOMING', style: TextStyle(color: Color(0xFF108849), fontWeight: FontWeight.bold, fontSize: 16)),
          Text('PAST', style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}