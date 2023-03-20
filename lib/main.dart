import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'home.dart';
import "BluetoothConnection/DiscoveryPage.dart";
import 'BluetoothConnection/ChatPage.dart';
import "splashscreen.dart";
import 'SettingPage.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';

List<CameraDescription>? cameras;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
    );
  }
}
