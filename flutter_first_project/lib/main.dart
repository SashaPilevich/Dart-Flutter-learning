import 'package:flutter/material.dart';
import 'package:flutter_first_project/pages/home_page.dart';
import 'package:flutter_first_project/pages/dashboard.dart';

void main() => runApp( MaterialApp(
  initialRoute: '/',
  routes: {
    '/':(context)=> HomePage(),
    '/dashboard':(context)=>Dashboard()
  },
));




//Basics
// class MyApp extends StatelessWidget{
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(primaryColor: Colors.indigo[300]),
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('HAPPY PETS',style: TextStyle(
//             fontSize: 30,
//             fontFamily: 'Spectral',
//           ),),
//         centerTitle: true,
//           backgroundColor: Colors.indigo[300],
//         ),
//         body:Center(
//           child: Image(
//             image: AssetImage('assets/doginspace.png')
//             // NetworkImage('https://resizer.mail.ru/p/8c93f1f1-a067-51ea-bd75-a301fc0f2c20/AQAOujhWsXWikFh1zLCoxwuC4VswEFMIAobnawgesw-1sPa7MOFxlP0m_sNFOMh94QSK3eSi5djHtiy_NIqMv-Z3Gjc.jpg'),
//           )
//           // ElevatedButton.icon(onPressed: (){},label: Text('Click here'),icon:Icon(Icons.pets_sharp))
//           // FlatButton(onPressed:(){},child:Text('Click here'))
//           // Icon(Icons.pets,size: 60,color: Colors.indigo[300],),
//         ),
//         floatingActionButton: FloatingActionButton(
//           child: Text('Start'),
//           backgroundColor: Colors.indigo[300],
//           onPressed: (){
//           print('Click!');
//           },
//         ),
//       ),
//     );
//   }
//
// }

