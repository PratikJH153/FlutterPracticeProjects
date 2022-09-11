import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todoapp/data/db_helper.dart';
import 'package:todoapp/models/todo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _titleController = TextEditingController();

  getTodoList() async {
    return await DBHelper.instance.getTodoList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TODO"),
        actions: [
          IconButton(
            onPressed: () async {
              await getTodoList();
            },
            icon: Icon(CupertinoIcons.refresh),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: FutureBuilder(
              future: getTodoList(),
              builder: (context, AsyncSnapshot snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) {
                      final Todo todo = snapshot.data[index];
                      return ListTile(
                        trailing: IconButton(
                          color: Colors.red,
                          icon: Icon(CupertinoIcons.delete),
                          onPressed: () {},
                        ),
                        title: Text(todo.title!),
                        leading: Checkbox(
                          value: true,
                          onChanged: (val) {},
                        ),
                      );
                    },
                  );
                }
                return Container(
                  child: Text("NO DATA"),
                );
              },
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              bottom: 15,
              left: 16,
              right: 16,
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _titleController,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Add todo..",
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () async {
                    if (_titleController.text.trim().isNotEmpty) {
                      final Map<String, dynamic> todoMap = {
                        "title": _titleController.text.trim(),
                        "status": 0,
                      };
                      await DBHelper.instance.addTodo(todoMap);
                      _titleController.clear();
                    }
                  },
                  icon: Icon(Icons.send),
                ),
              ],
            ),
          ),
        ],
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
