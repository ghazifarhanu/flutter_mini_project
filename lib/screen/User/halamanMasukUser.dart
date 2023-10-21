import 'package:flutter/material.dart';
import 'package:flutter_mini_project/screen/User/halamanKatalogUser.dart';

class halamanMasukUser extends StatefulWidget {
  const halamanMasukUser({
    super.key,
    required this.conEmail,
    required this.conPassword,
  });

  final TextEditingController conEmail;
  final TextEditingController conPassword;

  @override
  State<halamanMasukUser> createState() => _halamanMasukUserState();
}

class _halamanMasukUserState extends State<halamanMasukUser> {
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
      body: Padding(
        padding: const EdgeInsets.only(top: 85),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 19),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Masuk!",
                    style: TextStyle(
                      fontSize: 28,
                      color: Colors.cyan,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Center(
                child: Wrap(
                  children: [
                    TextField(
                      controller: widget.conEmail,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(80),
                        ),
                        labelText: "Email",
                        prefixIcon: Icon(Icons.person),
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
                        // Pindah ke halaman baru saat tombol ditekan
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return halamanKatalog(); // Ganti dengan halaman yang ingin Anda buka
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
      ),
    );
  }
}
