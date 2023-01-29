import 'package:flutter/material.dart';
import 'package:project_2/pages/home.dart';
import 'package:project_2/pages/reservation_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: NavPage(),
    );
  }
}

class NavPage extends StatefulWidget {
  const NavPage({super.key});

  @override
  State<NavPage> createState() => _NavPageState();
}

class _NavPageState extends State<NavPage> {
  var currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final pages = [
      const HomePage(),
      const ReservationPage(),
    ];
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (newIndex) {
            currentIndex = newIndex;
            setState(() {});
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.restaurant,
                  color: Colors.grey,
                ),
                label: 'EXPLORE'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.chrome_reader_mode,
                  color: Colors.grey,
                ),
                label: 'RESERVATIONS'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.feedback_rounded,
                  color: Colors.grey,
                ),
                label: 'SUPPORT'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.more_horiz,
                  color: Colors.grey,
                ),
                label: 'MORE')
          ]),
      body: pages[currentIndex],
    );
  }
}
