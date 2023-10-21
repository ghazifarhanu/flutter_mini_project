import 'package:flutter/material.dart';
import 'package:flutter_mini_project/screen/Pemilik/halamanPemilik.dart';

class halamanMasukPemilik extends StatefulWidget {
  const halamanMasukPemilik({super.key});

  @override
  State<halamanMasukPemilik> createState() => _halamanMasukPemilikState();
}

class _halamanMasukPemilikState extends State<halamanMasukPemilik> {
  @override
  Widget build(BuildContext context) {
    TextEditingController conEmail = TextEditingController();
    TextEditingController conPassword = TextEditingController();
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
          Padding(
            padding: const EdgeInsets.all(15),
            child: Center(
              child: Wrap(
                children: [
                  TextField(
                    controller: conEmail,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(80),
                      ),
                      labelText: "Email",
                      prefixIcon: Icon(Icons.person),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: TextField(
                      controller: conPassword,
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(80),
                        ),
                        labelText: "Kata Sandi",
                        prefixIcon: Icon(Icons.lock),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  height: 30,
                  width: 120,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return halamanPemilik(); // Ganti dengan halaman yang ingin Anda buka
                          },
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),
                    child: Text(
                      "submit",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
