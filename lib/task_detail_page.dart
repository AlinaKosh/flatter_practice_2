import 'package:flutter/material.dart';
import 'task.dart';

class TaskDetailPage extends StatelessWidget {
  final Task task; // Задача, для которой отображается детальная страница

  TaskDetailPage({required this.task}); // Конструктор класса TaskDetailPage, принимающий обязательный параметр task

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(task.title), // Заголовок AppBar'а устанавливается из заголовка задачи
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Описание:', // Заголовок для описания задачи
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            Text(task.description), // Описание задачи
            SizedBox(height: 20),
             // Отображение статуса задачи в зависимости от значения isDone
          ],
        ),
      ),
    );
  }
}