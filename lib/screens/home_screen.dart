import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:medical_app_ui_2/ui/foodCard.dart';
import 'package:medical_app_ui_2/ui/specCard.dart';
import 'package:medical_app_ui_2/ui/titlebar.dart';

class homeScreen extends StatelessWidget {
  const homeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Column(
          children: [
            // appbar
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'hi,',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 10),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Hamza',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          )
                        ]),
                    SizedBox(
                      width: 8,
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.purple[100],
                          borderRadius: BorderRadius.circular(10)),
                      child: Icon(Icons.person, color: Colors.white),
                    )
                  ],
                )),
            // space
            SizedBox(
              height: 25,
            ),

            // card
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.greenAccent,
                ),
                padding: EdgeInsets.all(20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    Container(
                      width: 15,
                      height: 100,
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('How Do you feel'),
                          Text("Are i ok"),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            // height: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white),
                            child: Center(
                              child: Text(
                                'Get Started',
                                style: TextStyle(
                                    fontWeight: FontWeight.w300, fontSize: 10),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),

            // search
            Padding(
              padding: EdgeInsets.all(20),
              child: Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Colors.green[100],
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.search),
                              border: InputBorder.none,
                              hintText: "Search food cards"),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            //  titleBar
            TitleBar(title: "Specialities", icon: Icons.sailing),
            // stuff
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  specCard(title: 'Cardio', image: 'heart'),
                  specCard(title: 'Dental', image: 'medicine'),
                  specCard(title: 'Plastic', image: 'check-up'),
                  specCard(title: 'Neuro', image: 'stethoscope')
                ],
              ),
            ),
            TitleBar(title: "Medical Records", icon: Icons.account_box),

            // main
            // scroll stuff
            Expanded(
              child: ListView(
                children: [
                  // TitleBar(title: "Specialities", icon: Icons.access_alarm),
                  foodCard(
                      title: 'Test results',
                      image: 'pexels-pixabay-159211.jpg'),

                  foodCard(title: 'X-Ray', image: 'pexels-pixabay-159211.jpg'),
                ],
              ),
            )
          ],
        )));
  }
}
