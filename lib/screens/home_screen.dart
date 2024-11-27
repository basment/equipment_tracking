// lib/screens/home_screen.dart
import 'package:flutter/material.dart';
import 'scan_screen.dart';
import 'manual_entry_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Equipment Tracker'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              child: const Text('Scan Barcode'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ScanScreen()),
                );
              },
            ),
            ElevatedButton(
              child: const Text('Enter Serial Number'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ManualEntryScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
