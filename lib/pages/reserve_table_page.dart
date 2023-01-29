import 'package:flutter/material.dart';
import 'package:project_2/components/time_card.dart';
import 'package:project_2/models/restaurant.dart';
import 'package:project_2/pages/reservation_page.dart';

import '../components/guest_num_card.dart';
import '../components/help_card.dart';
import '../components/reservation_date.dart';
import '../components/reserve_table_button.dart';

class ReserveTablePage extends StatelessWidget {
  const ReserveTablePage({super.key, required this.restaurant});
  final Restaurant restaurant;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        title: Text(restaurant.name, style: const TextStyle(color: Colors.black)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HelpCard(),
            const SizedBox(
              height: 16,
            ),
            const Divider(
              height: 1,
              thickness: 1,
              color: Color.fromARGB(255, 217, 212, 212),
            ),
            const SizedBox(
              height: 14,
            ),
            const Text('DATE OF RESERVATION  '),
            const SizedBox(
              height: 14,
            ),
            const ReservarionDateCard(),
            const SizedBox(
              height: 14,
            ),
            const Text('NUMBER OF GUESTS  '),
            const SizedBox(
              height: 14,
            ),
            const GuestNumCard(),
            const SizedBox(
              height: 20,
            ),
            const Text('AVAILABLE TIMINGS  '),
            const TimeCard(),
            const SizedBox(
              height: 120,
            ),
            const Center(child: Text('This Restaurant require a notice period of 45 minutes  ')),
            const Center(child: Text('The earliest possible reservaton can be for Sat Jan 28 - 7:00 PM  ')),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                ResData.reservation.add(restaurant);
                final navigator = Navigator.of(context);
                navigator.push(MaterialPageRoute(builder: (context) => const ReservationPage()));
              },
              child: ReserveTableButton(),
            ),
          ],
        ),
      ),
    );
  }
}
