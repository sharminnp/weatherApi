import 'package:flutter/material.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Search For City",
          style: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        elevation: 0,
        backgroundColor: Colors.grey[200],
      ),
      body: SingleChildScrollView(
        child: Stack(children: [
          Column(children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: "Search....",
                    prefixIconColor: Colors.grey,
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(30)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
            ),
            Container(
              height: 150,
              width: 185,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(),
                        child: Text(
                          "ciemas",
                          style: TextStyle(fontSize: 22),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(),
                        child: Image(
                          image: AssetImage(
                            "assets/Weather.png",
                          ),
                          height: 80,
                          width: 80,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "30 C",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text("Feels like cloudy"),
                ],
              ),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
            ),
            SizedBox(
              height: 150,
            ),
            Container(
              height: 250,
              width: 345,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 25, top: 70),
                    child: Column(
                      children: [
                        Text(
                          "Precipation",
                          style: TextStyle(fontSize: 20, color: Colors.grey),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "50 %",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Humidity",
                          style: TextStyle(fontSize: 20, color: Colors.grey),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "30 %",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 35),
                    child: VerticalDivider(
                      thickness: 1,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 70, left: 40),
                    child: Column(
                      children: [
                        Text(
                          "Wind",
                          style: TextStyle(fontSize: 20, color: Colors.grey),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "160",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "presure",
                          style: TextStyle(fontSize: 20, color: Colors.grey),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "450hPa",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ]),
          Positioned(
            top: 320,
            left: 100,
            child: Padding(
              padding: const EdgeInsets.only(),
              child: Image.asset(
                "assets/weather2-removebg-preview.png",
                height: 130,
                width: 200,
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
