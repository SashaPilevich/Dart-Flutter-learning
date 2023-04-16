import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  List todoList = [];
  String _userTodo='';
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    todoList.addAll([]);
  }
  void menuOpen(){
  Navigator.of(context).push(
    MaterialPageRoute(builder: (BuildContext context){
      return Scaffold(
        appBar: AppBar(
          title: Text('MENU',style: TextStyle(fontSize: 20, fontFamily: 'Poppins'),),
          backgroundColor: Colors.teal[600],
        ),
        body:  Text(''),
      );
    })
  );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'TODO', style: TextStyle(fontSize: 30, fontFamily: 'Poppins'),),
          centerTitle: true,
          backgroundColor: Colors.teal[600],
          actions: [
            IconButton(onPressed: menuOpen, icon: Icon(Icons.menu_open_rounded))
          ],
        ),
        body: Container(
              constraints: BoxConstraints.expand(),
              decoration: const BoxDecoration(
                color:Colors.white70,
                image: DecorationImage(
                image:AssetImage('assets/laptop.png',),
                    fit: BoxFit.contain),
               ),
              child:ListView.builder(
                    itemCount: todoList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Dismissible(
                        key: Key(todoList[index]),
                        child: Card(
                          child: ListTile(
                            title: Text(todoList[index]),
                            trailing: IconButton(
                              icon: Icon(
                                Icons.delete,
                                color: Colors.teal,
                              ),
                              onPressed: (){
                                setState(() {
                                  todoList.removeAt(index);
                                });
                              },
                            ),
                          ),
                        ),
                        onDismissed: (direction){
                          setState(() {
                            todoList.removeAt(index);
                          });
                        },
                      );
                    }
                ),
        ),
            
            floatingActionButton:FloatingActionButton(
              backgroundColor: Colors.teal,
              onPressed: (){
                showDialog(context: context, builder: (BuildContext context){
                  return AlertDialog(
                    title: Text('Add something...'),
                    content: TextField(
                      onChanged: (String value){
                        _userTodo = value;
                      },),
                    actions: [
                      ElevatedButton(
                          onPressed: (){
                            setState(() {
                              todoList.add(_userTodo);
                            });
                            Navigator.of(context).pop();
                          },
                          child: Text('Add'),
                          style: ButtonStyle(backgroundColor: MaterialStatePropertyAll<Color>(Colors.teal.shade600),minimumSize: MaterialStateProperty.all(Size(100, 30))))
                    ],
                  );
                });},
              child: Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
        );
  }
}
//style for btn
// style: ButtonStyle(backgroundColor: MaterialStatePropertyAll<Color>(Colors.teal.shade600),minimumSize: MaterialStateProperty.all(Size(250, 50)))
//
// Row(
// mainAxisAlignment: MainAxisAlignment.center,
// children: [
// Column(
// children: [
// Padding(padding:EdgeInsets.only(top: 20)),
// Text('Welcome Onboard!', style: TextStyle(
// color:Colors.black54,
// fontSize: 30,
// ),),
// Padding(padding:EdgeInsets.only(bottom: 50)),
// Image.asset('assets/laptop.png',height: 100,width: 200,),
// Padding(padding:EdgeInsets.only(bottom: 50)),
// FloatingActionButton(onPressed: (){
// showDialog(context: context, builder: (BuildContext context)
// {
// return AlertDialog(
// content: TextField(
// onChanged: (String value){
//
// },),
// );
// });
// }, child: Text('+', style: TextStyle(fontSize: 20)),),
// ListView.builder(
// itemCount: todoList.length,
// itemBuilder: (BuildContext context, int index){
// return Dismissible(
// key: Key(todoList[index]),
// child: Card(
// child: ListTile(title: Text(todoList[index]),),
// )
// );
// })
//
// ],
// )
// ],
// )
// Container(
// child: Row(
// mainAxisAlignment: MainAxisAlignment.center,
// children: [
// Column(
// children: [
// Padding(padding:EdgeInsets.only(top: 20)),
// Text('Welcome Onboard!', style: TextStyle(
// color:Colors.black54,
// fontSize: 30,
// ),),
// Padding(padding:EdgeInsets.only(bottom: 50)),
// Image.asset('assets/laptop.png',height: 150,width: 200,),
// Padding(padding:EdgeInsets.only(bottom: 20)),
// Text('Add what you want to do later on...', style: TextStyle(
// color:Colors.black54,
// fontSize: 20,
// ),),
// ],
// )
// ],
// ),
// ),