import 'package:flutter/material.dart';
import 'package:flutter_exam/components/carcard.dart';
import 'package:flutter_exam/model/car_list.dart';

class Screen1 extends StatelessWidget {
  const Screen1({Key? key, required this.car}) : super(key: key);
  final Car car;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.all(20),
        child: Card(
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network("${car.car_image}"),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "${car.name}(${car.company})(${car.model})",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "${car.description}",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
