import 'dart:ffi';

class Car{
  String? name;
  String? description;
  String? car_image;
  String? company;
  String? type;
  String? location;
  int? model;

  Car({
    this.name,
    this.description,
    this.car_image,
    this.company,
    this.type,
    this.location,
    this.model,
  });

  factory Car.fromJson(Map<String, dynamic> json){
    return Car(
      name: json["name"]  == null ? null : json["name"],
      // title: json["title"] == null ? null : json["title"],
      description: json["description"]  == null ? null : json["description"],
      //description: json["description"] == null ? null : json["description"],
      car_image: json["car_image"] == null ? null : json["car_image"],
      company: json["company"] == null ? null : json["company"],
      type: json["type"] == null ? null : json["type"],
      location: json["location"] == null ? null : json["location"],
      model: json["model"] == null ? null : json["model"],
    );
  }
}