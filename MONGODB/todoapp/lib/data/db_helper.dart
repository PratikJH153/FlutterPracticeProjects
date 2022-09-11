import 'dart:convert';

import 'package:todoapp/models/todo.dart';
import 'package:http/http.dart' as http;

const BASEURL = "http://10.0.2.2:80";

class DBHelper {
  static final DBHelper instance = DBHelper._instance();

  DBHelper._instance();

  Future<List<Todo>> getTodoList() async {
    final List<Todo> todoList = [];
    try {
      final response = await http.get(Uri.parse(BASEURL));
      final result = await json.decode(response.body);
      result.forEach((todo) {
        final newTodo = Todo(
          status: todo["status"],
          title: todo["title"],
        );
        todoList.add(newTodo);
      });
    } catch (err) {
      print("ERROR WHILE FETCHING TODO FROM DATAbaSE");
      print(err);
    }

    return todoList;
  }

  Future<bool> addTodo(Map<String, dynamic>? todoMap) async {
    try {
      final response = await http.post(
        Uri.parse("$BASEURL/add"),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode(todoMap),
      );
      print("RESPONSE CODE: ${response.statusCode}");
      if (response.statusCode == 200) {
        return true;
      } else {
        return false;
      }
    } catch (err) {
      print(err);
      return false;
    }
  }
}
