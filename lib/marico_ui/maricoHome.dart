import 'dart:ui';

import 'package:flutter/material.dart';

class MaricoHome extends StatefulWidget{
  @override
  State<MaricoHome> createState() {
    return _MaricoHome();
  }

}

class _MaricoHome extends State<MaricoHome> {
  var menuList1 = GeoList(number: "12/30", name: "Geo Adhered");


  @override
  Widget build(BuildContext context) {
    var screenWidth = (window.physicalSize.shortestSide / window.devicePixelRatio);

    List<GeoList> widgetList = [menuList1, menuList1, menuList1];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme:
        TextTheme(
          bodyLarge: TextStyle(color: Colors.white),
          bodyMedium: TextStyle(color: Colors.white),
          bodySmall: TextStyle(color: Colors.white),
        ),
      ),
      home: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color.fromRGBO(39, 68, 176, 100),
        ),
        child: SafeArea(
          child: Scaffold(
          drawer: Drawer(
            backgroundColor: Colors.white,
            child: DrawerColumn(),

          ),
            appBar: AppBar(
              backgroundColor: Color.fromRGBO(39, 68, 176, 100),
              elevation: 0.0,
              iconTheme: IconThemeData(color: Colors.white),
             // leading: IconButton(onPressed: () {DrawerColumn();}, icon: Icon(Icons.menu),),
              title: Center(child: Text("M", style: TextStyle(fontSize: 22,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),)),
              actions: [
                IconButton(
                    onPressed: () {}, icon: Icon(Icons.notifications_none)),
              ],
            ),
            body: Container(
                height: double.infinity,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(39, 68, 176, 100),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 18.0, vertical: 10),
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 25.0,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                                backgroundImage: NetworkImage(
                                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxtQq3PWBsaWqHj9fV5H2ZFkU8sXY_07uFi8yvA4uPZg&s"),
                                radius: 25),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0, top: 5),
                            child: Text("Marico User", style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                                fontWeight: FontWeight.w600),),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 5),
                        child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Colors.green)),
                          onPressed: () {},
                          child: Stack(
                            fit: StackFit.passthrough,
                            children: <Widget>[
                              Center(
                                heightFactor: 2,
                                child:
                                Text("Start of the Day",
                                ),
                              ),
                              Positioned.directional(
                                  textDirection: TextDirection.rtl,
                                  start: 10,
                                  top: 5,
                                  child:
                                  Icon(Icons.arrow_forward_ios, size: 20,)
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        // decoration: BoxDecoration(
                        //   boxShadow: [
                        //     new BoxShadow(
                        //       color: Colors.blueGrey,
                        //       blurRadius: 0.4,
                        //       offset: Offset(2.0, 2.0),
                        //       spreadRadius: 0.4,
                        //     ),
                        //   ],
                        // ),
                        child: Card(
                          elevation: 10,
                          margin: const EdgeInsets.all(1.0),
                          color: Color.fromRGBO(24, 18, 138, 100),
                          shadowColor: Colors.black,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Transactions", style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w300),),
                                IntrinsicHeight(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment
                                        .spaceAround,
                                    children: [
                                      Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(3.0),
                                            child: Text("100000"),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(3.0),
                                            child: Text("5000000"),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(3.0),
                                            child: Text("Achievement",
                                              style: TextStyle(fontSize: 11,
                                                color: Colors.white,),
                                            ),),
                                          Padding(
                                              padding: const EdgeInsets.all(3.0),
                                              child: Text("Target",
                                                style: TextStyle(fontSize: 11,
                                                  color: Colors.white,),
                                              )),
                                        ],
                                      ),
                                      Padding(padding: EdgeInsets.only(
                                          top: 8, bottom: 8),
                                        child: VerticalDivider(
                                            color: Colors.white),
                                      ),
                                      Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(3.0),
                                            child: Text("38"),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(3.0),
                                            child: Text("50"),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(3.0),
                                            child: Text("EC", style: TextStyle(
                                              fontSize: 11, color: Colors.white,),
                                            ),),
                                          Padding(
                                              padding: const EdgeInsets.all(3.0),
                                              child: Text("Universe",
                                                style: TextStyle(fontSize: 11,
                                                  color: Colors.white,),
                                              )),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Text("View transaction >", style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w300),),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 5),
                        child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(Color
                                  .fromRGBO(24, 18, 138, 100),)),
                          onPressed: () {},
                          child: Stack(
                            fit: StackFit.passthrough,
                            children: <Widget>[
                              Center(
                                heightFactor: 2,
                                child:
                                Text("End of the Day",
                                  style: TextStyle(color: Colors.lightBlue),
                                ),
                              ),
                              Positioned.directional(
                                  textDirection: TextDirection.rtl,
                                  start: 10,
                                  top: 5,
                                  child:
                                  Icon(Icons.arrow_forward_ios, size: 20,)
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:8.0,bottom:5),
                        child: Text("Geo Adherence"),
                      ),
                      Card(
                        elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        color: Color.fromRGBO(100, 92, 250, 100),
                        child:Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            detailCard("12/30", "Geo Adhered",screenWidth),
                            detailCard("12/30", "Not Geo \nAdhered",screenWidth),
                            detailCard("12/30", "Not Visited",screenWidth),

                          ],
                        )

                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:10.0,bottom:5),
                        child: Text("Today"),
                      ),
                      Card(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          color: Color.fromRGBO(100, 92, 250, 100),
                          child:Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  detailCard("1734", "BPM Achievement",screenWidth),
                                  detailCard("17/34", "BPD / Lines",screenWidth),
                                  detailCard("17/34", "PC / Lines",screenWidth),
                                ],
                              ),
                               Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  detailCard("1734", "BPM Achievement",screenWidth),
                                  detailCard("1734", "BPD / Lines",screenWidth),
                                  detailCard("17/34", "PC / Lines",screenWidth),
                                ],
                              ),

                            ],
                          )

                      )
                    ],
                  ),
                )),
            floatingActionButton: FloatingActionButton(
              backgroundColor: Colors.green,
              onPressed: (){},
              child: Icon(Icons.grid_view_rounded,color: Colors.white,),
            ),
          ),
        ),
      ),
    );
  }

  Container detailCard(String number, String name, double screenWidth) {
    return Container(
      width: screenWidth / 3.5,
      height: 90,
      child: Card(
        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        margin: EdgeInsets.all(10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(number, style: TextStyle(
          color: Colors.indigoAccent, fontSize: 14,fontWeight: FontWeight.bold)),
              Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: Text(name, style: TextStyle(
                  color: Colors.indigoAccent, fontSize: 12,), softWrap: true,),
              )
            ],
          ),
        ),),
    );
  }

  DrawerColumn() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 140,
          width: 170,
          decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topRight: Radius.circular(60),bottomRight: Radius.circular(60)),
            color: Colors.indigo
          ),
          child: Padding(
            padding: const EdgeInsets.only(left:28.0,top:15,bottom:15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 8.0, right: 18),
                      child: CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxtQq3PWBsaWqHj9fV5H2ZFkU8sXY_07uFi8yvA4uPZg&s"),
                          radius: 30),
                    ),
                    Positioned(
                      right: 2,
                      bottom: 1,
                      child: CircleAvatar(
                          radius: 15,
                          backgroundColor: Colors.white,child: const Icon(Icons.edit,color: Colors.blue,size: 15,)),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top:3.0),
                  child: Text("Marico User,",style: TextStyle(fontSize: 10,color: Colors.white,fontWeight: FontWeight.w700),),
                ),
                Text("1845/9,",style: TextStyle(fontSize: 10,color: Colors.white,),),
                Text("User Designation",style: TextStyle(fontSize: 10,color: Colors.white,),),
              ],
            ),
          ),
        ),
        ListView(
          shrinkWrap: true,
          children: [
            Card(
              elevation: 5,
              margin: EdgeInsets.all(10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              child:
              Container(
                  height: 40,
                  decoration: BoxDecoration(
                    border: Border(
                        left: BorderSide(color: Colors.indigo, width: 3)),
                    color: Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.home,color: Colors.indigo,),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Home",style: TextStyle(color:Colors.indigo),),
                    )
                  ],
                ),
              )),
            drawerCard(Icons.person,"My Profile"),
            drawerCard(Icons.article,"News"),
            drawerCard(Icons.menu_book_outlined,"FAQ"),
            drawerCard(Icons.contact_support_rounded,"Support Desk"),
            drawerCard(Icons.edit,"Change PIN"),
          ],
        ),
    Padding(
      padding: const EdgeInsets.only(top:110.0,left:10),
      child: Align(
      alignment: Alignment.bottomLeft,
      child:
      Container(
      // decoration: BoxDecoration(
      //      borderRadius: BorderRadius.all(Radius.circular(20),),
      //   color: Colors.indigo,),
                  width: 120,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.indigo,
                        side: BorderSide(width: 1, color: Colors.indigo),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                          20,
                        ))),
                    child:Row(
          children: [
            Icon(Icons.logout),
            Text("Logout")
          ],
        ) ,

          )
      )),
    )

      ],
    );
  }

  Card drawerCard(IconData icon, String title){
    return Card(
      elevation: 5,
      margin: EdgeInsets.all(10),
      child:
      // Container(
      //     height: 30,
      //     decoration: BoxDecoration(
      //       borderRadius: BorderRadius.all(Radius.circular(10),),
      //       border: Border(
      //           left: BorderSide(
      //         color: Colors.blue,
      //         width: 3,strokeAlign: BorderSide.strokeAlignInside
      //       )),
      //       color: Colors.white,
      //     ),
      //     child:
      Container(
      height: 40,
      decoration: BoxDecoration(
      border: Border(
      left: BorderSide(color: Colors.indigo, width: 3)),
      color: Colors.white,
      ),
      child:Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(icon,color: Colors.indigo,),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(title,style: TextStyle(color:Colors.indigo),),
          )
        ],
      ),)
    );
  }
}

class GeoList {
  String? number;
  String? name;
  GeoList(
  {required this.number,
  required this.name});
}