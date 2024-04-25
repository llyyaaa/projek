import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class GambarScreen extends StatefulWidget {
  const GambarScreen({super.key});

  @override
  State<GambarScreen> createState() => _GambarScreenState();
}

class _GambarScreenState extends State<GambarScreen> {
  String? namaHewan;
  final player = AudioPlayer();

  gantiNama(String inputNama) {
    setState(() {
      namaHewan = inputNama;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(namaHewan??"gambar kosong"),
        backgroundColor: Color.fromARGB(255, 169, 59, 42),
      ),
      body: GridView.count(
        crossAxisCount: 3, 
        children: [
          GestureDetector(
            onTap: () async {
              gantiNama("duck");
              await player.setAsset("aset_media/suara/duck.mp3");
              await player.play();
            },
            child: Card(child: Image.asset("aset_media/gambar/duck.jpeg"),
            ),
          ),
          GestureDetector(
            onTap: () async {
              gantiNama("kucing");
              await player.setAsset("aset_media/suara/kucing.mp3");
              await player.play();
            },
            child: Card(child: Image.asset("aset_media/gambar/kucing.jpeg"),
            ),
          ),
          GestureDetector(
            onTap: () async {
              gantiNama("pinguin");
              await player.setAsset("aset_media/suara/pinguin.mp3");
              await player.play();
            },
            child: Card(child: Image.asset("aset_media/gambar/pinguin.jpeg"),
            ),
          ),
      ],
      ),
    );
  }
}