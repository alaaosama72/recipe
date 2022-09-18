/* This class is responsible for getting and displaying meals 
in our webview
*/

class Recipe {
  
  // Recipe({
  //   required this.id,
  //   required this.title,
  //   required this.image,
  //   required this.imageType,
  //   required this.servings,
  //   required this.readyInMinutes,
  //   required this.license,
  //   required this.sourceName,
  //   required this.sourceUrl,
  //   required this.spoonacularSourceUrl,
  //   required this.aggregateLikes,
  //   required this.healthScore,
  //   required this.spoonacularScore,
  //   required this.pricePerServing,
  //   required this.analyzedInstructions,
  //   required this.cheap,
  //   required this.creditsText,
  //   required this.cuisines,
  //   required this.dairyFree,
  //   required this.diets,
  //   required this.gaps,
  //   required this.glutenFree,
  //   required this.instructions,
  //   required this.ketogenic,
  //   required this.lowFodmap,
  //   required this.occasions,
  //   required this.sustainable,
  //   required this.vegan,
  //   required this.vegetarian,
  //   required this.veryHealthy,
  //   required this.veryPopular,
  //   required this.whole30,
  //   required this.weightWatcherSmartPoints,
  //   required this.dishTypes,
  //   required this.extendedIngredients,
  //   required this.summary,
  //   required this.winePairing,
  // });
  int ?id;
  String? title;
  String ?image;
  String ?imageType;
  int ?servings;
  int ?readyInMinutes;
  String? license;
  String ?sourceName;
  String ?sourceUrl;
  String ?spoonacularSourceUrl;
  int? aggregateLikes;
  int ?healthScore;
  int ?spoonacularScore;
  double? pricePerServing;
  List<dynamic>? analyzedInstructions;
  bool ?cheap;
  String? creditsText;
  List<dynamic>? cuisines;
  bool? dairyFree;
  List<dynamic> ?diets;
  String ?gaps;
  bool ?glutenFree;
  String? instructions;
  bool ?ketogenic;
  bool ?lowFodmap;
  List<dynamic>? occasions;
  bool? sustainable;
  bool ?vegan;
  bool ?vegetarian;
  bool ?veryHealthy;
  bool ?veryPopular;
  bool ?whole30;
  int ?weightWatcherSmartPoints;
  List<String>? dishTypes;
  List<ExtendedIngredients>? extendedIngredients;
  String? summary;
  WinePairing ?winePairing;
  
  Recipe.fromJson(Map<String, dynamic> json){
    id = json['id'];
    title = json['title'];
    image = json['image'];
    imageType = json['imageType'];
    servings = json['servings'];
    readyInMinutes = json['readyInMinutes'];
    license = json['license'];
    sourceName = json['sourceName'];
    sourceUrl = json['sourceUrl'];
    spoonacularSourceUrl = json['spoonacularSourceUrl'];
    aggregateLikes = json['aggregateLikes'];
    healthScore = json['healthScore'];
    spoonacularScore = json['spoonacularScore'];
    pricePerServing = json['pricePerServing'];
    analyzedInstructions = List.castFrom<dynamic, dynamic>(json['analyzedInstructions']);
    cheap = json['cheap'];
    creditsText = json['creditsText'];
    cuisines = List.castFrom<dynamic, dynamic>(json['cuisines']);
    dairyFree = json['dairyFree'];
    diets = List.castFrom<dynamic, dynamic>(json['diets']);
    gaps = json['gaps'];
    glutenFree = json['glutenFree'];
    instructions = json['instructions'];
    ketogenic = json['ketogenic'];
    lowFodmap = json['lowFodmap'];
    occasions = List.castFrom<dynamic, dynamic>(json['occasions']);
    sustainable = json['sustainable'];
    vegan = json['vegan'];
    vegetarian = json['vegetarian'];
    veryHealthy = json['veryHealthy'];
    veryPopular = json['veryPopular'];
    whole30 = json['whole30'];
    weightWatcherSmartPoints = json['weightWatcherSmartPoints'];
    dishTypes = List.castFrom<dynamic, String>(json['dishTypes']);
    extendedIngredients = List.from(json['extendedIngredients']).map((e)=>ExtendedIngredients.fromJson(e)).toList();
    summary = json['summary'];
    winePairing = WinePairing.fromJson(json['winePairing']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['title'] = title;
    _data['image'] = image;
    _data['imageType'] = imageType;
    _data['servings'] = servings;
    _data['readyInMinutes'] = readyInMinutes;
    _data['license'] = license;
    _data['sourceName'] = sourceName;
    _data['sourceUrl'] = sourceUrl;
    _data['spoonacularSourceUrl'] = spoonacularSourceUrl;
    _data['aggregateLikes'] = aggregateLikes;
    _data['healthScore'] = healthScore;
    _data['spoonacularScore'] = spoonacularScore;
    _data['pricePerServing'] = pricePerServing;
    _data['analyzedInstructions'] = analyzedInstructions;
    _data['cheap'] = cheap;
    _data['creditsText'] = creditsText;
    _data['cuisines'] = cuisines;
    _data['dairyFree'] = dairyFree;
    _data['diets'] = diets;
    _data['gaps'] = gaps;
    _data['glutenFree'] = glutenFree;
    _data['instructions'] = instructions;
    _data['ketogenic'] = ketogenic;
    _data['lowFodmap'] = lowFodmap;
    _data['occasions'] = occasions;
    _data['sustainable'] = sustainable;
    _data['vegan'] = vegan;
    _data['vegetarian'] = vegetarian;
    _data['veryHealthy'] = veryHealthy;
    _data['veryPopular'] = veryPopular;
    _data['whole30'] = whole30;
    _data['weightWatcherSmartPoints'] = weightWatcherSmartPoints;
    _data['dishTypes'] = dishTypes;
    _data['extendedIngredients'] = extendedIngredients?.map((e)=>e.toJson()).toList();
    _data['summary'] = summary;
    _data['winePairing'] = winePairing?.toJson();
    return _data;
  }
}

class ExtendedIngredients {
  // ExtendedIngredients({
  //   required this.aisle,
  //   required this.amount,
  //   required this.consitency,
  //   required this.id,
  //   required this.image,
  //   required this.measures,
  //   required this.meta,
  //   required this.name,
  //   required this.original,
  //   required this.originalName,
  //   required this.unit,
  // });
   String ?aisle;
   int? amount;
  String ?consitency;
   int ?id;
   String? image;
   Measures? measures;
   List<String>? meta;
   String ?name;
   String ?original;
   String ?originalName;
   String ?unit;
  
