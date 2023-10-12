import 'package:flutter/material.dart';
import 'package:multi_dropdown/multiselect_dropdown.dart';

const List<String> list = <String>[
  'Jan',
  'Feb',
  'Mar',
  'Apr',
  'May',
  'Jun',
  'Jul',
  'Aug',
  'Sep',
  'Oct',
  'Nov',
  'Dec'
];

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
        title: const Text(
          "Constructions",
          style: TextStyle(),
        ),
        centerTitle: false,
        actions: [
          IconButton(
              onPressed: () {
                //Logout function
              },
              icon: const Icon(Icons.business_sharp))
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: screenHeight * 0.05,
          ),

          //NET VALUES CONTAINER

          Center(
            child: Container(
              padding: const EdgeInsets.all(20),
              width: screenWidth * 0.90,
              height: screenHeight * 0.20,
              decoration: BoxDecoration(
                  color: Colors.amberAccent,
                  borderRadius: BorderRadius.circular(30)),
              child: Column(
                children: [
                  const Row(
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
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: screenWidth * 90,
                    height: 1,
                    decoration: const BoxDecoration(
                      color: Color(0xff000000),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Row(
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
          const SizedBox(width: 100, height: 20),
          const SizedBox(
            width: 100,
            child: Text("Select Month",
                style: TextStyle(fontStyle: FontStyle.italic)),
          ),

          //MONTH DROPDOWN
          MultiSelectDropDown(
            onOptionSelected: (List<ValueItem> selectedOptions) {},
            options: const <ValueItem>[
              ValueItem(label: 'JANUARY', value: '1'),
              ValueItem(label: 'FEBRUARY', value: '2'),
              ValueItem(label: 'MARCH', value: '3'),
              ValueItem(label: 'APRIL', value: '4'),
              ValueItem(label: 'MAY', value: '5'),
              ValueItem(label: 'JUNE', value: '6'),
              ValueItem(label: 'JULY', value: '6'),
              ValueItem(label: 'AUGUST', value: '6'),
              ValueItem(label: 'SEPTEMBER', value: '6'),
              ValueItem(label: 'OCTOBER', value: '6'),
              ValueItem(label: 'NOVEMBER', value: '6'),
              ValueItem(label: 'DECEMBER', value: '6'),
            ],
            selectionType: SelectionType.single,
            chipConfig: const ChipConfig(wrapType: WrapType.wrap),
            dropdownHeight: 300,
            optionTextStyle:
                const TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
            selectedOptionIcon: const Icon(Icons.check_circle),
          ),
        ],
      ),
    );
  }
}
