import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class qrCode extends StatefulWidget {
  const qrCode({super.key});

  @override
  State<qrCode> createState() => _qrCodeState();
}

class _qrCodeState extends State<qrCode> {
  String qrResult = "Henüz Taranmadı";
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Padding(
        padding: EdgeInsets.fromLTRB(
          size.width * 0.05,
          0,
          size.width * 0.05,
          0,
        ),
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.4,
            ),
            Center(
              child: InkWell(
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white12,
                  ),
                  width: 150,
                  height: 150,
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Spacer(flex: 1),
                        Icon(
                          Icons.qr_code_rounded,
                          color: Colors.white,
                          size: 50,
                        ),
                        Spacer(flex: 1),
                        Text(
                          "QR Kodu okutun",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        Spacer(flex: 1),
                      ],
                    ),
                  ),
                ),
                onTap: () async {
                  String scaning = await FlutterBarcodeScanner.scanBarcode(
                      "#000000", "Cancel", true, ScanMode.QR);
                  setState(() {
                    qrResult = scaning;
                  });
                },
              ),
            ),
            SizedBox(
              height: size.height * 0.1,
            ),
            SelectableText(
              qrResult,
              style: TextStyle(color: Colors.white, fontSize: 18),
              showCursor: false,
              toolbarOptions: ToolbarOptions(copy: true, selectAll: true),
            ),
          ],
        ),
      ),
    );
  }
}
