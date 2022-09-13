import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: containerYapisi(),
        backgroundColor: const Color.fromARGB(221, 44, 44, 44),
        bottomNavigationBar: BottomAppBar(
            shape: const CircularNotchedRectangle(),
            child: Container(height: 50.0)),
        floatingActionButton:
            FloatingActionButton(onPressed: () {}, child: const Text("H")),
        floatingActionButtonLocation:
            FloatingActionButtonLocation.miniEndDocked,
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Ana Başlık"),
          actions: const [Icon(Icons.abc), Text("abc")],
        ),
      ),
    );
  }

  Center containerYapisi() {
    return Center(
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey, width: 5),
            borderRadius: const BorderRadius.all(Radius.circular(15)),
            color: Colors.red),
        width: 100,
        height: 100,
        alignment: Alignment.center,
        child: Center(
          child: Container(
            width: 50,
            height: 50,
            color: Colors.blue,
            alignment: Alignment.center,
            child: const Center(
              child: Text(
                "Hamza",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Color renklendir() {
  switch (Random().nextInt(11)) {
    case 0:
      return Colors.amber;
    case 1:
      return Colors.lightBlueAccent;
    case 2:
      return Colors.pink;
    case 3:
      return Colors.teal;
    case 4:
      return Colors.deepPurple;
    case 5:
      return Colors.deepOrange;
    case 6:
      return Colors.grey;
    case 7:
      return Colors.lightGreenAccent;
    case 8:
      return Colors.indigo;
    case 9:
      return Colors.green;
    case 10:
      return Colors.cyanAccent;
    default:
      return Colors.black;
  }
}
