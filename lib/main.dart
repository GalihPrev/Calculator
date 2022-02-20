import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController text1 = TextEditingController();
  TextEditingController text2 = TextEditingController();
  int hasil = 0, input1 = 0, input2 = 0;

  kali() {
    setState(() {
      input1 = int.parse(text1.text);
      input2 = int.parse(text2.text);
      hasil = input1 * input2;
    });
  }

  bagi() {
    setState(() {
      input1 = int.parse(text1.text);
      input2 = int.parse(text2.text);
      hasil = input1 ~/ input2;
    });
  }

  tambah() {
    setState(() {
      input1 = int.parse(text1.text);
      input2 = int.parse(text2.text);
      hasil = input1 + input2;
    });
  }

  kurang() {
    setState(() {
      input1 = int.parse(text1.text);
      input2 = int.parse(text2.text);
      hasil = input1 - input2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: (Text("Claculator")),
          ),
        ),
        body: Column(
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Text("Hasil : $hasil",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: text1,
              decoration: InputDecoration(
                labelText: "Input Pertama",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            TextField(
              controller: text2,
              decoration: InputDecoration(
                labelText: "Input Kedua",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      kali();
                      text1.clear();
                      text2.clear();
                    },
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                          width: 40,
                        ),
                        Text("X"),
                      ],
                    )),
                SizedBox(
                  height: 40,
                ),
                ElevatedButton(
                    onPressed: () {
                      tambah();
                      text1.clear();
                      text2.clear();
                    },
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                          width: 40,
                        ),
                        Text("+"),
                      ],
                    )),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ElevatedButton(
                    onPressed: () {
                      bagi();
                      text1.clear();
                      text2.clear();
                    },
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                          width: 40,
                        ),
                        Text("/"),
                      ],
                    )),
                SizedBox(
                  height: 40,
                ),
                ElevatedButton(
                    onPressed: () {
                      kurang();
                      text1.clear();
                      text2.clear();
                    },
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                          width: 40,
                        ),
                        Text("-"),
                      ],
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
