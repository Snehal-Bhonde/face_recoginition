
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'ModelClasses.dart';
import 'Widgets.dart';

class CustomUI extends StatefulWidget{
  @override
  _CustomUI createState()=> _CustomUI();
}

class _CustomUI extends State<CustomUI>{
  double rating=0;
  List<RecipeList> recipeList=[];

  @override
  void initState() {
    getList();
  }

  getList(){
    final list=[
      RecipeList(id: 1, name: "Rasmalai Cake",  image: "assets/rasmalaiCake.jpg", rating: 4, url: '', ),
      RecipeList(id: 2, name: "Cotton Candy Cake",  image: "assets/cottonCandyCake.jpg", rating: 3.5, url: '', ),
      RecipeList(id: 3, name: "Flower Cake",  image: "assets/flowerCake.jpg", rating: 3, url: '', ),
      RecipeList(id: 4, name: "Heart Shaped Cake",  image: "assets/heartShapedCake.jpg", rating: 4.5, url: '', ),
      RecipeList(id: 5, name: "Chocolate Cake",  image: "assets/chocoCake.jpg", rating: 4.8, url: '', ),
      RecipeList(id: 6, name: "Strawberry Cake",  image: "assets/strawberryCake.jpg", rating: 3.8, url: '', ),
    ];
    setState(() {
      recipeList=list;
    });
  }


  @override
  Widget build(BuildContext context) {
    var screenHeight = (window.physicalSize.longestSide / window.devicePixelRatio);
    var screenWidth = (window.physicalSize.shortestSide / window.devicePixelRatio);
    return Scaffold(
      appBar: IAppBar(
        height: screenHeight/9,
        color: Colors.green,
        preferredSize: Size.fromHeight(screenHeight/9),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'Cakes',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
      body:
      ListView(
        shrinkWrap: true,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                vegIconStack(Colors.green),
                Text("Cakes (Pure veg)",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15)),
              ],
            ),
          ),
          Container(
            height: 300,
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ),
                itemCount: recipeList.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 170, width: screenWidth/3,  color: Colors.white,
                    child:  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 100,width:100,
                          child: Stack(
                            children: [
                              Container(
                              height: 100,width:100,
                                child: Image.asset(
                                    //"assets/rasmalaiCake.jpg"!,
                                    recipeList[index].image!,
                                    fit: BoxFit.fill,
                                    height: 100),
                              ),
                              Positioned(
                                left: 35,top:35,
                                  child: Container(
                                    height: 35,width:35,
                                    color: Color.fromRGBO(255, 255, 255, 50),
                                    child: IconButton(onPressed: () {
                                      DetailList detailList=new DetailList(id: recipeList[index].id!, name: recipeList[index].name!, image: recipeList[index].image!,);
                                      Navigator.pushNamed(context, '/details',arguments: detailList);
                                     // context.go('/details',extra: detailList);
                                    }, icon: Icon(Icons.saved_search,size: 25,),

                              ),
                                  ))
                            ],
                          ),
                        ),
                        Text(recipeList[index].name!),
                        StarRating(
                          rating: recipeList[index].rating!,
                          onRatingChanged: (rating) => setState(() => this.rating = rating), color: Colors.amber,
                        ),
                      ],
                    ),
                  );
                }
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                vegIconStack(Colors.orange),
                Text("Cakes (Contains Egg)",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15)),
              ],
            ),
          ),
          Container(
            height: 350,
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ),
                itemCount: recipeList.length,
                itemBuilder: (BuildContext context, int index) {
                  return
                    CustomContainer(recipeList[index].image!,recipeList[index].name!,recipeList[index].rating!,screenWidth);

                  // Container(
                  //   height: 170, width: screenWidth/3,  color: Colors.white,
                  //   child:  Column(
                  //     mainAxisAlignment: MainAxisAlignment.center,
                  //     crossAxisAlignment: CrossAxisAlignment.center,
                  //     children: [
                  //       Image.asset(
                  //         //"assets/rasmalaiCake.jpg"!,
                  //           recipeList[index].image!,
                  //           fit: BoxFit.fill,
                  //           height: 100),
                  //       Text(recipeList[index].name!),
                  //       StarRating(
                  //         rating: recipeList[index].rating!,
                  //         onRatingChanged: (rating) => setState(() => this.rating = rating), color: Colors.amber,
                  //       ),
                  //     ],
                  //   ),
                  // );
                }
            ),
          ),
        ],
      ),
    );

  }
}



