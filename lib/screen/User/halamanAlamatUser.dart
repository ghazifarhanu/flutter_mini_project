import 'package:flutter/material.dart';

class halamanAlamatUser extends StatefulWidget {
  const halamanAlamatUser({super.key});

  @override
  State<halamanAlamatUser> createState() => _halamanAlamatUserState();
}

class _halamanAlamatUserState extends State<halamanAlamatUser> {
  @override
  Widget build(BuildContext context) {
    TextEditingController conNama = TextEditingController();
    TextEditingController conNomorWA = TextEditingController();
    TextEditingController conAlamatLengkap = TextEditingController();
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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text("Formulir Pemesanan")),
          TextField(
            controller: conNama,
            decoration: InputDecoration(
                border: OutlineInputBorder(), label: Text("Nama")),
          ),
          TextField(
            controller: conNomorWA,
            decoration: InputDecoration(
                border: OutlineInputBorder(), label: Text("Nama")),
          ),
          TextField(
            controller: conAlamatLengkap,
            decoration: InputDecoration(
                border: OutlineInputBorder(), label: Text("Nama")),
          ),
        ],
      ),
    );
  }
}
