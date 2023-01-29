import 'package:flutter/material.dart';
import 'package:project_2/models/restaurant.dart';

import '../components/contact_card.dart';
import '../components/deal_card.dart';
import '../components/hours_of_operation_card.dart';
import '../components/location_card.dart';
import '../components/menu_card.dart';
import '../components/note_card.dart';
import '../components/res_info.dart';
import '../components/reserve_button_card.dart';
import '../components/siri_card.dart';
import '../components/state_card.dart';

class RestaurantPage extends StatelessWidget {
  const RestaurantPage({super.key, required this.restaurant});
  final Restaurant restaurant;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF108849),
        centerTitle: true,
        title: Text(restaurant.name),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              restaurant.imageUrl,
              height: 250,
              width: 430,
              fit: BoxFit.cover,
            ),
            ReserveButton(restaurant: restaurant),
            const Divider(
              height: 1,
              thickness: 1,
              color: Color.fromARGB(255, 217, 212, 212),
            ),
            const StateCard(),
            const Divider(
              height: 1,
              thickness: 1,
              color: Color.fromARGB(255, 217, 212, 212),
            ),
            const NoteCard(),
            const Divider(
              height: 1,
              thickness: 1,
              color: Color.fromARGB(255, 217, 212, 212),
            ),
            const DealCard(),
            const Divider(
              height: 1,
              thickness: 1,
              color: Color.fromARGB(255, 217, 212, 212),
            ),
            const LocationCard(),
            const Divider(
              height: 1,
              thickness: 1,
              color: Color.fromARGB(255, 217, 212, 212),
            ),
            const MenuCard(),
            const Divider(
              height: 1,
              thickness: 1,
              color: Color.fromARGB(255, 217, 212, 212),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20.0, top: 20),
              child: Text('RESTAURANT INFO'),
            ),
            const ResInfo(),
            const SizedBox(
              height: 12,
            ),
            const Divider(
              height: 1,
              thickness: 1,
              color: Color.fromARGB(255, 217, 212, 212),
            ),
            const ContactCard(),
            const Divider(
              height: 1,
              thickness: 1,
              color: Color.fromARGB(255, 217, 212, 212),
            ),
            const SiriCard(),
            const Divider(
              height: 1,
              thickness: 1,
              color: Color.fromARGB(255, 217, 212, 212),
            ),
            const HoursOfOperationCard(),
          ],
        ),
      ),
    );
  }
}
