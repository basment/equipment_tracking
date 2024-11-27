import 'package:cloud_firestore/cloud_firestore.dart';

class Device {
  final int deviceNumber;
  final String serialNumber;
  final DateTime latestLeakTestDate;
  final DateTime latestCalibrationDate;
  final String latestUser;
  final DateTime latestDateInOut;
  final String currentLocation;
  final String latestProjectNumber;

  Device({
    required this.deviceNumber,
    required this.serialNumber,
    required this.latestLeakTestDate,
    required this.latestCalibrationDate,
    required this.latestUser,
    required this.latestDateInOut,
    required this.currentLocation,
    required this.latestProjectNumber,
  });

  // Factory method to create a Device from a map (e.g., from Firestore)
  factory Device.fromMap(Map<String, dynamic> data) {
    return Device(
      deviceNumber: data['deviceNumber'],
      serialNumber: data['serialNumber'],
      latestLeakTestDate: (data['latestLeakTestDate'] as Timestamp).toDate(),
      latestCalibrationDate: (data['latestCalibrationDate'] as Timestamp).toDate(),
      latestUser: data['latestUser'],
      latestDateInOut: (data['latestDateInOut'] as Timestamp).toDate(),
      currentLocation: data['currentLocation'],
      latestProjectNumber: data['latestProjectNumber'],
    );
  }

  // Method to convert Device to a map (e.g., for Firestore)
  Map<String, dynamic> toMap() {
    return {
      'deviceNumber': deviceNumber,
      'serialNumber': serialNumber,
      'latestLeakTestDate': latestLeakTestDate,
      'latestCalibrationDate': latestCalibrationDate,
      'latestUser': latestUser,
      'latestDateInOut': latestDateInOut,
      'currentLocation': currentLocation,
      'latestProjectNumber': latestProjectNumber,
    };
  }
}
