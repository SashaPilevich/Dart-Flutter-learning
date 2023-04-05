import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade50,
        appBar: AppBar(
          title: Text('Your TODO',style: TextStyle(fontSize: 30,fontFamily: 'Poppins'),),
          centerTitle: true,
          backgroundColor: Colors.teal[600],
        ),
        body:SafeArea(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/youngman.png'),
                    Text('Get things done with TODO', style: TextStyle(
                      color:Colors.black54,
                      fontSize: 30,
                    ),),
                    Padding(padding:EdgeInsets.only(top: 70)),
                    ElevatedButton(onPressed: (){Navigator.pushNamed(context, '/dashboard');}, child: Text('Get started', style: TextStyle(fontSize: 20)), style: ButtonStyle(backgroundColor: MaterialStatePropertyAll<Color>(Colors.teal.shade600),minimumSize: MaterialStateProperty.all(Size(220, 44))))
                  ],
                ),
              ],
            )
        )
    );
  }
}