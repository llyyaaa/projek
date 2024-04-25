import 'package:flutter/material.dart';

class Halaman2 extends StatelessWidget {
  const Halaman2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('Halaman 2'),
    backgroundColor: Colors.blueAccent,
    ),
    body: Column(
      children: [
        Text('Dyah'),
        Text('Belajar'),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons. airline_seat_recline_normal_rounded, 
            size: 80, color: Colors.cyan,
            ),
            Icon(
              Icons. airline_seat_flat_angled_outlined, 
            size: 80, color: Color.fromARGB(255, 138, 42, 101),
            ),
            Icon(
              Icons. airline_seat_individual_suite_sharp, 
            size: 80, color: Color.fromARGB(255, 39, 163, 82),
            ),
          ],
        ),
      ],
    ),
    );
  }
}