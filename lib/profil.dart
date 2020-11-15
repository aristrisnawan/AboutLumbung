import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Profil extends StatelessWidget{

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
                      child: Text("Lumbung",style: TextStyle(
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
                padding: EdgeInsets.only(top: 13),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  child: Image.asset("images/lumb.jpg")
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20,left: 28,right: 28),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    new Text("Profil Lumbung", style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),),
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Center(
                        child: new Text("Lumbung merupakan salah satu kecamatan yang berada di kabupaten ciamis. Sebelum menjadi kecamatan lumbung, lumbung masih termasuk ke kecamatan Kawali, namun seiring berjalannya waktu, akhirnya lumbung di pisahkan dari kecamatan Kawali dan menjadi kecmatan Lumbung."
                            , style: TextStyle(
                          fontSize: 17,
                          letterSpacing: 1,
                          color: Colors.grey,
                        ),),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 20),
                      child: new Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Card(
                            elevation: 10.0,
                            child: Container(
                              width: 295,
                              padding: EdgeInsets.only(top:20,bottom: 20,left: 0.0,right: 0.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  new Text("Like or Not like ?                    "),
                                  new  Favorite()
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
      ),
    );
  }
}

class Favorite extends StatefulWidget{

  @override
  _FavoriteState createState() =>  _FavoriteState();
}

class _FavoriteState extends State<Favorite>{

  bool like = false;

  @override
  Widget build(BuildContext context){
    return IconButton(
      icon: Icon(
        like ? Icons.favorite : Icons.favorite_border,
        color: Colors.red,
      ),
      onPressed: (){
        setState(() {
          like = !like;
        });
      },
    );
  }
}