import 'package:flutter/material.dart';

class HoursOfOperationCard extends StatelessWidget {
  const HoursOfOperationCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(' HOURS OF OPERATION'),
          SizedBox(
            height: 20,
          ),
          Text('Sunday - Friday', style: TextStyle(fontWeight: FontWeight.bold)),
          Text('2:00PM-11:00PM'),
          SizedBox(
            height: 10,
          ),
          Text('Saturday', style: TextStyle(fontWeight: FontWeight.bold)),
          Text('6:00PM-11:00PM'),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
