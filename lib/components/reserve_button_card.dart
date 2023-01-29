import 'package:flutter/material.dart';

import '../models/restaurant.dart';
import '../pages/reserve_table_page.dart';

class ReserveButton extends StatelessWidget {
  const ReserveButton({
    Key? key,
    required this.restaurant,
  }) : super(key: key);

  final Restaurant restaurant;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        final navigator = Navigator.of(context);
        navigator.push(MaterialPageRoute(
            builder: (context) => ReserveTablePage(
                  restaurant: restaurant,
                )));
      },
      child: Padding(
        padding: const EdgeInsets.all(13.0),
        child: Container(
          height: 50,
          width: 400,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            color: Color(0xFFF06E20),
          ),
          child: const Center(
            child: Text(
              'RESERVE',
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 15),
            ),
          ),
        ),
      ),
    );
  }
}
