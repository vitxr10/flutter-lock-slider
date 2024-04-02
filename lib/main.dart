import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

double tamanho = 300;
double max = 500;
double min = 50;
double s = 50, m = 300, l = 500;
Color cor = Colors.black;
double red=0, blue=0, green=0;
int redFinal=0, greenFinal=0, blueFinal=0;
double opacidade = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter State'),
          actions: [
            IconButton(
              icon: const Icon(Icons.remove),
              onPressed: () {
                setState(() {
                  if(tamanho >min){
                    tamanho-=50;
                  }
                });
              },
            ),
            IconButton(
              icon: const Text('S'),
              onPressed: () {
                setState(() {
                  tamanho=s;
                });
              },
            ),
            IconButton(
              icon: const Text('M'),
              onPressed: () {
                setState(() {
                  tamanho=m;
                });
              },
            ),
            IconButton(
              icon: const Text('L'),
              onPressed: () {
                setState(() {
                  tamanho=l;
                });
              },
            ),
            IconButton(
              icon: const Icon(Icons.add),
              onPressed: () {
                setState(() {
                  if(tamanho <max){
                    tamanho+=50;
                  }
                });
              },
            ),
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: Center(
                child: Icon(
                  Icons.lock_clock,
                  size: tamanho,
                  color: Color.fromRGBO(redFinal, greenFinal, blueFinal, opacidade),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  Expanded(
                    child: Slider(
                      activeColor: Colors.red,
                      value: red,
                      min: 0,
                      max: 255,
                      label: redFinal.round().toString(),
                      onChanged: (value) {
                        setState(() {
                          red = value;
                          redFinal = red.toInt();
                        });
                      },
                    ),
                  ),
                  Text(
                    redFinal.toString(),
                    style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  Expanded(
                    child: Slider(
                      activeColor: Colors.green,
                      value: green,
                      min: 0,
                      max: 255,
                      label: greenFinal.round().toString(),
                      onChanged: (value) {
                        setState(() {
                          green = value;
                          greenFinal = green.toInt();
                        });
                      },
                    ),
                  ),
                  Text(
                    greenFinal.toString(),
                    style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  Expanded(
                    child: Slider(
                      activeColor: Colors.blue,
                      value: blue,
                      min: 0,
                      max: 255,
                      label: blueFinal.round().toString(),
                      onChanged: (value) {
                        setState(() {
                          blue = value;
                          blueFinal = blue.toInt();
                        });
                      },
                    ),
                  ),
                  Text(
                    blueFinal.toString(),
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}