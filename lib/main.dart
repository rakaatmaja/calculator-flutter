import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Calculator(),
    );
  }
}

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  TextEditingController controllerA = TextEditingController();
  TextEditingController controllerB = TextEditingController();

  int? result = 0, num1 = 0, num2 = 0;

  tambah() {
    setState(() {
      num1 = int.parse(controllerA.text);
      num2 = int.parse(controllerB.text);

      result = num1! + num2!;
    });
  }

  kurang() {
    setState(() {
      num1 = int.parse(controllerA.text);
      num2 = int.parse(controllerB.text);

      result = num1! - num2!;
    });
  }

  kali() {
    setState(() {
      num1 = int.parse(controllerA.text);
      num2 = int.parse(controllerB.text);

      result = num1! * num2!;
    });
  }

  bagi() {
    setState(() {
      num1 = int.parse(controllerA.text);
      num2 = int.parse(controllerB.text);

      result = num1! ~/ num2!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        centerTitle: true,
        title: Text('Syntax Pertemuan 2'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            TextField(
              controller: controllerA,
              decoration: InputDecoration(
                labelText: "Masukkan Angka Pertama",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: controllerB,
              decoration: InputDecoration(
                labelText: "Masukkan Angka Kedua",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Hasil = $result',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    tambah();
                    controllerA.clear();
                    controllerB.clear();
                  },
                  child: Text('+'),
                ),
                ElevatedButton(
                  onPressed: () {
                    kurang();
                    controllerA.clear();
                    controllerB.clear();
                  },
                  child: Text('-'),
                ),
                ElevatedButton(
                  onPressed: () {
                    kali();
                    controllerA.clear();
                    controllerB.clear();
                  },
                  child: Text('*'),
                ),
                ElevatedButton(
                  onPressed: () {
                    bagi();
                    controllerA.clear();
                    controllerB.clear();
                  },
                  child: Text('/'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
