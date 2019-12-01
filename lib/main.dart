import 'package:flutter/material.dart';

import './email.dart' as email;
import './music.dart' as music;
import './shopping.dart' as shopping;
import './telepon.dart' as telepon;

void main(){
  runApp(new MaterialApp(
   title: "Tampilan Tab Bar",
   home: new Home(),
  ));
}

class  Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController controller;

  @override

  void initState(){
    controller = new TabController(vsync: this, length: 4);
    super.initState();
  }

  @override
  void dispose(){
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.blue,
         title: new Text("Belajar Flutter "),
           bottom: new TabBar(
             controller: controller,
             tabs: <Widget>[
              new Tab(icon: new Icon(Icons.email),),
              new Tab(icon: new Icon(Icons.queue_music),),
              new Tab(icon: new Icon(Icons.shopping_cart),),
              new Tab(icon: new Icon(Icons.phone_android),), 
             ],
        ),
      ),

      body: new TabBarView(
        controller: controller,
        children: <Widget>[
          new email.Email(),
          new music.Music(),
          new shopping.Shopping(),
          new telepon.Telepon()
          
        ],
    
      ),
    
      
    );
    
  }
}