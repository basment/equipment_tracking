import 'package:flutter/material.dart';
import '../models/device.dart';

class DeviceProvider with ChangeNotifier {
  Device? _device;

  Device? get device => _device;

  void setDevice(Device device) {
    _device = device;
    notifyListeners();
  }

  void clearDevice() {
    _device = null;
    notifyListeners();
  }
}
