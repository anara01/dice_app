import 'dart:math';
import 'package:dice_app/misal_barak.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: const MisalBarak(),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int solNomer = 1;
  int onNomer = 3;

  void ozgort() {
    Random random = Random();

    setState(() {
      solNomer = random.nextInt(6) + 1;
      onNomer = random.nextInt(6) + 1;
    });

    //print('solNomer ===> $solNomer');
    //print('onNomer ===> $onNomer');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFBB603),
      appBar: AppBar(
        backgroundColor: const Color(0xffFCCF38),
        centerTitle: true,
        title: Text(
          "Dice App".toUpperCase(),
          style: const TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: InkWell(
                onTap: ozgort,
                child: Image.asset(
                  "assets/images/dice_$solNomer.png",
                  color: Colors.white,
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () {
                  ozgort();
                },
                child: Image.asset(
                  "assets/images/dice_$onNomer.png",
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
