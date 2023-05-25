


import 'package:flutter/material.dart';

Stack vegIconStack(MaterialColor color){
  return Stack(
    children:  [
      Icon(
        Icons.square_outlined,
        size: 25,
        color: color!,
      ),
      Positioned(
          top: 5,
          left: 5,
          child: Icon(
            Icons.circle,
            size: 15,
            color: color!,
          ))
    ],
  );
}

Container CustomContainer(String image,String name,double rating,double screenWidth){
  return Container(
    height: 170, width: screenWidth/3,  color: Colors.white,
    child:  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
        height: 100,width: 100,
          child: Image.asset(
            image!,
              fit: BoxFit.fill,
              height: 100),
        ),
        Text(name!),
        StarRating(
          rating: rating!,
          onRatingChanged: (rating) =>  rating = rating, color: Colors.amber,
        ),
      ],
    ),
  );
}


typedef void RatingChangeCallback(double rating);

class StarRating extends StatelessWidget {
  final int starCount;
  final double rating;
  final RatingChangeCallback onRatingChanged;
  final Color color;

  StarRating({this.starCount = 5, this.rating = .0, required this.onRatingChanged, required this.color});

  Widget buildStar(BuildContext context, int index) {
    Icon icon;
    if (index >= rating) {
      icon = new Icon(
        Icons.star_border,size: 15,
        color: Theme.of(context).buttonColor,
      );
    }
    else if (index > rating - 1 && index < rating) {
      icon = new Icon(
        Icons.star_half,size: 15,
        color: color ?? Theme.of(context).primaryColor,
      );
    } else {
      icon = new Icon(
        Icons.star,size: 15,
        color: color ?? Theme.of(context).primaryColor,
      );
    }
    return new InkResponse(
      onTap: onRatingChanged == null ? null : () => onRatingChanged(index + 1.0),
      child: icon,
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Row(mainAxisAlignment:MainAxisAlignment.center,children: new List.generate(starCount, (index) => buildStar(context, index)));
  }
}

class IAppBar extends PreferredSize {
  //
  final Widget child;
  final double height;
  final Color color;
  IAppBar({
    required this.child,
    required this.color,
    this.height = kToolbarHeight, required super.preferredSize,
  }) : super(child: child);
  @override
  Size get preferredSize => Size.fromHeight(height);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: preferredSize.height,
      color: color ?? Colors.red,
      alignment: Alignment.center,
      child: child,
    );
  }
}