
import 'dart:io';

import 'package:flutter/material.dart';

List<Map>noteslist = [];

void addnotes({required String title,required String description,required String date,required bool bookmark,required File image}){
  Map notes = {
    'title': title,
    'description': description,
    'date': date,
    'bookmark': bookmark ,
    'image': image
  };
  noteslist.add(notes);
  print(noteslist);

}
void deletenotes(int index){
  noteslist.removeAt(index);
}
void editnodes(int index,{required String title,required String description,required String date,required bool bookmark,required File image}){
  noteslist[index]['title'] = title;
  noteslist[index]['description'] = description;
  noteslist[index]['date'] = date;
  noteslist[index]['bookmark'] = bookmark;
  noteslist[index]['image'] = image;
}