import 'package:flutter/material.dart';
import 'package:project_2/models/restaurant.dart';

import '../components/import_reserve_card.dart';
import '../components/reservation_card.dart';
import '../components/reservation_time_card.dart';

class ReservationPage extends StatefulWidget {
  const ReservationPage({super.key});

  @override
  State<ReservationPage> createState() => _ReservationPageState();
}

class _ReservationPageState extends State<ReservationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Reservations', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: [
          const Divider(
            height: 1,
            thickness: 1,
            color: Color.fromARGB(255, 217, 212, 212),
          ),
          const ReservationTime(),
          const Divider(
            height: 1,
            thickness: 1,
            color: Color.fromARGB(255, 217, 212, 212),
          ),
          for (final restaurant in ResData.reservation)
            ReservationCard(
              restaurant: restaurant,
            ),
          const SizedBox(
            height: 32,
          ),
          const Center(child: Text('Already booked? Import your reservation ')),
          const SizedBox(
            height: 20,
          ),
          const ImportReseveCard(),
        ],
      ),
    );
  }
}
