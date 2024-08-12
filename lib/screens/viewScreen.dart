import 'package:flutter/material.dart';
import 'package:todo/controller/notescontroller.dart';

class Viewscreen extends StatefulWidget {
Viewscreen({super.key,required this.index});
  int index;
  @override
  State<Viewscreen> createState() => _ViewscreenState();
}

class _ViewscreenState extends State<Viewscreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(246, 236, 201, 1),
      appBar: AppBar(
      backgroundColor: Color.fromRGBO(246, 236, 201, 1),

        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.edit_calendar),
          ),
          IconButton(
            onPressed: () {
              deletenotes(widget.index);
               
              Navigator.pop(context);
            
            },
            icon: Icon(Icons.delete),
          ),
          SizedBox(width: 15)
          
        ],
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50),
            Image.asset(noteslist[widget.index]['image'].path),
            SizedBox(height: 50),
            Text(noteslist[widget.index]['title'],style: TextStyle(fontFamily: "sitara",fontSize: 20,color: Color.fromRGBO(0, 0, 0, 1),),),
            SizedBox(height: 20),
            Text(noteslist[widget.index]['description'],style: TextStyle(fontFamily: "sitara",fontSize: 20,color: Color.fromRGBO(0, 0, 0, 0.5),),),
          ]
        ),
      ),
    );
  }
}