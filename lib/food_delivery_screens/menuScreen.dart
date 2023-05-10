import 'dart:ui';
import 'package:flutter/material.dart';

class MenuPage extends StatefulWidget {
  @override
  MenuScreen createState() => MenuScreen();
}

class MenuScreen extends State<MenuPage> {
  int menuItems = 0;
  var screenWidth = (window.physicalSize.shortestSide /
      window.devicePixelRatio);
  var screenHeight = (window.physicalSize.longestSide / window.devicePixelRatio);
  List<MenuList> menuList=[];

  CakeWeight? _radioValue1;


  @override
  void initState() {
    getList();
  }

  getList(){
    Lenders lenders= Lenders(id:1,lenderName: "Bajaj",cat: 369,roi: 9,maxLimit: 30000,minLimit: 10000);
    CakeWeight weight1=CakeWeight(id: 1,cakeWt: "300 grams",price: 459,serving: "Serves 2-3");
    CakeWeight weight2=CakeWeight(id: 2,cakeWt: "500 grams",price: 649,serving: "Serves 4-6");
    CakeWeight weight3=CakeWeight(id: 3,cakeWt: "1Kg",price: 999,serving: "Serves 9-10");
    List<Candles> candles=[Candles(candleId: 1,price:40, candleName:"Candle for me",isSelected: false),Candles(candleId: 2,price:1, candleName:"Knife and candle",isSelected: false),Candles(candleId: 3,price:179, candleName:"Happy birthday Candle",isSelected: false),Candles(candleId: 4,price:35, candleName:"Sparkle Candle",isSelected: false),Candles(candleId: 5,price:65, candleName:"Magic Candle",isSelected: false),Candles(candleId: 6,price:119, candleName:"Flower Candle",isSelected: false)];
    final list=[
     MenuList(id: 1, name: "Rasmalai Cake", price: 459, quantity: 0, image: "assets/rasmalaiCake.jpg", rating: 4, reviewCount: 14, extraInfo: "Bestseller", lenders: [lenders], cakeWeight: [weight1,weight2,weight3], candles: candles),
    // MenuList(id: 2, name: "Cotton Candy Cake", price: 489, quantity: 0, image: "assets/cottonCandyCake.jpg", rating: 3.5, reviewCount: 12, extraInfo: "Must try", lenders: [lenders], cakeWeight: []),
     //MenuList(id: 3, name: "Flower Cake", price: 439, quantity: 0, image: "assets/flowerCake.jpg", rating: 3.8, reviewCount: 9, extraInfo: "Bestseller", lenders: [lenders], cakeWeight: []),
    // MenuList(id: 4, name: "Heart Shaped Cake", price: 559, quantity: 0, image: "assets/heartShapedCake.jpg", rating: 4.2, reviewCount: 24, extraInfo: "Bestseller", lenders: [lenders], cakeWeight: []),
    // MenuList(id: 5, name: "Chocolate Cake", price: 489, quantity: 0, image: "assets/chocoCake.jpg", rating: 3.7, reviewCount: 29, extraInfo: "Must try", lenders: [lenders], cakeWeight: []),
    ];
    setState(() {
      menuList=list;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: Icon(Icons.arrow_back_outlined, color: Colors.black),
      ),
      body: Container(
        color: Colors.white,
        height: double.infinity,
        child: ListView(
          shrinkWrap: true,
          children: [
            Container(
              padding: EdgeInsets.only(bottom: 5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25),
                  ),
                  color: Colors.grey.shade50),
              child: Card(
                margin: EdgeInsets.fromLTRB(15, 0, 15, 15),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "The Dessert Heaven - Pure Veg",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                              softWrap: true,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Align(
                                    alignment: Alignment.topRight,
                                    child: Icon(
                                      Icons.share,
                                      color: Colors.grey,
                                    )),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Align(
                                    alignment: Alignment.topRight,
                                    child: Icon(
                                      Icons.favorite_border,
                                      color: Colors.grey,
                                    )),
                              )
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.stars_rounded,
                            color: Colors.green,
                          ),
                          Text("4.2(100 ratings) ",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold)),
                          Icon(
                            Icons.info_outline,
                            color: Colors.grey,
                            size: 20,
                          ),
                          Icon(
                            Icons.stop,
                            color: Colors.black,
                            size: 10,
                          ),
                          Text(" ₹300 for two",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold)),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 3.0, bottom: 3),
                        child: Text(
                          "Bakery, Desserts",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                        ),
                      ),
                      Row(
                        children: const [
                          Text("Outlet     ",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold)),
                          Text(
                            "Nerul",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          ),
                          Icon(
                            Icons.arrow_drop_down_sharp,
                            color: Colors.pink,
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          Text("45 mins  ",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold)),
                          Text(
                            "Delivery to Ulwe",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          ),
                          Icon(
                            Icons.arrow_drop_down_sharp,
                            color: Colors.pink,
                          ),
                        ],
                      ),
                      Divider(),
                      Row(
                        children: const [
                          Icon(
                            Icons.info,
                            color: Colors.orange,
                          ),
                          Text("9.2 km | ",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold)),
                          Text(
                            "₹80 ",
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.grey,
                                decoration: TextDecoration.lineThrough),
                          ),
                          Text(
                            "Free Delivery on your order",
                            style: TextStyle(fontSize: 15, color: Colors.grey),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Card(
                margin: EdgeInsets.fromLTRB(15, 10, 15, 15),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                shadowColor: Colors.grey,
                borderOnForeground: true,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                          backgroundColor: Colors.pink,
                          backgroundImage: NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHAwAF-eVrY_DDsnwvDgjx5QFfNxcDfxrj4TVtPLnemw&s")),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "20% off upto ₹200",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                            softWrap: true,
                          ),
                          Row(
                            children: const [
                              Text(
                                "USE INDUSIND20  |  ",
                                style:
                                TextStyle(fontSize: 12, color: Colors.grey),
                                softWrap: true,
                              ),
                              //VerticalDivider(color: Colors.grey,thickness: 1),
                              Text(
                                "ABOVE ₹600",
                                style:
                                TextStyle(fontSize: 12, color: Colors.grey),
                                softWrap: true,
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "5/5",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.deepOrange),
                            softWrap: true,
                          ),
                          Row(
                            children: const [
                              Icon(Icons.circle, size: 10, color: Colors.grey),
                              Icon(Icons.circle, size: 10, color: Colors.grey),
                              Icon(Icons.circle,
                                  size: 10, color: Colors.deepOrange),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                )),
            Align(
              alignment: Alignment.center,
              child: RichText(
                text: const TextSpan(
                  style: TextStyle(
                      fontSize: 15.0,
                      //fontWeight: FontWeight.bold,
                      color: Colors.black),
                  children: [
                    WidgetSpan(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 2.0),
                        child: Icon(
                          Icons.linear_scale_outlined,
                          size: 20,
                        ),
                      ),
                    ),
                    TextSpan(text: ' MENU '),
                    WidgetSpan(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 2.0),
                        child: Icon(
                          Icons.linear_scale_outlined,
                          size: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText: 'Search for dishes',
                  fillColor: Colors.grey.shade50,
                  filled: true,
                  isDense: true,
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.search),
                    onPressed: () {},
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Icon(
                    Icons.energy_savings_leaf,
                    color: Colors.green.shade800,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    "Pure Veg",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.green.shade800,
                        fontWeight: FontWeight.bold),
                    softWrap: true,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: SizedBox(
                    width: 130,
                    child: TextField(
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.black,
                      ),
                      decoration: InputDecoration(
                        hintText: 'Bestseller',
                        fillColor: Colors.grey.shade50,
                        filled: true,
                        isDense: true,
                        suffixIcon: IconButton(
                          icon: const Icon(
                            Icons.close,
                            size: 15,
                            color: Colors.black,
                          ),
                          onPressed: () {},
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          //borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Divider(),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Recommended(4)",
                    style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  Icon(
                    Icons.arrow_drop_down,
                    size: 25,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
            /*Container(
              //height:250,color: Colors.green,
              child: Padding(
                  padding: EdgeInsets.all(18),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Stack(
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
                              Text(
                                "Bestseller",
                                style: TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.pink),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                              "Rasmalai Cake",
                              style: TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                              "₹459",
                              style: TextStyle(
                                  fontSize: 15.0, color: Colors.black),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.star,
                                  size: 15,
                                  color: Colors.orangeAccent,
                                ),
                                Icon(
                                  Icons.star,
                                  size: 15,
                                  color: Colors.orangeAccent,
                                ),
                                Icon(
                                  Icons.star,
                                  size: 15,
                                  color: Colors.orangeAccent,
                                ),
                                Icon(
                                  Icons.star,
                                  size: 15,
                                  color: Colors.orangeAccent,
                                ),
                                Icon(
                                  Icons.star_half,
                                  size: 15,
                                  color: Colors.orangeAccent,
                                ),
                                Text(
                                  " 4.4",
                                  style: TextStyle(
                                      fontSize: 15.0,
                                      color: Colors.orangeAccent),
                                ),
                                Text(
                                  "(14)",
                                  style: TextStyle(
                                      fontSize: 15.0, color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            //height: 20, width: 20,
                            padding: EdgeInsets.all(0),
                            margin: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.grey.shade700, width: 1),
                                color: Colors.white,
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(15)),
                            child: TextButton(
                              child: Text("More Details >"),
                              //style: ButtonStyle(backgroundColor: Colors.pink.shade900),
                              style: TextButton.styleFrom(
                                  foregroundColor: Colors.grey.shade700,
                                  textStyle: const TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold)),
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 180,
                        width: 150,
                        color: Colors.transparent,
                        child: Stack(
                          children: [
                            Container(
                              height: 150,
                              width: 150,
                              child: Card(
                                elevation: 10,
                                semanticContainer: true,
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                child: Image.network(
                                    "https://bakewithshivesh.com/wp-content/uploads/2021/04/IMG_3929-1638x2048.jpg",
                                    fit: BoxFit.fill,
                                    height: 130),
                              ),
                            ),
                            Positioned(
                              top: 130,
                              left: 15,
                              child: Container(
                                width: 120,
                                height: 40,
                                padding: EdgeInsets.all(0),
                                margin: EdgeInsets.all(0),
                                color: Colors.transparent,
                                child: Card(
                                  elevation: 10,
                                  semanticContainer: true,
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  child: TextButton(
                                    child: Text("ADD +"),
                                    //style: ButtonStyle(backgroundColor: Colors.pink.shade900),
                                    style: TextButton.styleFrom(
                                        foregroundColor: Colors.green.shade700,
                                        textStyle: const TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold)),
                                    onPressed: () {},
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  )),
            ),*/
            ListView.builder(
                shrinkWrap: true,
                itemCount: menuList.length,
                itemBuilder: (BuildContext context, int i) {
                  return Container(
                    //height:250,color: Colors.green,
                    child: Padding(
                        padding: EdgeInsets.all(18),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Stack(
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
                                    Text(
                                        menuList[i].extraInfo!,//"Bestseller",
                                      style: TextStyle(
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.pink),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Text(
                                    menuList[i].name!,//"Rasmalai Cake",
                                    style: TextStyle(
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Text(
                                    "₹${menuList[i].price!}",
                                    style: TextStyle(
                                        fontSize: 15.0, color: Colors.black),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Row(
                                    children:  [
                                      Icon(
                                        Icons.star,
                                        size: 15,
                                        color: Colors.orangeAccent,
                                      ),
                                      Icon(
                                        Icons.star,
                                        size: 15,
                                        color: Colors.orangeAccent,
                                      ),
                                      Icon(
                                        Icons.star,
                                        size: 15,
                                        color: Colors.orangeAccent,
                                      ),
                                      Icon(
                                        Icons.star,
                                        size: 15,
                                        color: Colors.orangeAccent,
                                      ),
                                      Icon(
                                        Icons.star_half,
                                        size: 15,
                                        color: Colors.orangeAccent,
                                      ),
                                      Text(
                                        menuList[i].rating.toString()!,//" 4.4",
                                        style: TextStyle(
                                            fontSize: 15.0,
                                            color: Colors.orangeAccent),
                                      ),
                                      Text(
                                        "(${menuList[i].reviewCount!})",
                                        style: TextStyle(
                                            fontSize: 15.0,
                                            color: Colors.black),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  //height: 20, width: 20,
                                  padding: EdgeInsets.all(0),
                                  margin: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.grey.shade700,
                                          width: 1),
                                      color: Colors.white,
                                      shape: BoxShape.rectangle,
                                      borderRadius: BorderRadius.circular(15)),
                                  child: TextButton(
                                    child: Text("More Details >"),
                                    //style: ButtonStyle(backgroundColor: Colors.pink.shade900),
                                    style: TextButton.styleFrom(
                                        foregroundColor: Colors.grey.shade700,
                                        textStyle: const TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold)),
                                    onPressed: () {},
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              height: 180,
                              width: 150,
                              color: Colors.transparent,
                              child: Stack(
                                children: [
                                  Container(
                                    height: 150,
                                    width: 150,
                                    child: Card(
                                      elevation: 10,
                                      semanticContainer: true,
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius.circular(15.0),
                                      ),
                                      child: Image.asset(
                                          menuList[i].image!,
                                          fit: BoxFit.fill,
                                          height: 130),
                                    ),
                                  ),
                                  Positioned(
                                    top: 130,
                                    left: 15,
                                    child: Container(
                                      width: 120,
                                      height: 40,
                                      padding: EdgeInsets.all(0),
                                      margin: EdgeInsets.all(0),
                                      color: Colors.transparent,
                                      child: Card(
                                        elevation: 10,
                                        semanticContainer: true,
                                        clipBehavior:
                                        Clip.antiAliasWithSaveLayer,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                          BorderRadius.circular(15.0),
                                        ),
                                        child: menuList[i].quantity! == 0 ? TextButton(
                                          child: Text("ADD +"),
                                          //style: ButtonStyle(backgroundColor: Colors.pink.shade900),
                                          style: TextButton.styleFrom(
                                              foregroundColor:
                                              Colors.green.shade700,
                                              textStyle: const TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold)),
                                          onPressed: () {
                                            setState(() {
                                              menuList[i].quantity = menuList[i].quantity + 1;
                                              menuItems=menuItems+1;
                                              print("menuItems $menuItems");
                                            });
                                            showModalBottomSheet<dynamic>(
                                                isScrollControlled: true,
                                                context: context,
                                                builder: (
                                                    BuildContext context) {
                                                  return StatefulBuilder(
                                                  builder: (BuildContext context, StateSetter setState /*You can rename this!*/) {
                                                    return Wrap(
                                                      children: <Widget>[
                                                        Container(
                                                          height: screenHeight /1.5,
                                                          child: Container(
                                                              padding: EdgeInsets
                                                                  .all(15),
                                                              decoration: new BoxDecoration(
                                                                  color: Colors.grey.shade50,
                                                                  borderRadius: new BorderRadius.only(topLeft: const Radius.circular(25.0),
                                                                      topRight: const Radius.circular(25.0))),
                                                              //child: customizeWidget(menuList[i].cakeWeight)
                                                              child: Stack(
                                                                children: [
                                                                  ListView(
                                                                    shrinkWrap: true,
                                                                    children: [
                                                                      Row(
                                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Text("Rasmalai Cake - ₹459-₹989",
                                                                            style: TextStyle(color: Colors.grey, fontSize: 13),),
                                                                          Icon(Icons.cancel_outlined, size: 20,)
                                                                        ],
                                                                      ),
                                                                      Text("Customize as per your taste", style: TextStyle(
                                                                          color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),),
                                                                      Divider(),
                                                                      Text("Select Weight", style: TextStyle(
                                                                          color: Colors.black, fontSize: 13, fontWeight: FontWeight.bold),),
                                                                      Card(
                                                                        child: Padding(
                                                                          padding: const EdgeInsets.all(10.0),
                                                                          child: Column(
                                                                            children: [
                                                                              /*Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              vegIconStack(),
                              Padding(
                                padding: const EdgeInsets.only(left:8.0),
                                child: Text("300 Grams (Serves 2-3)",style: TextStyle(fontSize:13,color: Colors.grey,)),
                              ),
                            ],
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("₹459",style: TextStyle(fontSize:13,color: Colors.grey)),
                              Radio(
                                value: 1,
                                groupValue: _radioValue1,
                                activeColor: Colors.deepOrange,
                                onChanged:(value) {
                                  if (value != null) {
                                    setState(() {
                                      _radioValue1 = value;
                                      print("1 selected");
                                    });
                                  }
                                },
                              ),
                            ],
                          ),

                        ],
                      ),*/
                                                                              ListView.builder(
                                                                                  shrinkWrap: true,
                                                                                  itemCount: menuList[i].cakeWeight?.length,
                                                                                  itemBuilder: (BuildContext context, int j) {
                                                                                    return Row(
                                                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                      children: [
                                                                                        Row(
                                                                                          mainAxisAlignment: MainAxisAlignment.start,
                                                                                          children: [
                                                                                            vegIconStack(),
                                                                                            Padding(
                                                                                              padding: const EdgeInsets.only(left:8.0),
                                                                                              child: Text("${menuList[i].cakeWeight![j].cakeWt} (${menuList[i].cakeWeight![j].serving})",style: TextStyle(fontSize:13,color: Colors.grey,)),
                                                                                            ),
                                                                                          ],
                                                                                        ),

                                                                                        Row(
                                                                                          mainAxisAlignment: MainAxisAlignment.start,
                                                                                          children: [
                                                                                            Text("₹ ${menuList[i].cakeWeight![j].price}",style: TextStyle(fontSize:13,color: Colors.grey)),
                                                                                            Radio(
                                                                                              value: menuList[i].cakeWeight![j],
                                                                                              groupValue: _radioValue1,
                                                                                              activeColor: Colors.deepOrange,
                                                                                              onChanged:(CakeWeight? value) {
                                                                                                if (value != null) {
                                                                                                  setState(() {
                                                                                                    _radioValue1 = value;
                                                                                                    print("${menuList[i].cakeWeight![j].id} selected");
                                                                                                  });
                                                                                                  //_handleRadioValueChange(value);
                                                                                                }
                                                                                              },
                                                                                            ),
                                                                                          ],
                                                                                        ),

                                                                                      ],
                                                                                    );
                                                                                  }),
                                                                            ],
                                                                          ),
                                                                        ),

                                                                      ),
                                                                      Padding(
                                                                        padding: const EdgeInsets.only(top:8.0,bottom:8),
                                                                        child: Text("Add On- Candles (0/5)", style: TextStyle(
                                                                            color: Colors.black, fontSize: 13, fontWeight: FontWeight.bold),),
                                                                      ),
                                                                      Card(
                                                                          child:Padding(
                                                                            padding: const EdgeInsets.all(8.0),
                                                                            child: Column(
                                                                              children: [
                                                                                ListView.builder(
                                                                                  shrinkWrap:true,
                                                                                  itemCount: menuList[i].candles?.length,
                                                                                  itemBuilder: (BuildContext context, int j) {
                                                                                    return Row(
                                                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                      children: [
                                                                                        Row(
                                                                                          mainAxisAlignment: MainAxisAlignment.start,
                                                                                          children: [
                                                                                            vegIconStack(),
                                                                                            Padding(
                                                                                              padding: const EdgeInsets.only(left:8.0),
                                                                                              child: Text("${menuList[i].candles![j].candleName}",style: TextStyle(fontSize:13,color: Colors.black,)),
                                                                                            ),
                                                                                          ],
                                                                                        ),

                                                                                        Row(
                                                                                          mainAxisAlignment: MainAxisAlignment.start,
                                                                                          children: [
                                                                                            Text("${menuList[i].candles![j].price}",style: TextStyle(fontSize:13,color: Colors.grey)),
                                                                                            Checkbox(
                                                                                              checkColor: Colors.deepOrange,
                                                                                              fillColor: MaterialStateProperty.all(Colors.grey.shade100),
                                                                                              value: menuList[i].candles![j].isSelected,
                                                                                              onChanged: (bool? value) {
                                                                                                setState(() {
                                                                                                  print("value $value");
                                                                                                  menuList[i].candles![j].isSelected=value;
                                                                                                });
                                                                                              },
                                                                                            )
                                                                                          ],
                                                                                        ),

                                                                                      ],
                                                                                    );

                                                                                  },

                                                                                ),
                                                                              ],
                                                                            ),
                                                                          )
                                                                      ),
                                                                      Padding(
                                                                        padding: const EdgeInsets.only(top:8.0,bottom:8),
                                                                        child: Text("Add On- Greeting Cards (0/3)", style: TextStyle(
                                                                            color: Colors.black, fontSize: 13, fontWeight: FontWeight.bold),),
                                                                      ),
                                                                      Card(
                                                                          child:Padding(
                                                                            padding: const EdgeInsets.all(8.0),
                                                                            child: Column(
                                                                              children: [
                                                                                addOnCheckBox("Greeting Card For Women","₹39"),
                                                                                addOnCheckBox("To My Better Half Greeting Card","₹49"),
                                                                                addOnCheckBox("Happy Birthday Greeting Card","₹49"),
                                                                              ],
                                                                            ),
                                                                          )
                                                                      ),
                                                                      Padding(
                                                                        padding: const EdgeInsets.only(top:8.0,bottom:8),
                                                                        child: Text("Add On- Party Essentials (0/4)", style: TextStyle(
                                                                            color: Colors.black, fontSize: 13, fontWeight: FontWeight.bold),),
                                                                      ),
                                                                      Card(
                                                                          child:Padding(
                                                                            padding: const EdgeInsets.all(8.0),
                                                                            child: Column(
                                                                              children: [
                                                                                addOnCheckBox("Paper Popper","₹119"),
                                                                                addOnCheckBox("Snow Spray","₹119"),
                                                                                addOnCheckBox("Pick of 6 Birthday Caps","₹85"),
                                                                                addOnCheckBox("Pick of 10 Birthday Ballo0ns","₹99"),
                                                                              ],
                                                                            ),
                                                                          )
                                                                      ),
                                                                      SizedBox(
                                                                        height: 50,
                                                                      )

                                                                    ],
                                                                  ),
                                                                  Positioned(
                                                                    bottom:0,
                                                                    child: Container(
                                                                        color: Colors.white,
                                                                        width: screenWidth,
                                                                        child:Row(
                                                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                                          children: [
                                                                            Card(
                                                                              child: Row(
                                                                                mainAxisAlignment: MainAxisAlignment
                                                                                    .center,
                                                                                crossAxisAlignment: CrossAxisAlignment
                                                                                    .center,
                                                                                children: [
                                                                                  IconButton(icon: Icon(
                                                                                      Icons.remove, size: 10),
                                                                                      onPressed: () {
                                                                                        setState(() {
                                                                                          if (menuItems != 0)
                                                                                            menuItems = menuItems - 1;
                                                                                        });
                                                                                      }),

                                                                                  Padding(
                                                                                    padding: EdgeInsets.all(3.0),
                                                                                    child: Text(menuItems.toString(),
                                                                                        style: TextStyle(
                                                                                            fontWeight: FontWeight
                                                                                                .bold, fontSize: 10)),
                                                                                  ),
                                                                                  IconButton(
                                                                                    icon: Icon(Icons.add, size: 10),
                                                                                    onPressed: () {
                                                                                      setState(() {
                                                                                        if (menuItems != 0)
                                                                                          menuItems = menuItems + 1;
                                                                                      });
                                                                                    },),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                            ElevatedButton(onPressed: (){},
                                                                              child: Text("Add Item | ₹459"),style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.green)),
                                                                            )
                                                                          ],
                                                                        )
                                                                    ),
                                                                  )
                                                                ],
                                                              )
                                                          ),
                                                        )
                                                      ]
                                                  );});
                                                }
                                            );
                                          },
                                        ) :
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment
                                              .center,
                                          crossAxisAlignment: CrossAxisAlignment
                                              .center,
                                          children: [
                                            IconButton(icon: Icon(
                                                Icons.remove, size: 10),
                                                onPressed: () {
                                                  setState(() {
                                                    if (menuList[i].quantity != 0)
                                                      menuList[i].quantity = menuList[i].quantity - 1;
                                                    menuItems=menuItems-1;
                                                    print("menuItems $menuItems");
                                                  });
                                                }),

                                            Padding(
                                              padding: EdgeInsets.all(3.0),
                                              child: Text(menuList[i].quantity.toString(),
                                                  style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .bold, fontSize: 10)),
                                            ),
                                            IconButton(
                                              icon: Icon(Icons.add, size: 10),
                                              onPressed: () {
                                                setState(() {
                                                  //if (menuList[i].quantity != 0)
                                                    menuList[i].quantity = menuList[i].quantity + 1;
                                                    menuItems=menuItems+1;
                                                    print("menuItems $menuItems");
                                                });
                                              },),
                                          ],
                                        )
                                        ,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        )),
                  );
                })
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(
              Icons.my_library_books_sharp,
              size: 15,
              color: Colors.white,
            ),
            Text(
              "MENU",
              style: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }


  customizeWidget(List<CakeWeight>? cakeWeight) {
    _radioValue1=cakeWeight?.first;
    return Stack(
      children: [
        ListView(
          shrinkWrap: true,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Rasmalai Cake - ₹459-₹989",
                  style: TextStyle(color: Colors.grey, fontSize: 13),),
                Icon(Icons.cancel_outlined, size: 20,)
              ],
            ),
            Text("Customize as per your taste", style: TextStyle(
                color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),),
            Divider(),
            Text("Select Weight", style: TextStyle(
                color: Colors.black, fontSize: 13, fontWeight: FontWeight.bold),),
            Card(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      /*Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              vegIconStack(),
                              Padding(
                                padding: const EdgeInsets.only(left:8.0),
                                child: Text("300 Grams (Serves 2-3)",style: TextStyle(fontSize:13,color: Colors.grey,)),
                              ),
                            ],
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("₹459",style: TextStyle(fontSize:13,color: Colors.grey)),
                              Radio(
                                value: 1,
                                groupValue: _radioValue1,
                                activeColor: Colors.deepOrange,
                                onChanged:(value) {
                                  if (value != null) {
                                    setState(() {
                                      _radioValue1 = value;
                                      print("1 selected");
                                    });
                                  }
                                },
                              ),
                            ],
                          ),

                        ],
                      ),*/
                      ListView.builder(
                          shrinkWrap: true,
                          itemCount: cakeWeight?.length,
                          itemBuilder: (BuildContext context, int i) {
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  vegIconStack(),
                                  Padding(
                                    padding: const EdgeInsets.only(left:8.0),
                                    child: Text("${cakeWeight![i].cakeWt} (${cakeWeight![i].serving})",style: TextStyle(fontSize:13,color: Colors.grey,)),
                                  ),
                                ],
                              ),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("₹ ${cakeWeight![i].price}",style: TextStyle(fontSize:13,color: Colors.grey)),
                                  Radio(
                                    value: cakeWeight![i],
                                    groupValue: _radioValue1,
                                    activeColor: Colors.deepOrange,
                                    onChanged:(CakeWeight? value) {
                                      if (value != null) {
                                        setState(() {
                                          _radioValue1 = value;
                                          print("${cakeWeight![i].id} selected");
                                        });
                                        _handleRadioValueChange(value);
                                      }
                                    },
                                  ),
                                ],
                              ),

                            ],
                          );
                          }),
                    ],
                  ),
                ),

            ),
            Padding(
              padding: const EdgeInsets.only(top:8.0,bottom:8),
              child: Text("Add On- Candles (0/5)", style: TextStyle(
                  color: Colors.black, fontSize: 13, fontWeight: FontWeight.bold),),
            ),
            Card(
                child:Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      addOnCheckBox("Knife & Candle","₹1"),
                      addOnCheckBox("Happy Birthday Candle","₹179"),
                      addOnCheckBox("Sparkle Candle","₹35"),
                      addOnCheckBox("Magic Candle","₹65"),
                      addOnCheckBox("Flower Candle","₹119"),
                    ],
                  ),
                )
            ),
            Padding(
              padding: const EdgeInsets.only(top:8.0,bottom:8),
              child: Text("Add On- Greeting Cards (0/3)", style: TextStyle(
                  color: Colors.black, fontSize: 13, fontWeight: FontWeight.bold),),
            ),
           Card(
             child:Padding(
               padding: const EdgeInsets.all(8.0),
               child: Column(
                 children: [
                   addOnCheckBox("Greeting Card For Women","₹39"),
                   addOnCheckBox("To My Better Half Greeting Card","₹49"),
                   addOnCheckBox("Happy Birthday Greeting Card","₹49"),
                 ],
               ),
             )
           ),
            Padding(
              padding: const EdgeInsets.only(top:8.0,bottom:8),
              child: Text("Add On- Party Essentials (0/4)", style: TextStyle(
                  color: Colors.black, fontSize: 13, fontWeight: FontWeight.bold),),
            ),
           Card(
             child:Padding(
               padding: const EdgeInsets.all(8.0),
               child: Column(
                 children: [
                   addOnCheckBox("Paper Popper","₹119"),
                   addOnCheckBox("Snow Spray","₹119"),
                   addOnCheckBox("Pick of 6 Birthday Caps","₹85"),
                   addOnCheckBox("Pick of 10 Birthday Ballo0ns","₹99"),
                 ],
               ),
             )
           ),
            SizedBox(
              height: 50,
            )

          ],
        ),
        Positioned(
          bottom:0,
          child: Container(
            color: Colors.white,
            width: screenWidth,
            child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Card(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment
                        .center,
                    crossAxisAlignment: CrossAxisAlignment
                        .center,
                    children: [
                      IconButton(icon: Icon(
                          Icons.remove, size: 10),
                          onPressed: () {
                            setState(() {
                              if (menuItems != 0)
                                menuItems = menuItems - 1;
                            });
                          }),

                      Padding(
                        padding: EdgeInsets.all(3.0),
                        child: Text(menuItems.toString(),
                            style: TextStyle(
                                fontWeight: FontWeight
                                    .bold, fontSize: 10)),
                      ),
                      IconButton(
                        icon: Icon(Icons.add, size: 10),
                        onPressed: () {
                          setState(() {
                            if (menuItems != 0)
                              menuItems = menuItems + 1;
                          });
                        },),
                    ],
                  ),
                ),
                ElevatedButton(onPressed: (){},
                    child: Text("Add Item | ₹459"),style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.green)),
                )
              ],
            )
          ),
        )
      ],
    );
  }

  Row addOnCheckBox(String title,String price){
    bool isChecked=false;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            vegIconStack(),
            Padding(
              padding: const EdgeInsets.only(left:8.0),
              child: Text(title,style: TextStyle(fontSize:13,color: Colors.black,)),
            ),
          ],
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(price,style: TextStyle(fontSize:13,color: Colors.grey)),
            Checkbox(
              checkColor: Colors.deepOrange,
              //fillColor: Colors.grey,
              value: isChecked,
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value!;
                  print("value $value");
                });
              },
            )
          ],
        ),

      ],
    );
  }

  void _handleRadioValueChange(CakeWeight value) {
    setState(() {
      _radioValue1 = value;
    });
    print("first" + value.toString() + "radiovalue" + _radioValue1.toString());
  }
}

