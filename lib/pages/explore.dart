import 'package:flutter/material.dart';
import 'package:museum_skills_w28/pages/artists.dart';
import 'package:museum_skills_w28/pages/ticketing.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            spacing: 10,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Explore",
              style: TextStyle(
                fontFamily: "Optima",
                fontSize: 32,
                color: Colors.amberAccent.shade100
              ),
              ),
              Container(
                width: double.maxFinite,
                height: 2,
                color: Colors.amberAccent.shade100,
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Upcoming Event",
                    style: TextStyle(
                      fontFamily: "Optima",
                      fontSize: 24,
                      color: Colors.white
                    ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (_) => TicketingPage()));
                      },
                      child: Row(
                        spacing: 10,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text("Tickets",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18
                          ),
                          ),
                          Icon(Icons.arrow_forward_ios, color: Colors.white,)
                        ],
                      ),
                    )
                  ],
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadiusGeometry.circular(28),
                clipBehavior: Clip.hardEdge,
                child: Card(
                  child: Column(
                    children: [
                      Image.asset(
                        "media-files/images/renaissance.jpg",
                      ),
                      Container(
                        color: Colors.grey.shade800,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 80,
                              child: Text("10 \n OCT", textAlign: TextAlign.center,
                               style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "Optima",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22
                                  ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                spacing: 10,
                                children: [
                                  Text(
                                    "Renaissance Exhibition",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: "Optima",
                                      fontSize: 26,
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    spacing: 30,
                                    children: [
                                      Text("9:00 AM",
                                      style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: "Optima",
                                      fontSize: 20,
                                    ),
                                      ),
                                      Icon(Icons.arrow_forward,
                                      color: Colors.white,
                                      ),
                                      Text("6:00 PM",
                                      style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: "Optima",
                                      fontSize: 20,
                                    ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    width: 220,
                                    child: Text(
                                      "Indulge in the rich tapestry of Renaissance art",
                                    softWrap: true,
                                    style: TextStyle(
                                      fontFamily: "Optima",
                                      fontSize: 18,
                                      decoration: TextDecoration.underline,
                                      decorationStyle: TextDecorationStyle.solid,
                                      color: Colors.amber,
                                      decorationColor: Colors.amber
                                    ),
                                    ),
                                  ),
                                  Text("+33 (0)1 23 45 67 89",
                                  style: TextStyle(
                                      fontFamily: "Optima",
                                      decoration: TextDecoration.underline,
                                      decorationStyle: TextDecorationStyle.solid,
                                      color: Colors.white,
                                      decorationColor: Colors.white,
                                      fontSize: 20
                                  ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (_) => ArtistsPage()));
                        },
                        child: Container(
                          color: Colors.amber,
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Center(
                              child: Text("Visit Gallery",
                              style: TextStyle(
                                fontFamily: "Optima",
                                fontSize: 24,
                                color: Colors.grey.shade800
                              ),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        )
      ),
    );
  }
}