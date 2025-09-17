class Member {
  String id;
  String name;
  String? contact;

  Member({required this.id, required this.name, this.contact});

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'contact': contact,
      };

  factory Member.fromJson(Map<String, dynamic> json) => Member(
        id: json['id'],
        name: json['name'],
        contact: json['contact'],
      );
}
