import 'dart:convert';

import 'package:flutter_exam/model/car_list.dart';
import 'package:http/http.dart';

class ApiService{
  final endpoint = "http://firstoffer.co.in/api/cars/list";

  Future<List<Car>> getCar() async{
    Response response = await get(Uri.parse(endpoint));
    if(response.statusCode == 200){
      Map<String, dynamic> json = jsonDecode(response.body);
      List<dynamic> body = json['data'];
      List<Car> data = body.map((dynamic item) => Car.fromJson(item)).toList();
      return data;
    }else{
      throw ('Data has error');
    }
  }
}
