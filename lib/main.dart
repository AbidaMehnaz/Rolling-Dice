import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dice Rolling App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainPage(
      ),
    );
  }
}

class MainPage extends StatefulWidget {
  MainPage();

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  var imageArray = ['1.png', '2.png', '3.png', '4.png', '5.png', '6.png'];

  int randomIntForDiceOne = Random().nextInt(6);
  int randomIntForDiceTwo = Random().nextInt(6);



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.blueGrey,
        body: Padding(
          padding: const EdgeInsets.fromLTRB(21, 50, 21, 50),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 120),
                child: Text('The sum is: '+ (randomIntForDiceOne + randomIntForDiceTwo + 2).toString(),
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(child: Image.asset('asset/'+imageArray[randomIntForDiceOne], height: 150, width: 150,)),
                  Container(child: Image.asset('asset/'+imageArray[randomIntForDiceTwo], height: 150, width: 150,)),

               ]
              ),

              Padding(
                padding: const EdgeInsets.only(top: 60),
                child: RaisedButton(onPressed: changeImage ,
                  child: Text('Roll Dice'),
                ),
              )
            ],
          ),
        )
    );
  }

  void changeImage() {
    setState(() {
      randomIntForDiceOne = Random().nextInt(6);
      randomIntForDiceTwo = Random().nextInt(6);
    });

  }
}