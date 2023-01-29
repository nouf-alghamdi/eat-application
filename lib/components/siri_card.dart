import 'package:flutter/material.dart';

class SiriCard extends StatelessWidget {
  const SiriCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(height: 30, width: 30, child: Image.asset('assets/images/siri.png')),
          const Text('Add to Siri'),
          const SizedBox(
            width: 200,
          ),
          const Icon(
            Icons.arrow_forward_ios,
            size: 20,
          )
        ],
      ),
    );
  }
}
