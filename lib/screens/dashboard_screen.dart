import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/room_provider.dart';
import 'room_screen.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final roomProvider = Provider.of<RoomProvider>(context);
    return Scaffold(
      appBar: AppBar(title: Text('Dashboard')),
      body: ListView.builder(
        itemCount: roomProvider.rooms.length,
        itemBuilder: (ctx, i) => ListTile(
          title: Text(roomProvider.rooms[i].name),
          subtitle: Text('Members: ${roomProvider.rooms[i].members.length}'),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (_) => RoomScreen(room: roomProvider.rooms[i])));
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
