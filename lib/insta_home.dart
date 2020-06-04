import 'package:flutter/material.dart';
import 'package:instagram/insta_Body.dart';
import 'package:instagram/insta_Body.dart';
class InstaHome extends StatelessWidget {
  final topbar = AppBar(
backgroundColor: Color(0xfff8faf8),
centerTitle: true,
    elevation: 1,
    leading: Icon(Icons.camera_alt),
    title: Image(image: AssetImage('images/insta_logo.png'),height: 45,),
    actions: <Widget>[
      Padding(padding: const EdgeInsets.only(right: 12),child: Icon(Icons.send),),
    ],
  );
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
appBar: topbar ,
      body:InstaBody(),
      bottomNavigationBar: Container(
        color: Colors.white,
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(icon: Icon(Icons.home,color: Colors.black,), onPressed: null),
            IconButton(icon: Icon(Icons.search), onPressed: null),
            IconButton(icon: Icon(Icons.add_box), onPressed: null),
            IconButton(icon: Icon(Icons.favorite), onPressed: null),
            IconButton(icon: Icon(Icons.person), onPressed: null),


          ],
        ),
      ),
    );
  }
}