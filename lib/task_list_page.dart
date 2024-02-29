import 'package:flutter/material.dart';
import 'task.dart';
import 'task_detail_page.dart';
import 'new_task_page.dart';

class TaskListPage extends StatefulWidget {
  @override
  _TaskListPageState createState() => _TaskListPageState();
}

class _TaskListPageState extends State<TaskListPage> {
  List<Task> tasks = [
    Task(title: 'Задача 1', description: 'Описание 1'),
    Task(title: 'Задача 2', description: 'Описание 2'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Мои задачи")),
      ),
      body: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              tasks[index].title,
              style: TextStyle(
                color: (index % 2 == 0) ? Colors.black : Colors.grey,
              ),
            ),
            subtitle: Text(
              tasks[index].description,
              style: TextStyle(
                color: (index % 2 == 0) ? Colors.black : Colors.grey,
              ),
            ),
            trailing: Icon(Icons.arrow_forward, color: (index % 2 == 0) ? Colors.black : Colors.grey),
            onTap: (index % 2 == 0)
                ? () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            TaskDetailPage(task: tasks[index]),
                      ),
                    );
                  }
                : null,
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _navigateToNewTaskPage(context);
        },
        child: Icon(Icons.add),
      ),
    );
  }

  void _navigateToNewTaskPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => NewTaskPage(onSave: _addTaskToList),
      ),
    );
  }

  void _addTaskToList(Task newTask) {
    setState(() {
      tasks.add(newTask);
    });
  }
}