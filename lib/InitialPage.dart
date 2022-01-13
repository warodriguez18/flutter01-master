import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter001/main.dart';
import 'dart:async';
import 'header.dart';

class InitialPage extends StatelessWidget {

  const InitialPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {


    return Scaffold(

      backgroundColor: Colors.amberAccent,
      body: Container(
        child: Stack(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Center(
                  //child: Image.asset("assets/img/ic_logo.png",width: MediaQuery.of(context).size.width/2,height: 200),
                  child: Text("Holaa mundo :)"),
                ),
                Padding(
                    padding: EdgeInsets.only(top: 100),
                ),
                Center(
                  child: ElevatedButton(
                    child: Text("Ir a la siguiente"),
                    style: ElevatedButton.styleFrom(primary: Colors.deepOrange, onPrimary: Colors.white, elevation: 5, shadowColor: Colors.black),
                    onPressed: ()async {
                      await new Future.delayed(const Duration(seconds: 1));
                      Navigator.push(context, new MaterialPageRoute(builder: (__) => new Header()));
                    },
                      /*{
                      Navigator.pushNamed(context, "/cabecera");
                      print("se presiono el botton");
                    },*/
                    onLongPress: (){
                      print("Long hello raiced button");
                    },
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
