class Meal {
  

  Meal({
    required this.meals,
  });
  List<Meals> ?meals;
  
  Meal.fromJson(Map<String, dynamic> json){
    meals = List.from(json['meals']).map((e)=>Meals.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['meals'] = meals?.map((e)=>e.toJson()).toList();
    return _data;
  }
}

class Meals {
 
  int? id ;
  
  String ?title;
   String? imageType;
   int ?readyInMinutes;
   int? servings;
   String ?sourceUrl ;
  
  Meals.fromJson(Map<String, dynamic> json){
    id = json['id'];
    title = json['title'];
    imageType = json['imageType'];
    readyInMinutes = json['readyInMinutes'];
    servings = json['servings'];
    sourceUrl = json['sourceUrl'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['title'] = title;
    _data['imageType'] = imageType;
    _data['readyInMinutes'] = readyInMinutes;
    _data['servings'] = servings;
    _data['sourceUrl'] = sourceUrl;
    return _data;
  }
}