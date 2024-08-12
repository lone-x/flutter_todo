

import 'dart:io' ;

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:todo/controller/notescontroller.dart';

class inputScreen extends StatefulWidget {
  int index;
 inputScreen({super.key, required this.index});
 
  @override
  State<inputScreen> createState() => _inputScreenState();
}

class _inputScreenState extends State<inputScreen> {
   final title = TextEditingController();
    final descripton = TextEditingController();
     File ? pickedImage;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
   if(widget.index != -1){
     title.text= noteslist[widget.index]['title'];
     descripton.text= noteslist[widget.index]['description'];
   }
  }
  @override

  Widget build(BuildContext context) {
   
    return Scaffold(
      backgroundColor: Color.fromRGBO(246, 236, 201, 1),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Stack(children: [
              CircleAvatar(
                radius: 65,
                backgroundColor: Colors.white,
                backgroundImage: pickedImage != null ? FileImage(pickedImage!) : AssetImage("assets/Rectangle5.png"),
              ),
              Positioned(
                top: 90,
                left: 90,
                child: CircleAvatar(
                    radius: 20,
                    backgroundColor: Color.fromARGB(255, 179, 179, 179),
                    child: IconButton(
                      onPressed: () async {
                        final ImagePicker picker = ImagePicker();
                        final XFile? image = await picker.pickImage(
                            source: ImageSource.gallery);
                        if (image != null) {
                          pickedImage = File(image.path);
                          setState(() {});
                        }
                       
                      },
                      icon: Icon(Icons.add),
                    )),
              )
            ]),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(16),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Title',
                  
                ),
                controller: title,
                ),
         
              ),
            
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(16),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Description',
                ),
                controller: descripton,
              ),
            ),
            Expanded(child: SizedBox()),
            Container(
                padding: EdgeInsets.all(16),
                child: ElevatedButton(
                    onPressed: () {
                      if (pickedImage == null) {
                        pickedImage = File("assets/Rectangle5.png");
                      }
                      if(widget.index==-1){
                           addnotes(title: title.text, description: descripton.text, date:DateTime.now().toString(), bookmark: false, image: pickedImage!);
                      }
                      else{
                        editnodes(widget.index, title: title.text, description: descripton.text, date:DateTime.now().toString(), bookmark: noteslist[widget.index]['bookmark'], image: pickedImage!);
                      }
                   
                      Navigator.pop(context);

                    },
                    child: Text(
                      "Save",
                      style: TextStyle(
                          fontFamily: "sitara",
                          fontSize: 20,
                          color: Color.fromARGB(255, 0, 0, 0)),
                    ),
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        padding: EdgeInsets.only(
                            left: 100, right: 100, top: 16, bottom: 16),
                        side: BorderSide(
                            width: 1.5, color: Color.fromARGB(255, 0, 0, 0)),
                        backgroundColor: Color.fromRGBO(246, 236, 201, 1)))),
            SizedBox(height: 20)
          ],
        ),
      ),
    );
  }
}
