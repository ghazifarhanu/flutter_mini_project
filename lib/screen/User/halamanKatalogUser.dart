import 'package:flutter/material.dart';

import '../../widget/halamanKatalog/GridView_widget.dart';

class halamanKatalog extends StatefulWidget {
  const halamanKatalog();

  @override
  State<halamanKatalog> createState() => _halamanKatalog();
}

class _halamanKatalog extends State<halamanKatalog> {
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
      body: katalog_widget(),
    );
  }
}
