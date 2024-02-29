import 'package:flutter/material.dart';

class AssetFontsPage extends StatelessWidget {
  const AssetFontsPage({super.key});

  //Метод build создает пользовательский интерфейс для страницы. Мы используем Scaffold для создания основного макета, 
  //включая AppBar с заголовком 'Assets Fonts'. В теле (body) мы размещаем центрированный столбец (Column), 
  //в котором отображаются четыре текстовых виджета (Text), каждый с разным шрифтом и размером. Мы используем различные шрифты, 
  //указанные в свойстве fontFamily, и задаем размер шрифта с помощью свойства fontSize. Также мы используем свойство textAlign, 
  //чтобы выровнять текст по центру.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Assets Fonts')),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'CloisterBlack',
              style: TextStyle(
                fontFamily: 'SomeFont',
                fontSize: 48,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              'OldLondon',
              style: TextStyle(
                fontFamily: 'OldLondon',
                fontSize: 48,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              'VampireWars',
              style: TextStyle(
                fontFamily: 'VampireWars',
                fontSize: 48,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              'Vampire\nWars\nItalic',
              style: TextStyle(
                fontFamily: 'VampireWars',
                fontSize: 36,
                fontStyle: FontStyle.italic,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
