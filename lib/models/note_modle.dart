class Note {
  int? id;
  String? title;
  DateTime? date;
  String? priority;
  String? description;
  int? status;

  Note({this.title, this.date, this.priority, this.status, this.description});

  Note.withId(
      {this.id,
      this.title,
      this.date,
      this.priority,
      this.status,
      this.description});

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};

    if (id != null) {
      map['id'] = id;
    }
    map['title'] = title;
    map['date'] = date!.toIso8601String();
    map['priority'] = priority;
    map['status'] = status;
    map['description'] = description;

    return map;
  }

  factory Note.fromMap(Map<String, dynamic> map) {
    return Note.withId(
      id: map['id'],
      title: map['title'],
      priority: map['priority'],
      date: DateTime.parse(map['date']),
      status: map['status'],
      description: map['description'],
    );
  }
}
