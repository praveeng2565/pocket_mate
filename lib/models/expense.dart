class Expense {
  String id;
  String title;
  double amount;
  String paidBy;
  DateTime date;

  Expense(
      {required this.id,
      required this.title,
      required this.amount,
      required this.paidBy,
      required this.date});

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'amount': amount,
        'paidBy': paidBy,
        'date': date.toIso8601String(),
      };

  factory Expense.fromJson(Map<String, dynamic> json) => Expense(
        id: json['id'],
        title: json['title'],
        amount: json['amount'],
        paidBy: json['paidBy'],
        date: DateTime.parse(json['date']),
      );
}
