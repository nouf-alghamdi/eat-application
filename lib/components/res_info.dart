import 'package:flutter/material.dart';

class ResInfo extends StatelessWidget {
  const ResInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 15.0, left: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Icon(
                Icons.check,
                color: Color(0xFF108849),
              ),
              SizedBox(
                width: 16,
              ),
              Text('Valet Parking'),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15.0, left: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Icon(
                Icons.close,
                color: Color.fromARGB(255, 76, 77, 77),
              ),
              SizedBox(
                width: 16,
              ),
              Text('Smoking Allowed '),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15.0, left: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Icon(
                Icons.check,
                color: Color(0xFF108849),
              ),
              SizedBox(
                width: 16,
              ),
              Text('Outdoor Seating'),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15.0, left: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Icon(
                Icons.check,
                color: Color(0xFF108849),
              ),
              SizedBox(
                width: 16,
              ),
              Text('Good For Families'),
            ],
          ),
        ),
      ],
    );
  }
}
