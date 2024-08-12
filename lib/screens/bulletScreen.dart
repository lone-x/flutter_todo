import 'dart:math';

import 'package:flutter/material.dart';

class Bulletscreen extends StatefulWidget {
  const Bulletscreen({super.key});

  @override
  State<Bulletscreen> createState() => _BulletscreenState();
}

class _BulletscreenState extends State<Bulletscreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(0, 0, 0, 0.9),
          toolbarHeight: 100,
          title: const Align(
            alignment: Alignment.centerLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("My",style: TextStyle(fontFamily: "sitara",fontSize: 36,color: Color.fromRGBO(255, 255, 255, 1)),),
                Text("Notes",style: TextStyle(fontFamily: "sitara",fontSize: 36,color: Color.fromRGBO(255, 255, 255, 1),),),
              ],
            ),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Align
              (
                alignment: Alignment.topRight,
                child: CircleAvatar(child: Text("logo",style: TextStyle(fontFamily: "itis",fontSize: 13 ,color: Color.fromRGBO(0, 0, 0, 1),),),backgroundColor: Color.fromRGBO(217, 217, 217, 1),)),
            )
      ],
      bottom: const PreferredSize(
          preferredSize: Size.fromHeight(30), // set the height here
          
            child: TabBar(
              indicatorColor: Color.fromRGBO(255, 255, 255, 1),
              dividerColor: Color.fromRGBO(0, 0, 0, 0.9),
              tabs: [
                Text("All",style: TextStyle(color: Colors.white,fontSize: 24),),
                Text("Important",style: TextStyle(color: Colors.white,fontSize: 24),),
              ],
           
          )
          ),
        ),
        body: Container(
          color: Color.fromRGBO(0, 0, 0, 0.9),
          child: const TabBarView(
            children: [
             Padding(
               padding: EdgeInsets.all(16.0),
               child: Column(
                
                children: [
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Text("upcoming",style: TextStyle(color: Color.fromRGBO(255, 255, 255, 0.898),fontSize: 14,decoration: TextDecoration.underline,decorationColor: Colors.white),),
                      Expanded(child: SizedBox()),
                      Text("See all",style: TextStyle(color: Color.fromRGBO(255, 255, 255, 0.898),fontSize: 10),),
                    ]
                  ),
                  SizedBox(height: 20,),
                  Card(
                    child: ListTile(
                      leading: CircleAvatar(backgroundColor: Color.fromRGBO(104, 96, 96, 0.898),),
                      title: Text("Title",style: TextStyle(color: Color.fromRGBO(0, 0, 0, 0.9),fontSize: 20),),
                    subtitle: Text("Important Note",style: TextStyle(color: Color.fromRGBO(0, 0, 0, 0.5),fontSize: 20),),
                    trailing: Column(
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.edit_calendar,color: Color.fromRGBO(0, 0, 0, 1),),
                            SizedBox(width: 5,),
                            Icon(Icons.delete,color: Color.fromRGBO(255, 0, 0, 1),),
                          ],
                        ),
                        Spacer(),
                        Text("10 Jan, 2023 10:15 pm,",style: TextStyle(color: Color.fromRGBO(0, 0, 0, 0.5),fontSize: 7),),
                      ],
                    ),
               
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: CircleAvatar(backgroundColor: Color.fromRGBO(104, 96, 96, 0.898),),
                      title: Text("Title",style: TextStyle(color: Color.fromRGBO(0, 0, 0, 0.9),fontSize: 20),),
                    subtitle: Text("Important Note",style: TextStyle(color: Color.fromRGBO(0, 0, 0, 0.5),fontSize: 20),),
                    trailing: Column(
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.edit_calendar,color: Color.fromRGBO(0, 0, 0, 1),),
                            SizedBox(width: 5,),
                            Icon(Icons.delete,color: Color.fromRGBO(255, 0, 0, 1),),
                          ],
                        ),
                        Spacer(),
                        Text("10 Jan, 2023 10:15 pm,",style: TextStyle(color: Color.fromRGBO(0, 0, 0, 0.5),fontSize: 7),),
                      ],
                    ),
               
                    ),
                  ),
                  SizedBox(height: 20,),
                   Row(
                    children: [
                      Text("done",style: TextStyle(color: Color.fromRGBO(255, 255, 255, 0.898),fontSize: 14,decoration: TextDecoration.underline,decorationColor: Colors.white),),
                      Expanded(child: SizedBox()),
                      Text("See all",style: TextStyle(color: Color.fromRGBO(255, 255, 255, 0.898),fontSize: 10),),
                    ]
                  ),
                  SizedBox(height: 20,),
                  Card(
                    child: ListTile(
                      leading: CircleAvatar(backgroundColor: Color.fromRGBO(104, 96, 96, 0.898),),
                      title: Text("Title",style: TextStyle(color: Color.fromRGBO(0, 0, 0, 0.9),fontSize: 20),),
                    subtitle: Text("Important Note",style: TextStyle(color: Color.fromRGBO(0, 0, 0, 0.5),fontSize: 20),),
                    trailing: Column(
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.edit_calendar,color: Color.fromRGBO(0, 0, 0, 1),),
                            SizedBox(width: 5,),
                            Icon(Icons.delete,color: Color.fromRGBO(255, 0, 0, 1),),
                          ],
                        ),
                        Spacer(),
                        Text("10 Jan, 2023 10:15 pm,",style: TextStyle(color: Color.fromRGBO(0, 0, 0, 0.5),fontSize: 7),),
                      ],
                    ),
               
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: CircleAvatar(backgroundColor: Color.fromRGBO(104, 96, 96, 0.898),),
                      title: Text("Title",style: TextStyle(color: Color.fromRGBO(0, 0, 0, 0.9),fontSize: 20),),
                    subtitle: Text("Important Note",style: TextStyle(color: Color.fromRGBO(0, 0, 0, 0.5),fontSize: 20),),
                    trailing: Column(
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.edit_calendar,color: Color.fromRGBO(0, 0, 0, 1),),
                            SizedBox(width: 5,),
                            Icon(Icons.delete,color: Color.fromRGBO(255, 0, 0, 1),),
                          ],
                        ),
                        Spacer(),
                        Text("10 Jan, 2023 10:15 pm,",style: TextStyle(color: Color.fromRGBO(0, 0, 0, 0.5),fontSize: 7),),
                      ],
                    ),
               
                    ),
                  )
                ],
               ),
             ),
              Center(child: Text("Important",style: TextStyle(color: Color.fromRGBO(0, 0, 0, 0.9),fontSize: 24),)),
            ],
          ),
        ),
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(16.0),
          child: FloatingActionButton(
            onPressed: (){},
            backgroundColor: Color.fromRGBO(255, 255, 255, 1),
            child: Icon(Icons.add,color: Color.fromRGBO(0, 0, 0, 0.9),),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
          ),
        ),
        
      ),
    );;
  }
}