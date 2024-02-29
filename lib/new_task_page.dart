import 'package:flutter/material.dart';
import 'task.dart';

class NewTaskPage extends StatelessWidget {
  final Function(Task) onSave;

  NewTaskPage({required this.onSave});

  @override
  Widget build(BuildContext context) {
    String title = ''; // Переменная для хранения названия задачи
    String description = ''; // Переменная для хранения описания задачи

    return Scaffold(
      appBar: AppBar(
        title: Text('Добавить задачу'), // Заголовок страницы
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                labelText: 'Название задачи', // Подпись для текстового поля названия задачи
              ),
              onChanged: (value) {
                title = value; // Обновление значения переменной title при изменении текста в поле
              },
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Описание задачи', // Подпись для текстового поля описания задачи
              ),
              onChanged: (value) {
                description = value; // Обновление значения переменной description при изменении текста в поле
              },
            ),
            SizedBox(height: 20), // Промежуток между текстовыми полями и кнопкой
            ElevatedButton(
              onPressed: () {
                Task newTask = Task(title: title, description: description); // Создание нового объекта задачи
                onSave(newTask); // Сохранение новой задачи с помощью функции onSave
                Navigator.pop(context); // Закрыть страницу добавления задачи и вернуться на предыдущую страницу
              },
              child: Text('Сохранить'), // Текст на кнопке
            ),
          ],
        ),
      ),
    );
  }
}