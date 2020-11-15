import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class Location extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        child: Column(
          children: [
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
                    child: Text("Location",style: TextStyle(
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
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    child: Image.asset("images/location.jpg"),
                  ),
                  Positioned(
                    top: 6,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Location_b(),
                        Location_b()
                      ],
                    ),
                  ),
                  Positioned(
                    right: 0.0,
                    top: 3,
                    child: Locationb(),
                  ),
                  Positioned(
                    right: 0.0,
                    top: 34,
                    child: Locationb(),
                  ),
                  Positioned(
                    top: 69,
                    right: 70,
                    child: Icon(
                    Icons.home_rounded,
                    color: Colors.grey,
                  ),
                  ),
                  Positioned(
                    top: 125,
                    right: 88,
                    child: Icon(
                      Icons.account_balance,
                      color: Colors.grey,
                    ),
                  )
                ],
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Center(
                    child: Text("Location Lumbung",style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),),
                  ),
                ),
                Center(
                  child: Container(
                    padding: EdgeInsets.only(top: 25,left: 25,right: 25),
                      child: new Text("Alamat      : Jln. Raya Kawali-Panjalu No. 258 Rt/Rw 002/004 Kecamatan Lumbung Kabupaten Ciamis Provinsi Jawa Barat",
                      style: TextStyle(
                        fontSize: 15,
                        letterSpacing: 3,
                        wordSpacing: 1
                      ),),
                  ),
                ),
              ],
            ),
            ],
        ),
      ),
    );
  }
}


class Location_b extends StatefulWidget{

  @override
  _Location createState() => _Location();
}

class _Location extends State<Location_b>{
  bool myLocation = false;
  @override
  Widget build(BuildContext context){
    return IconButton(
      icon: Icon(
        myLocation ? Icons.add_location_rounded : Icons.location_on_outlined,
        color: Colors.green,
      ),
      onPressed: (){
        setState(() {
          myLocation = !myLocation;
        });
      },
    );

  }
}

class Locationb extends StatefulWidget{

  @override
  _Locationb createState() => _Locationb();
}

class _Locationb extends State<Locationb>{
  bool myLocation = false;
  @override
  Widget build(BuildContext context){
    return IconButton(
      icon: Icon(
        myLocation ? Icons.add_location_rounded : Icons.location_on_outlined,
        color: Colors.red,
      ),
      onPressed: (){
        setState(() {
          myLocation = !myLocation;
        });
      },
    );

  }
}

