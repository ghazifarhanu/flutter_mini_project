import 'package:flutter/material.dart';
import 'package:flutter_mini_project/screen/Pemilik/halamanMasukPemilik.dart';
import 'package:flutter_mini_project/screen/User/halamanMasukUser.dart';

class halamanTampilanAwal extends StatefulWidget {
  const halamanTampilanAwal({super.key});

  @override
  State<halamanTampilanAwal> createState() => _halamanTampilanAwalState();
}

class _halamanTampilanAwalState extends State<halamanTampilanAwal> {
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return halamanMasukUser(
                          conEmail: TextEditingController(),
                          conPassword:
                              TextEditingController()); // Ganti dengan halaman yang ingin Anda buka
                    },
                  ),
                );
              },
              child: Text("Masuk sebagai User"),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return halamanMasukPemilik(); // Ganti dengan halaman yang ingin Anda buka
                    },
                  ),
                );
              },
              child: Text("Masuk sebagai Pemilik"),
            ),
          ],
        ),
      ),
    );
  }
}
