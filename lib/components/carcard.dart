import 'package:flutter/material.dart';
import 'package:flutter_exam/model/car_list.dart';

class carcard extends StatelessWidget {
  const carcard({Key? key, required this.car}) : super(key: key);

  final Car car;

  @override
  Widget build(BuildContext context) {
    return Card(
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
            "${car.name}(${car.company})",
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
            maxLines: 2,
          ),
        ],
      ),
    );
  }
}
