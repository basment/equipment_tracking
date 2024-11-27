// lib/screens/scan_screen.dart
import 'package:flutter/material.dart';

class ScanScreen extends StatelessWidget {
  const ScanScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Your implementation here
      appBar: AppBar(
        title: const Text('Scan Barcode'),
      ),
      body: Center(
        child: Text('Scan Screen'),
      ),
    );
  }
}
