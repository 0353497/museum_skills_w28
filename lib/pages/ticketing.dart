import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class TicketingPage extends StatefulWidget {
  const TicketingPage({super.key});

  @override
  State<TicketingPage> createState() => _TicketingPageState();
}

class _TicketingPageState extends State<TicketingPage> {
  DateTime selectedDate = DateTime(2024, 9);
  int amountGeneralAdmisson = 1;
  int secondInput = 0;
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
                child: Text("Official \n Ticketing Service", textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Optima",
                  fontSize: 35,
                  fontWeight: FontWeight.w500
                ),
                ),
              )
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 5,
                children: [
                  Stack(
                    children: [
                      SfDateRangePicker(
                        selectionRadius: 20,
                        selectionColor: Colors.amber,
                        initialSelectedDate: DateTime(2024, 9),
                        minDate: DateTime(2024, 9, 13),
                        initialDisplayDate: selectedDate,
                        backgroundColor: Colors.grey.shade900,
                        todayHighlightColor: Colors.amber,
                        headerStyle: DateRangePickerHeaderStyle(
                          textAlign: TextAlign.end,
                          backgroundColor: Colors.grey.shade900,
                          textStyle: TextStyle(
                          )
                        ),
                        selectionShape: DateRangePickerSelectionShape.circle,
                        cellBuilder: (context, cellDetails) {
                          if (cellDetails.date.weekday == 2 || cellDetails.date.isBefore(DateTime(2024, 9, 13))) {
                            return Text(cellDetails.date.day.toString(), style: TextStyle(color: Colors.grey, fontFamily: "Optima"), textAlign: TextAlign.center,);
                          } else {
                            return Text(cellDetails.date.day.toString(), textAlign: TextAlign.center, style: TextStyle(fontFamily: "Optima"),);
                          }
                        },
                      ),
                      Positioned(child: Text("1. Date to visit", style: TextStyle(
                        fontSize: 24,
                        fontFamily: "Optima",
                        color: Colors.amber
                      ),)),
                    ],
                  ),
                  Text("2. Number of tickets",
                  style: TextStyle(
                        fontSize: 24,
                        fontFamily: "Optima",
                        color: Colors.amber
                      ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        spacing: 20,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("General admission",
                          style: TextStyle(
                            fontFamily: "Optima",
                            color: Colors.white,
                            fontSize: 16
                          ),
                          ),
                           Text("€ 22",
                          style: TextStyle(
                            fontFamily: "Optima",
                            color: Colors.amber,
                            fontSize: 24
                          ),
                          )
                        ],
                      ),
                      Container(
                        width: 150,
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Colors.grey,
                              width: 1
                            )
                          )
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            IconButton(onPressed: (){
                              if (amountGeneralAdmisson > 1) {
                                setState(() {
                                  amountGeneralAdmisson--;
                                });
                              }

                            }, icon: Icon(Icons.minimize,)),
                            Text("$amountGeneralAdmisson"),
                            IconButton(onPressed: (){
                              if (amountGeneralAdmisson < 9) {
                                setState(() {
                                  amountGeneralAdmisson++;
                                });
                              }
                            }, icon: Icon(Icons.add)),
                          ],
                        ),
                      )
                    ],
                  ),
                      Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        spacing: 20,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 100,
                            width: 200,
                            child: Text("Under 18s, Under26s residents of the EEA, Museum members, Professionals",
                            style: TextStyle(
                              fontFamily: "Optima",
                              color: Colors.white,
                              fontSize: 16
                            ),
                            ),
                          ),
                           Text("FREE",
                          style: TextStyle(
                            fontFamily: "Optima",
                            color: Colors.amber,
                            fontSize: 24
                          ),
                          )
                        ],
                      ),
                      Container(
                        width: 150,
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Colors.grey,
                              width: 1
                            )
                          )
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            IconButton(onPressed: (){
                              if (secondInput > 0) {
                                setState(() {
                                secondInput--;
                                });
                              }
                            }, icon: Icon(Icons.minimize,)),
                            Text("$secondInput"),
                            IconButton(onPressed: (){
                              setState(() {
                                secondInput++;
                              });
                            }, icon: Icon(Icons.add)),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            )
          ),
          Container(
            color: Colors.amber,
            height: 100,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Total: €${amountGeneralAdmisson * 22}",
                  style: TextStyle(
                    fontFamily: "Optima",
                    fontSize: 32,
                    color: Colors.grey.shade900
                  ),
                  ),
                  TextButton(
                    style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.grey.shade900),
                      foregroundColor: WidgetStatePropertyAll(Colors.amber),
                    ),
                    onPressed: (){

                    },
                  child: Text("Checkout",
                  style: TextStyle(
                    fontFamily: "Optima",
                    fontSize: 20
                  ),
                  )
                  )
                ],
              ),
              
            ),
          )
        ],
      ),
    );
  }
}