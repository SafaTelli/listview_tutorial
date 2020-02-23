import 'package:flutter/material.dart';
import 'package:flutter_tutoriel1/android.dart';
import 'package:flutter_tutoriel1/detail.dart';

class ListAndroid extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ListAndroidState();
  }


}

class ListAndroidState extends State<ListAndroid>

{

  List<Android> _list = new List();
  ListAndroidState ()
  {
    _list.add(new Android("Pie","images/pie.jpg","9.0"));
    _list.add(new Android("Oreo","images/oreo.png","8.0"));
    _list.add(new Android("Nougat","images/nougat.jpg","7.0"));
    _list.add(new Android("Marshmallow","images/marsh.png","6.0"));
    _list.add(new Android("Lollipop ","images/lolipop.png","5.0"));
    _list.add(new Android("Pie","images/pie.jpg","9.0"));
    _list.add(new Android("Oreo","images/oreo.png","8.0"));
    _list.add(new Android("Nougat","images/nougat.jpg","7.0"));
    _list.add(new Android("Marshmallow","images/marsh.png","6.0"));
    _list.add(new Android("Lollipop ","images/lolipop.png","5.0"));

  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return
      Scaffold(
        appBar: AppBar(title : Text("Les versions d' Android"),
        backgroundColor: Colors.green,
        centerTitle: true,),
        body:ListView.builder(
            itemCount: _list.length,
            itemBuilder: (context,index) => ListTile(
              onTap: (){
                Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (context) => DetailPage( _list[index])),
                );
              },
              title: Text(_list[index].name,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
              subtitle: Text(_list[index].version),
              leading: Hero(tag : _list[index],child: Image(image: AssetImage(_list[index].image),width: 100,height: 100,),),
            )
        ) ,
      );
  }


}