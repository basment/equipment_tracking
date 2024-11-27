// lib/screens/manual_entry_screen.dart
import 'package:flutter/material.dart';

class ManualEntryScreen extends StatelessWidget {
  const ManualEntryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Your implementation here
      appBar: AppBar(
        title: const Text('Enter Serial Number'),
      ),
      body: Center(
        child: Text('Manual Entry Screen'),
      ),
    );
  }
}