Stack vegIconStack(){
  return Stack(
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
  );
}

class MenuList{
  int? id;
  String? name;
  int quantity=0;
  String? image;
  double? price;
  double? rating;
  int? reviewCount;
  String? extraInfo;
  List<Lenders>? lenders;
  List<CakeWeight>? cakeWeight;
  List<Candles>? candles;
  MenuList(
      {required this.id,
        required this.name,
        required this.price,
        required this.quantity,
        required this.image,
        required this.rating,
        required this.reviewCount,
        required this.extraInfo,
        required this.lenders,
        required this.cakeWeight,
        required this.candles
      });

  MenuList.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    quantity = json['Quantity'];
    image = json['image'];
    price = json['price'];
    rating = json['rating'];
    reviewCount = json['reviewCount'];
    extraInfo = json['extraInfo'];
    if (json['lenders'] != null) {
      lenders = <Lenders>[];
      json['lenders'].forEach((v) {
        lenders!.add(new Lenders.fromJson(v));
      });
    }
    if (json['cakeWeight'] != null) {
      cakeWeight = <CakeWeight>[];
      json['cakeWeight'].forEach((v) {
        cakeWeight!.add(new CakeWeight.fromJson(v));
      });
    }
    if (json['candles'] != null) {
      candles = <Candles>[];
      json['candles'].forEach((v) {
        candles!.add(new Candles.fromJson(v));
      });
    }

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['quantity'] = this.quantity;
    data['image'] = this.image;
    data['price'] = this.price;
    data['rating'] = this.rating;
    data['reviewCount'] = this.reviewCount;
    data['extraInfo'] = this.extraInfo;
    if (this.lenders != null) {
      data['lenders'] = this.lenders!.map((v) => v.toJson()).toList();
    }
    if (this.cakeWeight != null) {
      data['cakeWeight'] = this.cakeWeight!.map((v) => v.toJson()).toList();
    }
    if (this.candles != null) {
      data['candles'] = this.candles!.map((v) => v.toJson()).toList();
    }

