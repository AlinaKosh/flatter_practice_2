import 'package:flutter/material.dart';


  //Мы создаем класс HomePage, который является виджетом со состоянием. 
  //У него есть конструктор, который принимает параметр title. 
  //Мы также переопределяем метод createState, чтобы создать экземпляр класса _HomePageState.
class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

  //Мы создаем приватный класс _HomePageState, который расширяет состояние HomePage. 
  //В этом классе у нас есть переменная counter, которая отслеживает количество нажатий, 
  //и переменная localTitle, которая содержит заголовок страницы. В методе initState мы инициализируем 
  //localTitle, добавляя к нему строку ' 222'.
class _HomePageState extends State<HomePage> {
  int counter = 0;
  String? localTitle;

  @override
  void initState() {
    localTitle = widget.title + ' 222';

    super.initState();
  }

  onPressed() {

    if (mounted)
      setState(() {
        counter += 1;
      });
  }

  //Метод build создает пользовательский интерфейс для страницы. Мы используем Scaffold для создания основного макета, 
  //включая AppBar с заголовком, кнопкой ведущей и кнопками действий. 
  //В теле (body) мы размещаем центрированный столбец (Column), в котором отображается заголовок, контейнер счетчика и иконка, 
  //на которую можно нажать или дважды нажать для увеличения значения counter.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(localTitle ?? ''),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.add),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add),
          )
        ],
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(widget.title),
          Container(padding: EdgeInsets.all(16), child: Text('$counter')),
          GestureDetector(
            onTap: () {
              setState(() {
                counter += 1;
              });
            },
            onDoubleTap: () {
              setState(() {
                counter += 4;
              });
            },
            child: Icon(Icons.add),
          ),
        ],
      )),
    );
  }
}
