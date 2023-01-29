import 'package:flutter/material.dart';

import '../models/restaurant.dart';

class RestaurantCard extends StatelessWidget {
  const RestaurantCard({
    Key? key,
    required this.restaurant,
  }) : super(key: key);
  final Restaurant restaurant;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.network(
          restaurant.imageUrl,
          height: 250,
          width: 430,
          fit: BoxFit.cover,
        ),
        Positioned(
          bottom: -10,
          child: Container(
            height: 150,
            width: 1000,
            decoration: const BoxDecoration(
              color: Colors.black,
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter, end: Alignment.topCenter, colors: [Colors.black, Colors.transparent]),
            ),
          ),
        ),
        Positioned(
          bottom: 1,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    height: 25,
                    width: 140,
                    decoration: const BoxDecoration(
                        color: Color(0xFF108849), borderRadius: BorderRadius.all(Radius.circular(5))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Icon(
                          Icons.check_circle_outline,
                          size: 15,
                          color: Colors.white,
                        ),
                        Text('VERIFIED OPEN',
                            style: TextStyle(
                              color: Colors.white,
                            ))
                      ],
                    )),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  restaurant.name,
                  style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 300,
                      child: Text(
                        restaurant.location,
                        style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w400, fontSize: 15),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.send_rounded,
                          color: Colors.white,
                          size: 17,
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        Text(
                          restaurant.distance,
                          style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w300, fontSize: 15),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 50,
                          width: 120,
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(Radius.circular(5)),
                            color: Colors.transparent,
                            border: Border.all(width: 1, color: const Color(0xFFF6F8FA)),
                          ),
                          child: Center(
                            child: Text(
                              restaurant.cuisine,
                              style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w300, fontSize: 15),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(Radius.circular(5)),
                            color: Colors.transparent,
                            border: Border.all(width: 1, color: const Color(0xFFF6F8FA)),
                          ),
                          child: Center(
                            child: Text(
                              restaurant.category,
                              style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w300, fontSize: 15),
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 120,
                    ),
                    Container(
                      height: 50,
                      width: 100,
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
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
