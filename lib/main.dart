
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
title: " MULTIPLE long list ",
home: Scaffold(
  appBar: AppBar(
    title: Text("LONG LIST"),),
  body: getListView()
),
  ));
}
List<String> getListElements(){
  var items = List<String>.generate(1000, (counter) => "item $counter");
return items;
}
Widget getListView(){
  var listItems= getListElements();
  var listView = ListView.builder(
itemBuilder:(context, index) {
    return ListTile(
      leading: Icon(Icons.arrow_right),
      title:Text(listItems[index]) ,
      onTap: (){
        debugPrint("${listItems[index]}was tapped");
      },
    );
}
  );
  return listView;
}