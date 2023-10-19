import 'package:flutter/material.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'package:get/get.dart';
import 'package:imbuelight_stair_controller_mobile_app/controllers/bluetooth_controller.dart';

class DevicesList extends StatelessWidget {
  const DevicesList({super.key, this.controller});

  @override
  Widget build(BuildContext context) {
    FlutterBluePlus.startScan(timeout: const Duration(seconds: 5));
    return GetBuilder<BluetoothController>(
        init: BluetoothController(),
        builder: (controller) => controller.listDeviceWidget());
  }

  final BluetoothController? controller;
}
