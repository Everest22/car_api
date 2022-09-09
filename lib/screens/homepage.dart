import 'package:flutter/material.dart';
import 'package:flutter_exam/components/carcard.dart';
import 'package:flutter_exam/model/car_list.dart';
import 'package:flutter_exam/screens/Screen1.dart';
import 'package:flutter_exam/service/get_api_service.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  ApiService apiService = ApiService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text('Car List'),
      ),
      body: FutureBuilder(
        future: apiService.getCar(),
        builder: (BuildContext context, AsyncSnapshot<List<Car>> snapshot){

          if(snapshot.hasData){
            return ListView.builder(
              itemCount: 8,
                itemBuilder: (BuildContext context, index){
                  return GestureDetector(
                    onTap: () {
                      Navigator.push((context), MaterialPageRoute(builder: (context) => Screen1(car: snapshot.data![index])));
                    },
                    child: carcard(
                        car: snapshot.data![index]
                    ),
                  );
                }
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
