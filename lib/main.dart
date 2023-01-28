import 'package:flutter/material.dart';
import 'package:juliasite/responsive_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Julia',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Julia Palovski'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.black),
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(screenSize.width, 50),
          child: ResponsiveBar.returnBar(screenSize.width),
        ),
        body: Container(
          color: Colors.black,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Expanded(
                  child: Image.asset('assets/images/logo.jpg'),
                ),
                Expanded(
                  child: Image.asset(
                    'assets/images/image.jpeg',
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
