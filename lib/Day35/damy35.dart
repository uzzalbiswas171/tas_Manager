import 'dart:html';

import 'package:flutter/material.dart';

class Model{
  final Color? clr;
  Model({this.clr});
}

List<Model> myList=[
  Model(clr: Colors.red),
  Model(clr: Colors.green),
  Model(clr: Colors.yellow),
  Model(clr: Colors.red),
];
class Day35 extends StatefulWidget {
  const Day35({Key? key}) : super(key: key);

  @override
  State<Day35> createState() => _Day35State();
}

class _Day35State extends State<Day35> {

  List my=[
    Colors.red,
    Colors.blue,
    Colors.red,
    Colors.white,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButtonLocation:FloatingActionButtonLocation.centerDocked,
      floatingActionButton:CircleAvatar(
        radius: 33,
        child: Icon(Icons.add,size: 33,color: Colors.white,),
        backgroundColor: Colors.green,
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(onPressed: (){},
                icon: Icon(Icons.home,size: 25,color: Colors.white,)),
            IconButton(onPressed: (){},
                icon: Icon(Icons.call,size: 25,color: Colors.white,)),

              SizedBox(
                width: 30,
              ),

            IconButton(onPressed: (){},
                icon: Icon(Icons.person,size: 25,color: Colors.white,)),
            IconButton(onPressed: (){},
                icon: Icon(Icons.notifications,size: 25,color: Colors.white,)),
          ],
        ),
        color: Colors.amber,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.pink,


      child: ListView.builder(
        scrollDirection: Axis.vertical,
          itemCount: my.length,
          shrinkWrap: true,
          itemBuilder: (context, index){
          return Container(
            margin: EdgeInsets.all(10),
            height: 100,
            width: 100,
            color: my[index]
          );
          }),

      ),
    );
  }
}
