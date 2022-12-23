import 'package:flutter/material.dart';
import 'package:qrsound/screens/audio.dart';
import 'package:qrsound/screens/qrCode.dart';

class anaSayfa extends StatefulWidget {
  const anaSayfa({super.key});

  @override
  State<anaSayfa> createState() => _anaSayfaState();
}

class _anaSayfaState extends State<anaSayfa> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Padding(
        padding: EdgeInsets.fromLTRB(size.width * 0.1, 0, size.width * 0.1, 0),
        child: Column(
          children: [
            SizedBox(height: size.height * 0.35),
            Butonlar(size),
          ],
        ),
      ),
    );
  }

  Row Butonlar(Size size) {
    return Row(
      children: [
        InkWell(
          borderRadius: BorderRadius.circular(25),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => qrCode(),
              ),
            );
          },
          child: Container(
            width: size.width * 0.375,
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.black45,
            ),
            child: Column(
              children: [
                Spacer(flex: 2),
                Icon(
                  Icons.qr_code_rounded,
                  color: Colors.white,
                  size: 60,
                ),
                Spacer(flex: 1),
                Text(
                  "QR KOD",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(flex: 2),
              ],
            ),
          ),
        ),
        Spacer(flex: 1),
        InkWell(
          borderRadius: BorderRadius.circular(25),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => audio(),
              ),
            );
          },
          child: Container(
            width: size.width * 0.375,
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.black45,
            ),
            child: Column(
              children: [
                Spacer(flex: 2),
                Icon(
                  Icons.audiotrack_rounded,
                  color: Colors.white,
                  size: 60,
                ),
                Spacer(flex: 1),
                Text(
                  "SES KAYDET",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(flex: 2),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
