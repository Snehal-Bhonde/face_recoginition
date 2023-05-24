
import 'dart:ui';
import 'package:flutter/material.dart';

class QuizHome extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _QuizHome();
  }
}

class _QuizHome extends State<QuizHome>{
  int count=0;
  int maxCount=0;
  final List<IconData> _widget = [Icons.battery_charging_full_outlined,Icons.storage_sharp,Icons.phone_android_outlined,Icons.directions_walk,Icons.ads_click,Icons.laptop,Icons.adjust,Icons.article,Icons.email_outlined,Icons.calculate,Icons.launch_sharp];
  var classes=[FirstScreen(),SecondScreen(),ThirdScreen(),FourthScreen(),FifthScreen(),SixthScreen(),SeventhScreen(),EightScreen(),NinthScreen(),TenthScreen(),EleventhScreen()];
  @override
  Widget build(BuildContext context) {
    var screenWidth = (window.physicalSize.shortestSide / window.devicePixelRatio);
    return SafeArea(

      child: Scaffold(
       body:
          Stack(
          children: [
          Container(
          height: double.infinity,
          width: double.infinity,

       child:Row(
      children: [
        Container(
          color: Colors.indigo,
          width: screenWidth/6,
          child:
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top:8.0, bottom: 10),
                child: Icon(Icons.arrow_back_ios_new_outlined,color: Colors.white,),
              ),
              ListView.builder(
                shrinkWrap: true,
                  itemCount: _widget.length,
                  itemBuilder: (BuildContext context, int i) {
                    return
                    //   count==i?Padding(
                    //   padding: const EdgeInsets.all(3.0),
                    //   child: CircleAvatar(
                    //     radius: 22,backgroundColor: Colors.white,
                    //     child: CircleAvatar(
                    //       backgroundColor: count>=i?Colors.green:Colors.grey,
                    //       child: Icon(_widget[i],color: Colors.white),radius: 21,
                    //     ),
                    //   ),
                    // ):
                    //     GestureDetector(
                    //       behavior: HitTestBehavior.translucent,
                    //       onTap: (){
                    //         if(maxCount>=i){
                    //           setState(() {
                    //             count=i;
                    //             print("$maxCount   $count");
                    //           });
                    //          // print(count);
                    //         }
                    //       },
                    //       child: Padding(
                    //         padding: const EdgeInsets.all(3.0),
                    //         child: CircleAvatar(
                    //           backgroundColor: maxCount>=i?Colors.green:Colors.grey,
                    //           child: Icon(_widget[i],color: Colors.white,size: 18),
                    //         ),
                    //       ),
                    //     );  //,

                      count==i?Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: CircleAvatar(
                          radius: 22,backgroundColor: Colors.transparent,
                        ),
                      ):
                      Stack(
                        alignment: Alignment.center,
                        children: [

                        Container(
                        width:42,
                        height: 42,
                        child: GestureDetector(
                          behavior: HitTestBehavior.translucent,
                          onTap: (){
                            if(maxCount>=i){
                              setState(() {
                                count=i;
                                print("$maxCount   $count");
                              });
                              // print(count);
                            }
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: CircleAvatar(
                              radius: 20,
                              backgroundColor: maxCount>=i?Colors.green:Colors.grey,
                              child: Icon(_widget[i],color: Colors.white,size: 18),
                            ),
                          ),
                        ),
                      ),
                                      Visibility(
                                        visible: maxCount > i,
                                        child: Positioned(
                                          left: 45,
                                          top:2,
                                          child: CircleAvatar(
                                              radius: 6,
                                              backgroundColor: Colors.white,
                                              child: const Icon(
                                                Icons.check,
                                                color: Colors.black,
                                                size: 10,
                                              )),
                                        ),
                                      ),
                                    ]);
                        }),

            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(left:15),
          width:screenWidth-screenWidth/6,
          child: Scaffold(
            appBar: AppBar(title: Text("Home",style: TextStyle(color: Colors.black)),actions: [
              IconButton(onPressed: (){
                setState(() {
                  if(count>0) {
                    count=count-1;
                    print("$maxCount   $count");
                  }
                });
              },
              icon: Icon(Icons.arrow_back),color: Colors.indigo,),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  backgroundColor: Colors.indigo, radius: 18,
                  child: IconButton(onPressed: (){
                    setState(() {
                      if(count<10)
                      count=count+1;
                      if(count>maxCount)maxCount=count;
                      print("$maxCount   $count");
                    });
                  },
                  icon: Icon(Icons.arrow_forward_outlined),color: Colors.white),
                ),
              ),
            ],
              backgroundColor: Colors.transparent,elevation: 0,),

            body:  ListView.builder(
              shrinkWrap: true,
              itemCount: 1,
                itemBuilder: (BuildContext context,int i){
                  return classes[count];
                })

            //FirstScreen(),
          ),
        )
      ],
       ),
          ),

