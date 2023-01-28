import 'package:flutter/material.dart';

import '../items/list_item.dart';

class AppBarMedium extends StatefulWidget {
  const AppBarMedium(this.title, {super.key});
  final String title;

  @override
  State<AppBarMedium> createState() => _AppBarState();
}

class _AppBarState extends State<AppBarMedium> {
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
