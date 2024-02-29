import 'package:flutter/material.dart';
import 'task_list_page.dart'; // Импортируйте файл с вашим списком задач

void main() {
  runApp(MyApp());
}

  //Мы создаем класс MyApp, который является виджетом без состояния. В методе build мы возвращаем MaterialApp, 
  //который представляет наше приложение. Мы устанавливаем заголовок приложения, 
  //тему и устанавливаем TaskListPage в качестве домашней страницы.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Список задач',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:
          TaskListPage(), // Установите TaskListPage в качестве домашней страницы
    );
  }
}