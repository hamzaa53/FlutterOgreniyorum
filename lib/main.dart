import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(ful());
}

class ful extends StatefulWidget {
  const ful({Key? key}) : super(key: key);

  @override
  State<ful> createState() => _fulState();
}

int sayac = 0;
String anaBaslik = "Ana Başlık";

class _fulState extends State<ful> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 13, 46, 72),
        body: stateYapisi(context),
        bottomNavigationBar: BottomAppBar(
            shape: const CircularNotchedRectangle(),
            child: Container(height: 50.0)),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              setState(() {});
              sayac++;
            },
            child: const Text("H")),
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        appBar: AppBar(
          centerTitle: true,
          title: Text(anaBaslik),
          actions: const [Icon(Icons.abc)],
        ),
      ),
    );
  }
}

Scaffold stateYapisi(BuildContext context) {
  return Scaffold(
      body: Container(
          padding: EdgeInsets.only(top: 10),
          color: Color.fromARGB(255, 13, 46, 72),
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              OutlinedButton(
                onPressed: () {},
                child: Text("-", style: TextStyle(fontSize: 30)),
                style: butonStil(),
              ),
              OutlinedButton(
                onPressed: () {},
                child: Text("+", style: TextStyle(fontSize: 30)),
                style: butonStil(),
              )
            ]),
            Column(children: [
              PopupMenuButton<String>(
                  color: Colors.grey,
                  onSelected: (value) {
                    fonksiyon(value);
                  },
                  elevation: 10,
                  itemBuilder: (context) => [
                        PopupMenuItem(
                          child: Text("Rize"),
                          value: "Rize",
                        ),
                        PopupMenuItem(
                          child: Text("İstanbul"),
                          value: "İstanbul",
                        ),
                        PopupMenuItem(
                          child: Text("Ankara"),
                          value: "Ankara",
                        )
                      ])
            ]),
            Expanded(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                  Text(
                    "Butona tıklanma sayısı",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Text(sayac.toString(),
                      style: TextStyle(color: Colors.white, fontSize: 53)),
                ]))
          ])));
}

void fonksiyon(String deger) {
  anaBaslik = deger;
}

ButtonStyle butonStil() {
  return OutlinedButton.styleFrom(
      side: BorderSide(color: Colors.blue.shade200),
      minimumSize: Size(75, 50),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
        Radius.circular(20),
      )));
}

Container rowColumnYapisi() {
  return Container(
      color: Color.fromARGB(255, 0, 38, 44),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          kutu("D", const Color.fromARGB(255, 255, 0, 255)),
          kutu("A", const Color.fromARGB(255, 255, 75, 255)),
          kutu("R", const Color.fromARGB(255, 255, 150, 255)),
          kutu("T", const Color.fromARGB(255, 255, 200, 255)),
        ]),
        Row(children: [Container(height: 40)]),
        Flexible(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
              kutu("E", const Color.fromARGB(255, 255, 25, 255)),
              kutu("R", const Color.fromARGB(255, 255, 50, 255)),
              kutu("S", const Color.fromARGB(255, 255, 75, 255)),
              kutu("L", const Color.fromARGB(255, 255, 100, 255)),
              kutu("E", const Color.fromARGB(255, 255, 125, 255)),
              kutu("R", const Color.fromARGB(255, 255, 150, 255)),
              kutu("İ", const Color.fromARGB(255, 255, 175, 255)),
            ]))
      ]));
}

Container kutu(String letter, Color renk) {
  return Container(
      width: 50,
      height: 75,
      color: renk,
      child: Center(
          child: Text(
        letter,
        textAlign: TextAlign.center,
        style: const TextStyle(fontWeight: FontWeight.bold),
      )));
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
