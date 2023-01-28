import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  final List list;
  const ListItem({super.key, required this.list});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemCount: list.length,
      itemBuilder: (BuildContext context, int index) => InkWell(
        onHover: (value) {},
        onTap: () {},
        child: Column(
          children: [
            PopupMenuButton(
              // add icon, by default "3 dot" icon
              // icon: Icon(Icons.book)
              child: TextButton(
                onPressed: () {},
                child: Text(
                  list[index],
                  style: const TextStyle(color: Colors.amber),
                ),
              ),
              itemBuilder: (context) {
                return [
                  const PopupMenuItem<int>(
                    value: 0,
                    child: Text("My Account"),
                  ),
                  const PopupMenuItem<int>(
                    value: 1,
                    child: Text("Settings"),
                  ),
                  const PopupMenuItem<int>(
                    value: 2,
                    child: Text("Logout"),
                  ),
                ];
              },
            ),
          ],
        ),
      ),
    );
  }
}
