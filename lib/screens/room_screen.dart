import 'package:flutter/material.dart';
import '../models/room.dart';

class RoomScreen extends StatelessWidget {
  final Room room;

  RoomScreen({required this.room});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(room.name)),
      body: ListView(
        children: room.expenses
            .map((e) => ListTile(
                  title: Text(e.title),
                  subtitle: Text('${e.amount} paid by ${e.paidBy}'),
                ))
            .toList(),
      ),
    );
  }
}
