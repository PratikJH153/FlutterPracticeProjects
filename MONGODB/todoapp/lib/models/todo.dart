class Todo {
  final String? title;
  final int? status;

  Todo({
    this.title,
    this.status,
  });

  // factory Todo.fromJson(Map<String, dynamic> map) {
  //   print(map);
  //   return Todo(
  //     status: map["status"]!,
  //     title: "${map["title"]!}",
  //   );
  // }
}
