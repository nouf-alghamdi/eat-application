import 'package:flutter/material.dart';
import 'package:project_2/models/restaurant.dart';

class ReservationCard extends StatefulWidget {
  const ReservationCard({
    Key? key,
    required this.restaurant,
  }) : super(key: key);

  final Restaurant restaurant;

  @override
  State<ReservationCard> createState() => _ReservationCardState();
}

class _ReservationCardState extends State<ReservationCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        height: 100,
        width: 330,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(5)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 3,
              blurRadius: 7,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(widget.restaurant.name,
                style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text('10:00PM  ', style: TextStyle(color: Colors.black, fontSize: 13)),
                Text('| ', style: TextStyle(color: Colors.black, fontSize: 13)),
                Text('Sat, Jan 28 ', style: TextStyle(color: Colors.black, fontSize: 13)),
                Text('| ', style: TextStyle(color: Colors.black, fontSize: 13)),
                Text('3 Persons ', style: TextStyle(color: Colors.black, fontSize: 13)),
              ],
            ),
            InkWell(
              onTap: () {
                ResData.reservation.remove(widget.restaurant);
              },
              child: const Text('cancel reservation',
                  style: TextStyle(color: Color.fromARGB(255, 202, 22, 22), fontSize: 13)),
            ),
          ],
        ),
      ),
    );
  }
}
