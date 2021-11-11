import 'dart:io';

import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class qrPage extends StatefulWidget {
  const qrPage({Key? key}) : super(key: key);

  @override
  _qrPageState createState() => _qrPageState();
}

class _qrPageState extends State<qrPage> {
  final qrKey = GlobalKey(debugLabel: "QR");
  Barcode? barcode;
  QRViewController? controller;

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controller!.pauseCamera();
    }
    controller!.resumeCamera();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          alignment: Alignment.center,
          children: [
            buildQrView(context),
            Positioned(
              top: 10,
              child: buildResult(context),
            )
          ],
        ),
      ),
    );
  }

  Widget buildResult(BuildContext context) {
    return Text(
      barcode != null ? ' ${barcode!.code}' : "Сканируй код",
      maxLines: 3,
    );
  }

  Widget buildQrView(BuildContext context) => QRView(
        key: qrKey,
        onQRViewCreated: onQRViewCreated,
        overlay: QrScannerOverlayShape(
            borderRadius: 10,
            borderLength: 15,
            borderWidth: 10,
            borderColor: Colors.greenAccent,
            cutOutSize: MediaQuery.of(context).size.width * 0.75),
      );

  void onQRViewCreated(QRViewController controller) {
    setState(() => this.controller = controller);

    controller.scannedDataStream.listen(
      (barcode) => setState(() => this.barcode = barcode),
    );
  }
}
