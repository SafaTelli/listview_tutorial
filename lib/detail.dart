import 'package:flutter/material.dart';

import 'android.dart';

class DetailPage extends StatelessWidget
{
  Android android ;
  DetailPage(Android android)
  {
    this.android = android ;
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("Detail"),),
      body: Column(

        children: <Widget>[
          Center(child: Hero(tag: android, child: Image(image: AssetImage(android.image,),width: 200,height: 200,))) ,
          Text(android.name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
          Text(android.version)
        ],
      )
    );
  }


}