import 'package:flutter/material.dart';
import 'package:to_do_list_flutter/util/tofo_tile.dart';

class HomePage extends StatefulWidget {
   HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //List of todo tools tasks
  List toDoList = [
    ["Make Tutorial", false],
    ["Do Exercise", false],
  ];

  //checkbox was tapped
  void checkBoxChanged(bool? value, int index){
    setState(() {
       toDoList[index][1]= !toDoList[index][1];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.yellow[200],
        appBar: AppBar(
          title: Center(child: Text('TO DO')),
          elevation: 0,
        ),
        body: ListView.builder(
            itemCount: toDoList.length,
            itemBuilder: (context, index) {
              return ToDoTile(taskName: toDoList[index][0], taskCompleted: toDoList[index][1], onChanged: (value) => checkBoxChanged(value, index),
              );
            }
        )
    );
  }
}

class HomePageBody extends StatefulWidget {
  const HomePageBody({Key? key}) : super(key: key);

  @override
  State<HomePageBody> createState() => _HomePageBodyState();
}

class _HomePageBodyState extends State<HomePageBody> {
  @override
  Widget build(BuildContext context) {
    return Placeholder();
  }
}
