import 'package:flutter/material.dart';

class NilaiScreen extends StatefulWidget {
  const NilaiScreen({Key? key}) : super(key: key);

  @override
  State<NilaiScreen> createState() => _NilaiScreenState();
}

class _NilaiScreenState extends State<NilaiScreen> {
  String? nilaiAkhirHuruf;
  double? nilaiRataRata;
  int? nilaiTugas;
  int? nilaiUTS;
  int? nilaiUAS;

  TextEditingController inputNilaiTugas = TextEditingController();
  TextEditingController inputNilaiUTS = TextEditingController();
  TextEditingController inputNilaiUAS = TextEditingController();

  hitungNilai() {
    setState(() {
      int nilai1 = int.parse(inputNilaiTugas?.text ?? "0");
      int nilai2 = int.parse(inputNilaiUTS?.text ?? "0");
      int nilai3 = int.parse(inputNilaiUAS?.text ?? "0");
      nilaiRataRata = (nilai1 + nilai2 + nilai3) / 3;

      konversiHuruf(nilaiRataRata ?? 0);
    });
  }

konversiHuruf(double nilai) {
  if (nilai >= 90 && nilai <=100){
    nilaiAkhirHuruf = "NILAI A";
  } else if (nilai >= 70 && nilai <= 89) {
    nilaiAkhirHuruf = "NILAI B";
  } else if (nilai >= 50 && nilai <= 69) {
    nilaiAkhirHuruf = "NILAI C";
  } else {
    nilaiAkhirHuruf = "belum lulus";
  }

  setState(() {});
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nilai Akhir'),
        backgroundColor: Color.fromARGB(255, 226, 255, 37),
      ),
      body: Column(
        children: [
          Text(nilaiAkhirHuruf?? "Nilai Akhir"),
          SizedBox(height : 30),
          TextFormField(
            controller: inputNilaiTugas,
            decoration: InputDecoration(hintText: 'Masukkan Nilai Tugas'),),
          TextFormField(
            controller: inputNilaiUTS,
            decoration: InputDecoration(labelText: 'Masukkan Nilai UTS'),),
          TextFormField(
            controller: inputNilaiUAS, 
            decoration: InputDecoration(labelText: 'Masukkan Nilai UAS'),),
          SizedBox(height : 30),
          ElevatedButton(
            onPressed: () {
              hitungNilai();
              }, 
              child: Text('Hitung Nilai'),),
          Text('Nilai Rata-Rata:'),
          Text(nilaiRataRata?.toString() ?? "0"),
        ],
      ),
    );
  }
}