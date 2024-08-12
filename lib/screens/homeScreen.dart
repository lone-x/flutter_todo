import 'package:flutter/material.dart';
import 'package:todo/controller/notescontroller.dart';
import 'package:todo/screens/inputScreen.dart';
import 'package:todo/screens/viewScreen.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    List imp_list= noteslist.where((element) => element['bookmark'] == true).toList();
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
        body:
         Container(
          color: Color.fromRGBO(0, 0, 0, 0.9),
          child:  TabBarView(
            children: [
             Padding(
               padding: EdgeInsets.all(16.0),
               child: Column(
                
                children: [
                   SizedBox(height: 20,),
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: noteslist.length, itemBuilder: (context, index) {
                    return Card(
                    child: ListTile(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Viewscreen(index: index,), )).then((value) => setState((){}));
                      },
                      leading: CircleAvatar(backgroundImage: FileImage(noteslist[index]['image']),),
                      title: Text(noteslist[index]['title'],style: TextStyle(color: Color.fromRGBO(0, 0, 0, 0.9),fontSize: 20),),
                    subtitle: Text(noteslist[index]['description'],style: TextStyle(color: Color.fromRGBO(0, 0, 0, 0.5),fontSize: 20),),
                    trailing: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            GestureDetector(
                              onTap: () {
                                noteslist[index]['bookmark']=!noteslist[index]['bookmark'];
                                setState(() {
                                  
                                });
                              },
                              child: Icon(noteslist[index]['bookmark']?Icons.bookmark_outlined:Icons.bookmark_outline,)),
                            SizedBox(width: 5,),
                            GestureDetector(child: Icon(Icons.edit_calendar,color: Color.fromRGBO(0, 0, 0, 1),),
                            
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => inputScreen(index: index,), )).then((value) => setState((){}));
                            }),
                            SizedBox(width: 5,),
                            GestureDetector(child: Icon(Icons.delete,color: Color.fromRGBO(255, 0, 0, 1),),onTap: (){
                              deletenotes(index);
                              setState(() {
                                
                              });
                            },),
                          ],
                        ),
                        Spacer(),
                        Text(noteslist[index]['date'],style: TextStyle(color: Color.fromRGBO(0, 0, 0, 1),fontSize: 7),),

                      ],
                    ),
               
                    ),
                  );
                  SizedBox(height: 20,);
                 
                  },
                  ),
                  
                 
                ],
               ),
             ),
             Padding(
               padding: EdgeInsets.all(16.0),
               child: Column(
                
                children: [
                   SizedBox(height: 20,),
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: imp_list.length, itemBuilder: (context, index) {
                    return Card(
                    child: ListTile(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Viewscreen(index: index,), )).then((value) => setState((){}));
                      },
                      leading: CircleAvatar(backgroundColor: Color.fromRGBO(104, 96, 96, 0.898),),
                      title: Text(imp_list[index]['title'],style: TextStyle(color: Color.fromRGBO(0, 0, 0, 0.9),fontSize: 20),),
                    subtitle: Text(imp_list[index]['description'],style: TextStyle(color: Color.fromRGBO(0, 0, 0, 0.5),fontSize: 20),),
                    trailing: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            GestureDetector(
                              onTap: () {
                                imp_list[index]['bookmark']=!noteslist[index]['bookmark'];
                                setState(() {
                                  
                                });
                              },
                              child: Icon(imp_list[index]['bookmark']?Icons.bookmark_outlined:Icons.bookmark_outline,)),
                            SizedBox(width: 5,),
                            GestureDetector(child: Icon(Icons.edit_calendar,color: Color.fromRGBO(0, 0, 0, 1),),
                            
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => inputScreen(index: index,), )).then((value) => setState((){}));
                            }),
                            SizedBox(width: 5,),
                            GestureDetector(child: Icon(Icons.delete,color: Color.fromRGBO(255, 0, 0, 1),),onTap: (){
                              deletenotes(index);
                              setState(() {
                                
                              });
                            },),
                          ],
                        ),
                        Spacer(),
                        Text(noteslist[index]['date'],style: TextStyle(color: Color.fromRGBO(0, 0, 0, 1),fontSize: 7),),

                      ],
                    ),
               
                    ),
                  );
                  SizedBox(height: 20,);
                 
                  },
                  ),
                  
                 
                ],
               ),
             ),
              
            ],
          ),
        ),
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(16.0),
          child: FloatingActionButton(
            onPressed: (){
              Navigator.push(context,MaterialPageRoute(builder: (context) => inputScreen(index: -1,))).then((value) => setState((){}));
            },
            backgroundColor: Color.fromRGBO(255, 255, 255, 1),
            child: Icon(Icons.add,color: Color.fromRGBO(0, 0, 0, 0.9),),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
          ),
        ),
        
      ),
    );
  }
}
