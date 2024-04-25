import 'package:flutter/material.dart';

class KalkulatorScreen extends StatefulWidget {
  const KalkulatorScreen({super.key});

  @override
  State<KalkulatorScreen> createState() => _KalkulatorScreenState();
}

class _KalkulatorScreenState extends State<KalkulatorScreen> {
  TextEditingController angka1controler = TextEditingController();
  TextEditingController angka2controler = TextEditingController();
  String hasil = "hasil kosong";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kalkulator'),
        backgroundColor: Color.fromARGB(255, 226, 255, 37),
      ),
      body: Column(
        children: [
          TextField(
            controller: angka1controler,
          ),
          TextField(
            controller: angka2controler,
          ),
          ElevatedButton(
            onPressed: () {
              print(angka1controler.text);
              setState(() {
               var hasilJumlah = int.parse(angka1controler.text) +
                    int.parse(angka2controler.text);
                    hasil = hasilJumlah.toString();
              });
            },
            child: Text('tampil'),
          ),
          Text(hasil),
        ],
      ),
    );
  }
}