  ExtendedIngredients.fromJson(Map<String, dynamic> json){
    aisle = json['aisle'];
    amount = json['amount'];
    consitency = json['consitency'];
    id = json['id'];
    image = json['image'];
    measures = Measures.fromJson(json['measures']);
    meta = List.castFrom<dynamic, String>(json['meta']);
    name = json['name'];
    original = json['original'];
    originalName = json['originalName'];
    unit = json['unit'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['aisle'] = aisle;
    _data['amount'] = amount;
    _data['consitency'] = consitency;
    _data['id'] = id;
    _data['image'] = image;
    _data['measures'] = measures?.toJson();
    _data['meta'] = meta;
    _data['name'] = name;
    _data['original'] = original;
    _data['originalName'] = originalName;
    _data['unit'] = unit;
    return _data;
  }
}

class Measures {
  // Measures({
  //   required this.metric,
  //   required this.us,
  // });
   Metric ?metric;
   Us ?us;
  
  Measures.fromJson(Map<String, dynamic> json){
    metric = Metric.fromJson(json['metric']);
    us = Us.fromJson(json['us']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['metric'] = metric?.toJson();
    _data['us'] = us?.toJson();
    return _data;
  }
}

class Metric {
  // Metric({
  //   required this.amount,
  //   required this.unitLong,
  //   required this.unitShort,
  // });
  int? amount;
  String ?unitLong;
  String ?unitShort;
  
  Metric.fromJson(Map<String, dynamic> json){
    amount = json['amount'];
    unitLong = json['unitLong'];
    unitShort = json['unitShort'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['amount'] = amount;
    _data['unitLong'] = unitLong;
    _data['unitShort'] = unitShort;
    return _data;
  }
}

class Us {
  // Us({
  //   required this.amount,
  //   required this.unitLong,
  //   required this.unitShort,
  // });
   int? amount;
   String ?unitLong;
   String ?unitShort;
  
  Us.fromJson(Map<String, dynamic> json){
    amount = json['amount'];
    unitLong = json['unitLong'];
    unitShort = json['unitShort'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['amount'] = amount;
    _data['unitLong'] = unitLong;
    _data['unitShort'] = unitShort;
    return _data;
  }
}

class WinePairing {
  // WinePairing({
  //   required this.pairedWines,
  //   required this.pairingText,
  //   required this.productMatches,
  // });
  List<String> ?pairedWines;
  String ?pairingText;
  List<ProductMatches>? productMatches;
  
  WinePairing.fromJson(Map<String, dynamic> json){
    pairedWines = List.castFrom<dynamic, String>(json['pairedWines']);
    pairingText = json['pairingText'];
    productMatches = List.from(json['productMatches']).map((e)=>ProductMatches.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['pairedWines'] = pairedWines;
    _data['pairingText'] = pairingText;
    _data['productMatches'] = productMatches?.map((e)=>e.toJson()).toList();
    return _data;
  }
}

class ProductMatches {
  // ProductMatches({
  //   required this.id,
  //   required this.title,
  //   required this.description,
  //   required this.price,
  //   required this.imageUrl,
  //   required this.averageRating,
  //   required this.ratingCount,
  //   required this.score,
  //   required this.link,
  // });
   int? id;
   String? title;
   String? description;
   String ?price;
   String ?imageUrl;
   double ?averageRating;
   int ?ratingCount;
   double? score;
  String ?link;
  
  ProductMatches.fromJson(Map<String, dynamic> json){
    id = json['id'];
    title = json['title'];
    description = json['description'];
    price = json['price'];
    imageUrl = json['imageUrl'];
    averageRating = json['averageRating'];
    ratingCount = json['ratingCount'];
    score = json['score'];
    link = json['link'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['title'] = title;
    _data['description'] = description;
    _data['price'] = price;
    _data['imageUrl'] = imageUrl;
    _data['averageRating'] = averageRating;
    _data['ratingCount'] = ratingCount;
    _data['score'] = score;
    _data['link'] = link;
    return _data;
  }
}