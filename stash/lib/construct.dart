import 'package:flutter/material.dart';


const List<String> list = <String>['Jan', 'Feb', 'Mar', 'Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec'];

class Construct extends StatefulWidget {
  const Construct({super.key});

  @override
  State<Construct> createState() => _ConstructState();
}

class _ConstructState extends State<Construct> {
  String dropdownValue = list[0];
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Constructions",
          style: TextStyle(),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                //Logout function
              },
              icon: Icon(Icons.business_sharp))
        ],
      ),
      body: Container(
          child: Column(
        children: [
          SizedBox(
            height: screenHeight * 0.05,
          ),

          //NET VALUES CONTAINER

          Center(
            child: Container(
              padding: EdgeInsets.all(20),
              width: screenWidth * 0.90,
              height: screenHeight * 0.20,
              decoration: BoxDecoration(
                  color: Colors.amberAccent,
                  borderRadius: BorderRadius.circular(30)),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Net Income:",
                              style: TextStyle(fontSize: 18),
                            ),
                            Text(
                              "Net Expenditure:",
                              style: TextStyle(fontSize: 18),
                            ),
                          ]),
                      SizedBox(
                        width: 50,
                      ),
                      Column(
                        children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "0000000",
                                  style: TextStyle(fontSize: 18),
                                ),
                                Text(
                                  "0000000",
                                  style: TextStyle(fontSize: 18),
                                ),
                              ])
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: screenWidth * 90,
                    height: 1,
                    decoration: BoxDecoration(
                      color: Color(0xff000000),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Net Total:",
                              style: TextStyle(fontSize: 18),
                            ),
                          ]),
                      SizedBox(
                        width: 50,
                      ),
                      Column(
                        children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "0000000",
                                  style: TextStyle(fontSize: 18),
                                ),
                              ])
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ),

          //MONTH DROPDOWN

          DropdownButton<String>(
            value: dropdownValue,
            icon: const Icon(Icons.arrow_downward),
            elevation: 16,
            menuMaxHeight: screenHeight * 0.20,
            style: const TextStyle(color: Colors.deepPurple),
            underline: Container(
              height: 2,
              color: Colors.deepPurpleAccent,
            ),
            onChanged: (String? value) {
              // This is called when the user selects an item.
              setState(() {
                dropdownValue = value!;
              });
            },
            items: list.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ],
      )),
    );
  }
}
