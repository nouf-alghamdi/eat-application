import 'package:flutter/material.dart';
import 'package:project_2/pages/restaurant_page.dart';
import '../components/restaurant_card.dart';
import '../components/search_bar.dart';
import '../components/sort_card.dart';
import '../components/venues_card.dart';
import '../models/restaurant.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFF108849),
        title: Container(
          width: double.infinity,
          height: 40,
          color: Colors.black.withOpacity(0.2),
          child: SearchBar(),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const VenuesCard(),
            const SortCard(),
            for (final restaurant in ResData.restaurants) ...[
              InkWell(
                onTap: () {
                  final navigator = Navigator.of(context);
                  navigator.push(MaterialPageRoute(
                      builder: (context) => RestaurantPage(
                            restaurant: restaurant,
                          )));
                },
                child: RestaurantCard(
                  restaurant: restaurant,
                ),
              ),
              const Divider(height: 1, thickness: 1, color: Colors.grey),
            ],
          ],
        ),
      ),
    );
  }
}
