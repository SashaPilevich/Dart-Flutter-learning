import 'package:flutter/material.dart';

void main() => runApp( MyApp());

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.indigo[300]),
      home: Scaffold(
        appBar: AppBar(
          title: Text('HAPPY PETS',style: TextStyle(
            fontSize: 30,
            fontFamily: 'Spectral',
          ),),
        centerTitle: true,
          backgroundColor: Colors.indigo[300],
        ),
        body: Center(
          child: Icon(Icons.pets,size: 60,color: Colors.indigo[300],),
        ),
        floatingActionButton: FloatingActionButton(
          child: Text('Start'),
          backgroundColor: Colors.indigo[300],
          onPressed: (){
          print('Click!');
          },
        ),
      ),
    );
  }

}
