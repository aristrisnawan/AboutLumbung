import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Detail extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            SafeArea(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back_ios_sharp,color: Colors.grey,),
                    onPressed: (){
                      Navigator.pop(context);
                    },
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 90.0),
                    child: Text("Detail",style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                      letterSpacing: 2.5,
                      shadows:[
                        Shadow (
                          blurRadius: 9.0,
                          offset: Offset(4,6),
                          color: Colors.grey,
                        ),
                      ],
                    ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Stack(
                    children: [
                      Image.asset("images/detail.jpg"),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Card(
                    child: Container(
                      padding: EdgeInsets.all(32.0),
                      child: Column(
                        children: [
                          Text("Distribusi Penduduk"),
                          Text(""),
                          Text("2,50")
                        ],
                      ),
                    ),
                  ),
                  Card(
                    child: Container(
                      padding: EdgeInsets.all(32.0),
                      child: Column(
                        children: [
                          Text("Luas Wilayah"),
                          Text(""),
                          Text("24,84 ")
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Card(
                    child: Container(
                      padding: EdgeInsets.all(32.0),
                      child: Column(
                        children: [
                          Text("Jumlah Penduduk"),
                          Text(""),
                          Text("34584 ")
                        ],
                      ),
                    ),
                  ),
                  Card(
                    child: Container(
                      padding: EdgeInsets.all(32.0),
                      child: Column(
                        children: [
                          Text("Jumlah Desa"),
                          Text(""),
                          Text("8")
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}