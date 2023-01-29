import 'package:flutter/material.dart';

class ImportReseveCard extends StatelessWidget {
  const ImportReseveCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 330,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5)),
        color: Color(0xFFF06E20),
      ),
      child: const Center(
        child: Text(
          'IMPORT RESERVATION',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 15),
        ),
      ),
    );
  }
}
