class ToDoModelClass {
  int? id;
  String title;
  String description;
  String date;

  ToDoModelClass({required this.title, required this.description, required this.date});

  Map<String, dynamic> todoMap() {
    return {
      'title':title,
      'description':description,
      'date':date
    };
  }

  @override
  String toString() {
    return '{title:$title, description:$description, date:$date}';
  }
}