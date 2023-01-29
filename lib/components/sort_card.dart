import 'package:flutter/material.dart';

class SortCard extends StatelessWidget {
  const SortCard({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 500,
      color: const Color(0xFFF5F7F9),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Text('SORT BY', style: TextStyle(color: Colors.black, fontSize: 15)),
          Row(
            children: const [
              Icon(
                Icons.star,
                color: Colors.black,
                size: 20,
              ),
              SizedBox(
                width: 8,
              ),
              Text('POPULARITY', style: TextStyle(color: Colors.black, fontSize: 15)),
            ],
          ),
          Row(
            children: const [
              Icon(
                Icons.location_pin,
                color: Colors.black,
                size: 20,
              ),
              SizedBox(
                width: 8,
              ),
              Text('NEARBY', style: TextStyle(color: Colors.black, fontSize: 15)),
            ],
          ),
        ],
      ),
    );
  }
}
