import 'package:flutter/material.dart';
class Test extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new TestState ();
  }

}

class TestState extends State<Test>
{

  String text = "" ;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Statefull Widget"),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Entrer votre nom"
              ),
              onChanged: (display)
              {
                setState(() {
                  text = display ;
                });
              },
            ),
            Text("Bonjour "+ text)
          ],
        ),

      ),

      
    );
  }


}