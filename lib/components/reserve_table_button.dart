import 'package:flutter/material.dart';

class ReserveTableButton extends StatelessWidget {
  const ReserveTableButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 380,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5)),
        color: Color(0xFFF06E20),
      ),
      child: const Center(
        child: Text(
          'RESERVE A TABLE',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 15),
        ),
      ),
    );
  }
}