            Positioned(
                left: screenWidth / 6-20,
                top:40,
                child: Container(
                  width: 42,
                  margin: EdgeInsets.only(top:1),
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: _widget.length,
                      itemBuilder: (BuildContext context, int i) {
                        return count==i?
                        CircleAvatar(
                          radius: 21, backgroundColor: Colors.white,
                          child: CircleAvatar(
                              radius: 20,backgroundColor: Colors.green,
                              child: Icon(_widget[i],color: Colors.white,)
                          ),
                        ):CircleAvatar(
                          radius: 21, backgroundColor: Colors.transparent,);
                      }
                  ),
                ))
           ])
   ),
    );
  }

}

class FirstScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("First"),
    );
  }

}
class SecondScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Second"),
    );
  }

}class ThirdScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Third"),
    );
  }

}class FourthScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Fourth"),
    );
  }

}
class FifthScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Fifth"),
    );
  }

}
class SixthScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Six"),
    );
  }

}
class SeventhScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Seven"),
    );
  }

}
class EightScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Eight"),
    );
  }

}
class NinthScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Nine"),
    );
  }

}
class TenthScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Ten"),
    );
  }

}
class EleventhScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Eleven"),
    );
  }

}

class QuizHome2 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _QuizHome2();
  }
}
class _QuizHome2 extends State<QuizHome2> {
  int count = 4;
  int maxCount = 2;
  final List<IconData> _widget = [
    Icons.battery_charging_full_outlined,
    Icons.storage_sharp,
    Icons.phone_android_outlined,
    Icons.directions_walk,
    Icons.ads_click,
    Icons.laptop,
    Icons.adjust,
    Icons.article,
    Icons.email_outlined,
    Icons.calculate,
    Icons.launch_sharp
  ];
  var classes = [
    FirstScreen(),
    SecondScreen(),
    ThirdScreen(),
    FourthScreen(),
    FifthScreen(),
    SixthScreen(),
    SeventhScreen(),
    EightScreen(),
    NinthScreen(),
    TenthScreen(),
    EleventhScreen()
  ];

  @override
  Widget build(BuildContext context) {
    var screenWidth = (window.physicalSize.shortestSide /
        window.devicePixelRatio);
    return Scaffold(
        body: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              child: Row(
                children: [
                  Container(
                    width: screenWidth / 6,
                    height: double.infinity,
                    color: Colors.indigo,
                    child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: _widget.length,
                        itemBuilder: (BuildContext context, int i) {
                          return
                            count==i?Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: CircleAvatar(
                                radius: 22,backgroundColor: Colors.transparent,
                              ),
                            ):
                            Stack(
                              children: [

                            Container(
                              width:42,
                              height: 42,
                              child: GestureDetector(
                                behavior: HitTestBehavior.translucent,
                                onTap: (){
                                  if(maxCount>=i){
                                    setState(() {
                                      count=i;
                                      print("$maxCount   $count");
                                    });
                                    // print(count);
                                  }
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: CircleAvatar(
                                    radius: 20,
                                    backgroundColor: maxCount>=i?Colors.green:Colors.grey,
                                    child: Icon(_widget[i],color: Colors.white,size: 18),
                                  ),
                                ),
                              ),
                            ),
                            Visibility(
                              visible:maxCount>i,
                              child: Positioned(
                                left:23,
                                    child: CircleAvatar(
                                        radius: 6,
                                        backgroundColor: Colors.white,child: const Icon(Icons.check,color: Colors.black,size: 10,)),
                              ),
                            ),
                            ],
                          );
                        }),
                  ),
                  Container(
                    width: screenWidth - screenWidth / 6,
                    color: Colors.lightBlue,
                  ),

                ],
              ),
            ),
            Positioned(
                left: screenWidth / 6-20,
                child: Container(
                  width: 48,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: _widget.length,
                    itemBuilder: (BuildContext context, int i) {
                      return count==i?
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: CircleAvatar(
                          radius: 21, backgroundColor: Colors.white,
                          child: CircleAvatar(
                            radius: 20,backgroundColor: Colors.green,
                            child: Icon(_widget[i],color: Colors.white,)
                          ),
                        ),
                      ):Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: CircleAvatar(
                          radius: 21, backgroundColor: Colors.transparent,),
                      );
                    }
                  ),
                ))
          ],
        )
    );
  }
}