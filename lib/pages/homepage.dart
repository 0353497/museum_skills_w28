
import 'package:flutter/material.dart';
import 'package:museum_skills_w28/pages/explore.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final Tween<double> heigtValues = Tween(begin: 700, end: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            children: [
              Column(
                spacing: 15,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("media-files/images/logo.png", width: 100,),
                  Stack(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.5,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.amberAccent,
                            width: 2
                          ),
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.elliptical(180, 180),
                            topRight: Radius.elliptical(180, 180),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: ClipRRect(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.elliptical(180, 180), 
                              topRight: Radius.elliptical(180, 180),
                            ),
                            child: Image.asset(
                              "media-files/images/louvre.jpg", 
                              height: MediaQuery.of(context).size.height * 0.5,
                              width: 300,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 10,
                        left: 60,
                        child: Text("Experience Art",
                        style: TextStyle(
                          color: Colors.amberAccent.shade100,
                          fontSize: 34,
                          fontFamily: "Optima"
                        ),
                        ),
                      ),
                     
                    ],
                  ),
                  Text(
                    "We are thrilled to invite you to join us for an extraordinary event that will immerse you in the world of art",
                    textAlign: TextAlign.center,
                    softWrap: true,
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Optima",
                      fontSize: 18
                    ),
                  ),
                  TextButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.amber),
                    foregroundColor: WidgetStatePropertyAll(Colors.grey.shade800)
                  ),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_) => ExplorePage()));
                  },
                  child: Text(
                    "Explore Now",
                    textAlign: TextAlign.center,
                    softWrap: true,
                    style: TextStyle(
                      fontFamily: "Optima",
                      fontSize: 24
                    ),
                  ),
                  )
                ],
              ),
               Positioned(
                    bottom: 0,
                    width: MediaQuery.of(context).size.width,
                    child: TweenAnimationBuilder(
                      tween: heigtValues,
                      duration: Duration(seconds: 4),
                      builder: (context, double value, child) {
                        return  Container(
                          height: value,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                blurStyle: BlurStyle.normal,
                                color: Colors.grey.shade900,
                                spreadRadius: 20,
                                blurRadius: 20
                              )
                            ]
                          ),
                        );
                      },
                      ),
                  )
            ],
          ),
        ),
      ),
    );
  }
}