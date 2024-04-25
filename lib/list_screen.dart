// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:projek/gambar_screen.dart';
import 'package:projek/kalkulator_screen.dart';
import 'package:projek/nilai_ratarata.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Screen'),
        backgroundColor: Colors.green,
        ),
        body: Column(children: [
          ElevatedButton(
            onPressed: (){
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => KalkulatorScreen(),
                  ),
                  );
            }, 
          child: Text('Kalkulator'),
          ),
          ElevatedButton(
            onPressed: (){
                  Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => GambarScreen(),
                  ),
                  );
            }, 
          child: Text('GambarScreen'),
          ),
          ElevatedButton(
            onPressed: (){
                  Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => NilaiScreen(),
                  ),
                  );
            }, 
          child: Text('Nilai Rata-Rata'),
          ),
        ],
        ),
        );
  }
}