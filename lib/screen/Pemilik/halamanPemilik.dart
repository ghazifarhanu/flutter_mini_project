import 'package:flutter/material.dart';

class halamanPemilik extends StatefulWidget {
  const halamanPemilik({super.key});

  @override
  State<halamanPemilik> createState() => _halamanPemilikState();
}

class _halamanPemilikState extends State<halamanPemilik> {
  @override
  Widget build(BuildContext context) {
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
          Center(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Text(
                "Daftar Pesanan",
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            color: Colors.cyan[100],
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.cyan,
                child: Text(
                  "A",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
              title: Center(
                child: Text("Andepas"),
              ),
              subtitle: Column(
                children: [
                  Text("Tanggal Sewa : 16/08/2003"),
                  Text("Durasi Sewa : 1 hari"),
                  Text("Warna Jersey : Merah"),
                ],
              ),
              trailing: ElevatedButton(
                onPressed: () {},
                child: Text("Selesai"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
