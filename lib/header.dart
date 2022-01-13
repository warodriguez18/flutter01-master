import 'package:flutter/material.dart';
import 'package:flutter001/BackWheater.dart';

class Header extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build


    final button1 = new ElevatedButton(
      child: Text("Ir a la pagina inicio"),
      style: ElevatedButton.styleFrom(primary: Colors.deepOrange, onPrimary: Colors.white, elevation: 5, shadowColor: Colors.black),
      onPressed: (){
        Navigator.pushNamed(context, "/inicio");
        print("Ir al home");
      },
      onLongPress: (){
        print("Long hello raiced button");
      },
    );


    return new Scaffold(
      body: new Stack(
        children: <Widget>[
          new BackWheater(),
          new Container(
            alignment: Alignment.center,
            margin:  new EdgeInsets.only(
              top: 50.0
            ),
            
            child: new Column(
              children: <Widget>[
                new Text(
                  "Miercoles",
                  style: const TextStyle(
                    fontSize: 55.0,
                    color: Color(0xFFeba800),
                    fontWeight: FontWeight.w600
                  ),
                ),
                button1
              ],
            ),
          )
        ],
      ),
    );
  }

}