    return data;
  }
}
class Lenders {
  int? id;
  String? lenderName;
  int? cat;
  int? roi;
  int? minLimit;
  int? maxLimit;

  Lenders(
      {this.id,
        this.lenderName,
        this.cat,
        this.roi,
        this.minLimit,
        this.maxLimit});

  Lenders.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    lenderName = json['lender_name'];
    cat = json['cat'];
    roi = json['roi'];
    minLimit = json['min_limit'];
    maxLimit = json['max_limit'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['lender_name'] = this.lenderName;
    data['cat'] = this.cat;
    data['roi'] = this.roi;
    data['min_limit'] = this.minLimit;
    data['max_limit'] = this.maxLimit;
    return data;
  }
}

class CakeWeight {
  int? id;
  String? cakeWt;
  String? serving;
  double? price;

  CakeWeight(
      {this.id,
        this.cakeWt,
        this.serving,
        this.price});

  CakeWeight.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    cakeWt = json['cakeWt'];
    serving = json['serving'];
    price = json['price'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['cakeWt'] = this.cakeWt;
    data['serving'] = this.serving;
    data['price'] = this.price;
    return data;
  }
}

class Candles {
  int? candleId;
  String? candleName;
  double? price;
  bool? isSelected=false;

  Candles(
      {this.candleId,
        this.candleName,
        this.isSelected,
        this.price});

  Candles.fromJson(Map<String, dynamic> json) {
    candleId = json['candleId'];
    candleName = json['candleName'];
    isSelected = json['isSelected'];
    price = json['price'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['candleId'] = this.candleId;
    data['candleName'] = this.candleName;
    data['isSelected'] = this.isSelected;
    data['price'] = this.price;
    return data;
  }
}