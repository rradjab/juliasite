import 'package:flutter/material.dart';

import '../items/list_item.dart';

class AppBarLarge extends StatefulWidget {
  const AppBarLarge(this.title, {super.key});
  final String title;

  @override
  State<AppBarLarge> createState() => _AppBarState();
}

class _AppBarState extends State<AppBarLarge> {
  @override
  Widget build(BuildContext context) {
    List appBarItems = [
      "Биография",
      "Сферы деятельности",
      "Интервю и публикации",
      "Консультации и бронь",
      "Магазин",
      "Контакты",
      "Ru"
    ];
    /*
      1) Главная
      2) Биография
      3) СМИ
      - научные публикации
      - книги
      - статьи 
      - интервь
      4) консультации и мастер классы
      5) Just Pleasures  by Julia Palovski
      6) Контакты
      7) Язык (выбор языка)
       - английский
       - украинский
       -  русский
    */
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: ListItem(list: appBarItems),
          ),
        ],
      ),
    );
  }
}
