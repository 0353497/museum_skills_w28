import 'package:flutter/material.dart';

class TicketingPage extends StatelessWidget {
  const TicketingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(
                "media-files/images/museum.jpg",
                width: MediaQuery.of(context).size.width,
                height: 300,
                fit: BoxFit.cover,
              ),
              Align(
                alignment: Alignment.center,
                child: Text("Official Ticketing Service", textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white
                ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}