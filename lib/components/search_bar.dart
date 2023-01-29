
import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          const SizedBox(
            width: 12,
          ),
          Icon(
            Icons.search,
            color: Colors.white.withOpacity(0.8),
          ),
          Text(
            'Search for restaurants or location',
            style: TextStyle(color: Colors.white.withOpacity(0.6), fontSize: 16),
          ),
        ],
      ),
    );
  }
}