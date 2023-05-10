import 'dart:ui';

import 'package:flutter/material.dart';

class OrderPage extends StatefulWidget {


  @override
  OrderScreen createState() => OrderScreen();
}

class OrderScreen extends State<OrderPage> {
  int menuItems=1;
  // Screen size in density independent pixels
  var screenWidth = (window.physicalSize.shortestSide / window.devicePixelRatio);
  var screenHeight = (window.physicalSize.longestSide / window.devicePixelRatio);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color.fromRGBO(171, 175, 48, 100),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title: Text("The Dessert Heaven - Pure Veg",style: TextStyle( color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold)),
          leading: Icon(Icons.arrow_back_outlined, color: Colors.black),
        ),
        body: Stack(
          children: [
            Card(
                margin: EdgeInsets.fromLTRB(15, 5, 15, 5),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),),
                shadowColor: Colors.greenAccent.shade100,color: Colors.lightGreen.shade50,
                borderOnForeground: true,
                child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child:Row(
                      children: [
                        Stack(
                          children: const [
                            Icon(
                              Icons.hexagon,
                              size: 25,
                              color: Colors.green,
                            ),
                            Positioned(
                                top: 5,
                                left: 5,
                                child: Icon(
                                  Icons.percent,
                                  size: 15,
                                  color: Colors.white,
                                ))
                          ],
                        ),
                        Text(
                          "₹80 saved! ",
                          style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.green),
                        ),
                        Text(
                          "with FREE delivery",
                          style: TextStyle(
                              fontSize: 15.0,
                              color: Colors.green),
                        ),
                      ],
                    )
                )),
            ListView(
              shrinkWrap: true,scrollDirection: Axis.vertical,
              children: [
                SizedBox(height: 50,),
                Card(
                  margin: EdgeInsets.fromLTRB(15, 15, 15, 5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),),
                  child:Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top:15.0,left:15),
                                child: Stack(
                                  children: const [
                                    Icon(
                                      Icons.square_outlined,
                                      size: 25,
                                      color: Colors.green,
                                    ),
                                    Positioned(
                                        top: 5,
                                        left: 5,
                                        child: Icon(
                                          Icons.circle,
                                          size: 15,
                                          color: Colors.green,
                                        ))
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top:15.0,left:8),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Rasmalai Cake",style: TextStyle(fontSize:14,fontWeight: FontWeight.bold)),
                                    Padding(
                                      padding: const EdgeInsets.only(top:3.0),
                                      child: Text("300 Grams (Serves 2-3)",style: TextStyle(fontSize:13,)),
                                    ),
                                    Row(
                                      children: const [
                                        Text("customize",style: TextStyle(fontSize:14,fontWeight: FontWeight.bold)),
                                        Icon(
                                          Icons.arrow_drop_down, size: 20, color: Colors.black,
                                        ),
                                      ],
                                    ),
                                  ],

                                ),
                              ),
                            ],
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top:15.0),
                            child: Card(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children:  [
                                  IconButton(icon:Icon(Icons.remove,size: 12,color: Colors.green,),
                                      onPressed: () {
                                        setState(() {
                                          if(menuItems!=0) menuItems=menuItems-1;
                                        });
                                      }),
                                  Padding(
                                    padding: EdgeInsets.all(3.0),
                                    child: Text(menuItems.toString(),style:TextStyle(fontWeight: FontWeight.bold,fontSize: 12,color: Colors.green )),
                                  ),
                                  IconButton(icon:Icon(Icons.add,size: 12,color: Colors.green), onPressed: () {
                                    setState(() {
                                      if(menuItems!=0) menuItems=menuItems+1;
                                    });
                                  },),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top:18.0,right: 8),
                            child: Text(
                              "₹459",style: TextStyle(fontSize:14,fontWeight: FontWeight.bold)
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Divider(),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Icon(Icons.add),
                            Padding(
                              padding: EdgeInsets.only(left:8.0),
                              child: Text("Add more items"),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Divider(),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:15.0,right: 15,bottom:15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text("Add cooking requests"),
                            Icon(Icons.add_circle_outline_sharp),
                          ],
                        ),
                      ),
                    ],
                  )
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text("Offers & Benefits",style: TextStyle( color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold)),
                ),
                Card(
                    margin: EdgeInsets.fromLTRB(15, 15, 15, 5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),),
                    child:Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top:15.0,left:15),
                                  child: Stack(
                                    children: const [
                                      Icon(
                                        Icons.hexagon,
                                        size: 25,
                                        color: Colors.deepOrange,
                                      ),
                                      Positioned(
                                          top: 5,
                                          left: 5,
                                          child: Icon(
                                            Icons.percent,
                                            size: 15,
                                            color: Colors.white,
                                          ))
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top:15.0,left:15),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: const [
                                      Text("WELCOME50",style: TextStyle(fontSize:15,fontWeight: FontWeight.bold)),
                                      Text("Save another ₹100 on this order",style: TextStyle(fontSize:15,)),
                                    ],

                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: Text(
                                "Apply",style: TextStyle(color:Colors.deepOrange,fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Divider(),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(bottom:8.0),
                                child: Text("View more coupons >"),
                              )
                            ],
                          ),
                        ),
                      ],
                    )
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: RichText(
                      text: TextSpan(children: const [
                    TextSpan(
                        text: "Tip Your Delivery Partner ",
                        style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold)),
                        WidgetSpan(child: Icon(Icons.info_outline,color: Colors.grey,size:18,))
                  ])),
                ),
                Card(
                    margin: EdgeInsets.fromLTRB(15, 10, 15, 5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Column(
                        children: [
                          Text("Thank your delivery partner by leaving them a tip. 100% of the tip will go to your delivery partner."),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children:  [
                              Card( child:Padding(
                                padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 20),
                                child: Text("₹20"),
                              )),

                              Container(
                                height: 50,
                                child: Stack(
                                  children: [
                                    Container(
                                      height: 50,
                                      child: Card(
                                        child:Padding(
                                        padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 20),
                                           child: Text("₹30"),
                                )),
                                    ),
                                    Positioned(bottom: 5,left:5,
                                        child: Container(
                                      color:Colors.deepOrange,
                                      child: Text("Most tipped",style: TextStyle(color: Colors.white,fontSize: 11)),
                                    )),

                                  ],
                                ),
                              ),
                              Card( child:Padding(
                                padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 20),
                                child: Text("₹50"),
                              )),
                              Card( child:Padding(
                                padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 20),
                                child: Text("Other"),
                              )),
                            ],
                          )
                        ],
                      ),
                    )),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text("Delivery Instructions",style: TextStyle( color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold)),
                ),
                Row(
                  children: [
                    delInstructCard(Icons.notifications_active,"Avoid \nringing bell",screenWidth),
                    delInstructCard(Icons.door_front_door,"Leave at \nthe door",screenWidth),
                    delInstructCard(Icons.mic_rounded,"Directions \nto reach",screenWidth),
                    delInstructCard(Icons.mobile_off,"Avoid \ncalling",screenWidth)
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text("Bill Details",style: TextStyle( color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold)),
                ),
                Card(
                  margin: EdgeInsets.all(10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding:const EdgeInsets.all(15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Item Total",style: TextStyle( color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold)),
                            Text("₹459",style: TextStyle( color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold)),
                          ],
                        ),
                        Padding(padding:EdgeInsets.all(3.0)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Delivery fee | 9.2 kms",style: TextStyle( color: Colors.grey,fontSize: 14,)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text( "₹80 ", style: TextStyle(fontSize: 15, color: Colors.black,fontWeight: FontWeight.bold, decoration: TextDecoration.lineThrough),),
                                Text("FREE",style: TextStyle( color: Colors.deepOrange,fontSize: 14,)),
                              ],
                            ),
                          ],
                        ),
                        Padding(padding:EdgeInsets.all(3.0)),
                        Text("FREE Delivery on your order!",style: TextStyle( color: Colors.grey,fontSize: 14,)),
                       // Padding(padding:EdgeInsets.only(top:25.0)),
                        Padding(
                          padding: const EdgeInsets.only(top:10.0,bottom:10),
                          child: Divider(),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text( "Delivery Tip ", style: TextStyle(fontSize: 15, color: Colors.black, ),),
                            Text("Add Tip",style: TextStyle( color: Colors.deepOrange,fontSize: 14,)),
                          ],
                        ),
                        Padding(padding:EdgeInsets.all(3.0)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Govt. Taxes & Other Charges",style: TextStyle( color: Colors.grey.shade700,fontSize: 14,decoration:TextDecoration.underline,decorationStyle: TextDecorationStyle.dotted,
                            )),
                            Text("₹100.32",style: TextStyle( color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold,)),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top:10.0,bottom:10),
                          child: Divider(),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("To Pay",style: TextStyle( color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold)),
                            Text("₹559",style: TextStyle( color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text("Review your order and address details to avoid cancellations",style: TextStyle( color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),softWrap: true,),
                ),
                Card(  margin: EdgeInsets.all(10),shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                         ),
                child:Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                          text: TextSpan(children: const [
                            TextSpan(
                                text: "Note: ",
                                style: TextStyle(color: Colors.pink, fontSize: 14, fontWeight: FontWeight.bold)),
                            TextSpan(text: "If you cancel within 60 seconds of placing your, a 100% refund will be issued. No refund for cancellations made after 60 seconds.",
                                          style: TextStyle(color: Colors.grey, fontSize: 14, fontWeight: FontWeight.bold) )
                          ])),
                      Padding(
                        padding: const EdgeInsets.only(top:10.0,bottom:10),
                        child: Text("Avoid cancellation as it leads to food wastage",style: TextStyle( color: Colors.grey,fontSize: 14,fontWeight: FontWeight.bold)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:10.0,bottom:5),
                        child: Text("READ CANCELLATION POLICY",style: TextStyle( color: Colors.deepOrange,fontSize: 15,fontWeight: FontWeight.bold,decoration:TextDecoration.underline,decorationStyle: TextDecorationStyle.dotted)),
                      ),

                    ],
                  ),
                ),
                 ),

                SizedBox(height: 100,)
              ],
            ),
            Positioned(
              bottom:0,
                child: Container(
                  width: screenWidth,
                  color: Colors.white,
                  padding: EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Almost There",
                        style: TextStyle(fontSize: 15.0, color: Colors.black),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom:5.0),
                        child: Text(
                          "Login/create account quickly to place order",
                          style: TextStyle(fontSize: 12.0, color: Colors.grey),
                        ),
                      ),
                      Container(
                        width: screenWidth,
                        color: Colors.white,
                        child: ElevatedButton(onPressed: (){},
                            style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.deepOrange)),
                            child: Text(
                                "Proceed with Phone Number"
                            )),
                      ),
                    ],
                  ),
                ))
          ],

        )
    );
  }}

Container delInstructCard(IconData icon, String instruction, double screenWidth){
  return Container(
    width:screenWidth/4,
    child: Card(
      semanticContainer: true,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      margin: EdgeInsets.all(10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(icon),
            Padding(
              padding: const EdgeInsets.only(top:8.0),
              child: Text(instruction,style: TextStyle( color: Colors.black,fontSize: 12,)),
            )
          ],
        ),
      ),),
  );
}