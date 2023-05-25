

import 'dart:ui';

import 'package:face_recoginition/custom_ui/ModelClasses.dart';
import 'package:flutter/material.dart';

import 'Widgets.dart';

class DetailScreen extends StatelessWidget{

  @override
  void initState() {
    //getData();
  }

  @override
  Widget build(BuildContext context) {
    final data = ModalRoute.of(context)!.settings.arguments as DetailList;
    var screenHeight = (window.physicalSize.longestSide / window.devicePixelRatio);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
             title: Text(
                data.name!,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
           leading:  IconButton(onPressed: (){
             Navigator.pop(context);
           }, icon: Icon(Icons.keyboard_backspace,color: Colors.white,)),
          ),

        body: Container(
            margin: EdgeInsets.all(8.0),
            child:Center(
              child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                            data.image!,
                            fit: BoxFit.fill,
                            height: 250,width: 250,),
                       Text(data.name!)
                      ],
                    ),
            )

        ),
      ),
    );
  }

}