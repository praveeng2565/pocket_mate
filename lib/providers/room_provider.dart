import 'package:flutter/material.dart';
import '../models/room.dart';

class RoomProvider extends ChangeNotifier {
  List<Room> _rooms = [];

  List<Room> get rooms => _rooms;

  void addRoom(Room room) {
    _rooms.add(room);
    notifyListeners();
  }

  void addExpense(String roomId, roomExpense) {
    final room = _rooms.firstWhere((r) => r.id == roomId);
    room.expenses.add(roomExpense);
    notifyListeners();
  }
}
