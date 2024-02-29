class Task {
  String title; // Заголовок задачи
  String description; // Описание задачи
  bool isDone; // Флаг, указывающий, выполнена ли задача

  // Конструктор класса Task, принимающий обязательные параметры title и description,
  // а также необязательный параметр isDone, который по умолчанию равен false.
  Task({required this.title, required this.description, this.isDone = false});
  
}