import 'package:flutter/material.dart';

class AssetImagesPage extends StatelessWidget {
  const AssetImagesPage({super.key});

  //Метод build создает пользовательский интерфейс для страницы. Мы используем Scaffold для создания основного макета, 
  //включая AppBar с заголовком 'Assets images'. В теле (body) мы размещаем центрированный столбец (Column), 
  //в котором отображается контейнер с изображением и два изображения. Первое изображение загружается из файла 'neon.png' 
  //и имеет обработчик ошибок, который отображает иконку ошибки и текст ошибки в случае возникновения ошибки при загрузке изображения. 
  //Второе изображение загружается из файла 'neo_logo.png' и имеет наложение цвета и режим смешивания цветов.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Assets images')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              color: Colors.blue.withOpacity(0.1),
              width: 200,
              height: 250,
              child: Image.asset(
                'assets/images/neon.png',
                errorBuilder: (context, error, stackTrace) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(bottom: 8.0),
                        child: Icon(Icons.error),
                      ),
                      Text(
                        error.toString(),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  );
                },
              ),
            ),
            Image.asset(
              'assets/images/neo_logo.png',
              color: Colors.blue,
              colorBlendMode: BlendMode.darken,
            ),
          ],
        ),
      ),
    );
  }
}
