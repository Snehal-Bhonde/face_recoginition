
class RecipeList{
  int? id;
  String? name;
  String? image;
  double? rating;
  String? url;

  RecipeList(
      {required this.id,
        required this.name,
        required this.image,
        required this.rating,
        required this.url,
      });

  RecipeList.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    image = json['image'];
    rating = json['rating'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['image'] = this.image;
    data['rating'] = this.rating;
    data['url'] = this.url;
    return data;
  }
}

class DetailList {
  int? id;
  String? name;
  String? image;


  DetailList({required this.id,
    required this.name,
    required this.image});

  DetailList.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['image'] = this.image;
    return data;
  }
}