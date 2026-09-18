import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 17, 0),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 187, 13, 0),
          title: Text(
            "Weather Forecast",
            style: TextStyle(
              color: Colors.white,
              fontSize: 29,
              fontWeight: FontWeight(600),
            ),
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Enter City Name",
                  labelStyle: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),

              SizedBox(height: 20),

              Text(
                "Jambyl Oblast, KZ",
                style: TextStyle(fontSize: 35, color: Colors.white),
              ),
              Text(
                "Friday, September 18, 2026",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight(400),
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.sunny, color: Colors.white, size: 100),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "22˚F",
                        style: TextStyle(color: Colors.white, fontSize: 50),
                      ),
                      Text(
                        "Sunny",
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  info(Icons.air, '5', 'km/h'),
                  info(Icons.water_drop, '3', '%'),
                  info(Icons.cloud, '20', '%'),
                ],
              ),
              SizedBox(height: 40),
              Text(
                "7 - DAY WEATHER FORECAST",
                style: TextStyle(color: Colors.white, fontSize: 23),
              ),
              SizedBox(height: 20),

              SizedBox(
                height: 120,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    box("Monday", "28˚"),
                    box("Tuesday", "29˚"),
                    box("Wednesday", "28˚"),
                    box("Thursday", "26˚"),
                    box("Friday", "30˚"),
                    box("Saturday", "32˚"),
                    box("Sunday", "28˚"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget info(IconData icon, String num, String mahl) {
    return Column(
      children: [
        Icon(icon, color: Colors.white, size: 30),
        Text(num, style: TextStyle(color: Colors.white, fontSize: 30)),
        Text(mahl, style: TextStyle(color: Colors.white, fontSize: 20)),
      ],
    );
  }
}

Widget box(String day, String temp) {
  return Container(
    margin: EdgeInsets.only(right: 10),
    padding: EdgeInsets.all(20),
    decoration: BoxDecoration(
      color: Colors.red.shade300,
      borderRadius: BorderRadius.circular(10),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(day, style: TextStyle(fontSize: 20, color: Colors.white)),
        SizedBox(height: 20),
        Row(
          children: [
            Text(temp, style: TextStyle(fontSize: 20, color: Colors.white)),
            SizedBox(width: 10),
            Icon(Icons.sunny, color: Colors.white, size: 30),
          ],
        ),
      ],
    ),
  );
}
