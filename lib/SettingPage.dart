import 'package:flutter/material.dart';
import 'BluetoothConnection/ChatPage.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';
import 'BluetoothConnection/SelectBondedDevicePage.dart';
import 'dart:async';
import 'package:scoped_model/scoped_model.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ListTile(
            title: ElevatedButton(
              child: Text('chat'),
              onPressed: () async {
                final BluetoothDevice? selectedDevice =
                    await Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return SelectBondedDevicePage(checkAvailability: false);
                    },
                  ),
                );

                if (selectedDevice != null) {
                  print('Connect -> selected ' + selectedDevice.address);
                  _startChat(context, selectedDevice);
                } else {
                  print('Connect -> no device selected');
                }
              },
            ),
          )
        ],
      ),
    );
  }

  startChats() {
    (BuildContext context, BluetoothDevice server) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) {
            return ChatPage(server: server);
          },
        ),
      );
    };
  }

  void _startChat(BuildContext context, BluetoothDevice server) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return ChatPage(server: server);
        },
      ),
    );
  }
}
