import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lumbung/profil.dart';
import 'package:lumbung/location.dart';
import 'package:lumbung/detail.dart';

class HomePage extends StatelessWidget{

  @override
  Widget build (BuildContext context){
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              ClipRRect(
              borderRadius: BorderRadius.only(bottomLeft:Radius.circular(35),bottomRight:Radius.circular(35)),
              child:
                Image.asset("images/home_page.jpg"),
            ),
              Positioned(
                top: 60,
                left: 45,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    new Text("All",style: TextStyle(fontSize: 40,fontWeight:FontWeight.bold,color: Colors.blue,fontFamily: 'Playfair Display'),),
                    new Text("About",style: TextStyle(fontSize: 40,fontWeight:FontWeight.bold,color: Colors.blue,fontFamily: 'Playfair Display'),),
                    new Text("Lumbung",style: TextStyle(fontSize: 40,fontWeight:FontWeight.bold,color: Colors.blue,fontFamily: 'Playfair Display'),)
                  ],
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(top: 57),
            child:new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                 FlatButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                        return Profil();
                    }));
                },
                  child: Card(
                    color: Colors.grey,
                    elevation: 10.0,
                    child: Container(
                      padding: EdgeInsets.all(32.0),
                      child: Column(
                        children: <Widget>[
                          new Icon(Icons.account_balance),
                          new Text(""),
                          new Text("Profil"),
                          new Text("Lumbung")
                        ],
                      ),
                    ),
                  ),
                ),
                FlatButton(
                  onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context){
                      return Detail();
                    }));
                  },
                  child: Card(
                    color: Colors.grey,
                    elevation: 10.0,
                    child: Container(
                      padding: EdgeInsets.all(32.0),
                      child: Column(
                        children: <Widget>[
                          new Icon(Icons.description),
                          new Text(""),
                          new Text("Detail"),
                          new Text("Lumbung")
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 40),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return Location();
                    }));
                  },
                  child: Card(
                    color: Colors.grey,
                    elevation: 10.0,
                    child: Container(
                      width: 287,
                      padding: EdgeInsets.all(32),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          new Icon(Icons.place),
                          new Text("   Location Lumbung",)
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}