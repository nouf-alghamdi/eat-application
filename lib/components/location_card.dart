import 'package:flutter/material.dart';

class LocationCard extends StatelessWidget {
  const LocationCard({
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
            Icons.location_pin,
            color: Color(0xFF108849),
          ),
          Text('KHOBAR, PRINCE TURKI STREET'),
          SizedBox(
            width: 100,
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
