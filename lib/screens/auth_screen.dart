import 'package:flutter/material.dart';

class AuthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Authenticate')),
      body: Center(child: Text('PIN/Fingerprint authentication here')),
    );
  }
}
