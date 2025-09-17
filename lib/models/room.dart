import 'member.dart';
import 'expense.dart';

class Room {
  String id;
  String name;
  List<Member> members;
  List<Expense> expenses;

  Room(
      {required this.id,
      required this.name,
      required this.members,
      required this.expenses});

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'members': members.map((e) => e.toJson()).toList(),
        'expenses': expenses.map((e) => e.toJson()).toList(),
      };

  factory Room.fromJson(Map<String, dynamic> json) => Room(
        id: json['id'],
        name: json['name'],
        members:
            (json['members'] as List).map((e) => Member.fromJson(e)).toList(),
        expenses:
            (json['expenses'] as List).map((e) => Expense.fromJson(e)).toList(),
      );
}
