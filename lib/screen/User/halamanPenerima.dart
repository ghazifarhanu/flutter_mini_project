import 'package:flutter/material.dart';

class halamanPenerima extends StatefulWidget {
  const halamanPenerima({super.key});

  @override
  State<halamanPenerima> createState() => _halamanPenerimaState();
}

class _halamanPenerimaState extends State<halamanPenerima> {
  @override
  Widget build(BuildContext context) {
    TextEditingController conDurasiSewa = TextEditingController();
    TextEditingController conJumlahJersey = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.cyan,
                child: Image.asset(
                  "lib/assets/images/logo.png",
                  height: 30,
                ),
              ),
              Text(
                "Kitswap",
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          TextField(
            controller: conDurasiSewa,
            decoration: InputDecoration(
                border: OutlineInputBorder(), label: Text("Durasi Sewa")),
          ),
          TextField(
            controller: conJumlahJersey,
            decoration: InputDecoration(
                border: OutlineInputBorder(), label: Text("Jumlah Jersey")),
          ),
        ],
      ),
    );
  }
}
