import 'dart:async';
import 'package:flutter/material.dart';
import 'ChatPage.dart';

class MyTextField extends StatefulWidget {
  final String? text;

  const MyTextField({super.key, this.text});

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  Timer? _timer;
  String? _currentText;

  @override
  void initState() {
    super.initState();
    _currentText = widget.text ?? '';
    _timer = Timer.periodic(Duration(seconds: 5), (timer) {
      if (_currentText != widget.text) {
        _currentText = widget.text ?? '';
        _textController.text = _currentText!;
      }
    });
  }

  TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _textController,
    );
  }
}
