import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'ToDo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const TodoApp(),
        debugShowCheckedModeBanner: false);
  }
}

class TodoApp extends StatelessWidget {
  const TodoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(245, 243, 244, 1),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1633113215988-4eaddc3965d9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80"),
              ),
            ),
            Text(
              "My tasks",
              style: TextStyle(color: Color.fromRGBO(65, 63, 76, 1)),
            )
          ],
        ),
        actions: const [
          IconButton(
            onPressed: null,
            icon: Icon(Icons.filter_list),
          ),
          IconButton(
            onPressed: null,
            icon: Icon(Icons.search),
          ),
        ],
      ),
      body: Column(mainAxisSize: MainAxisSize.max, children: [
        ListView(
          children: const [
            TaskWidget(
              color: Color.fromRGBO(188, 151, 192, 1),
              icon: Icons.notifications,
              task_info: "The family's trip to Finland next summer",
              task: 'Plannded trip to Finland',
              time: 'yesterday',
            ),
            TaskWidget(
              color: Color.fromRGBO(131, 145, 158, 1),
              icon: Icons.notifications_none_outlined,
              task_info: "",
              task: "Plan Susan's birthday",
              time: 'Today 11:00',
            ),
            TaskWidget(
              color: Color.fromRGBO(131, 145, 158, 1),
              icon: Icons.notifications_none_outlined,
              task_info:
                  "Get tomatoes, lettuce, potatoes, green beans, cream and beef fillet. Also buy red wine at Johns Wine Shop",
              task: 'Groceries for dinner',
              time: 'yesterday',
            ),
            TaskWidget(
              color: Color.fromRGBO(177, 176, 174, 1),
              icon: Icons.notifications_none_outlined,
              task_info: "Send presentation to Bill",
              task: 'Port projects',
              time: 'yesterday',
            ),
            TaskWidget(
              color: Color.fromRGBO(177, 176, 174, 1),
              icon: Icons.notifications_none_outlined,
              task_info: "",
              task: 'Take jacket for cleaning',
              time: 'Fri 30, Oct',
            ),
            TaskWidget(
              color: Color.fromRGBO(188, 151, 192, 1),
              icon: Icons.notifications_none_outlined,
              task_info: "Install latest update and check wireless connection",
              task: "Fix Dad's PC",
              time: '',
            ),
            TaskWidget(
              color: Color.fromRGBO(188, 151, 192, 1),
              icon: Icons.clear,
              task_info: "Talk to Monica about the trip",
              task: 'Trip to Stockholm',
              time: '',
            ),
            TaskWidget(
              color: Color.fromRGBO(188, 151, 192, 1),
              icon: Icons.clear,
              task_info: "Talk to Monica about the trip",
              task: 'Trip to Stockholm',
              time: '',
            ),
          ],
        ),
        Card(
          child: ListTile(),
        )
      ]),
      floatingActionButton: const FloatingActionButton(
          onPressed: null,
          child: Icon(
            Icons.add,
            size: 40,
          )),
    );
  }
}

class TaskWidget extends StatelessWidget {
  const TaskWidget({
    Key? key,
    required this.task,
    required this.task_info,
    required this.time,
    required this.icon,
    required this.color,
  }) : super(key: key);
  final String task;
  // ignore: non_constant_identifier_names
  final String task_info;
  final String time;
  final IconData icon;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Card(
        child: ListTile(
          leading: Icon(
            Icons.check_circle_outline,
            color: color,
          ),
          title: Text(task,
              overflow: TextOverflow.ellipsis,
              style:
                  const TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
          subtitle: Text(
            task_info,
          ),
          trailing: Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              verticalDirection: VerticalDirection.up,
              children: <Widget>[
                // ignore: unnecessary_null_comparison
                Icon(icon, size: 15, color: color),
                Text(time, style: TextStyle(color: color)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
