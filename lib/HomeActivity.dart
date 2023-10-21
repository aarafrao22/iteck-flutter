import 'package:flutter/material.dart';

class HomeActivity extends StatefulWidget {
  const HomeActivity({
    Key? key,
    required String title,
    required String param_homepage,
  }) : super(key: key);

  @override
  State<HomeActivity> createState() => _HomeActivityState();
}

class _HomeActivityState extends State<HomeActivity> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFf0f0f0),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('assets/person.png'),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Owais\nAkhlaq'.toUpperCase(),
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF114476),
                        letterSpacing: -1.5,
                      ),
                    ),
                    Container(
                      height: 26,
                      padding: EdgeInsets.all(4.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18.0),
                        // Adjust the border radius as needed
                        border: Border.all(color: Colors.black, width: 1.0),
                      ),
                      child: DropdownButton<String>(
                        value: 'BMY-083', // Initial selected value
                        items: <String>['A', 'BMY-083'].map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value, style: TextStyle(fontSize: 14)),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          // Handle dropdown value change here
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Add your button's action here
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.fromLTRB(22, 2, 22, 2),
                      primary: Colors.white, // Button background color
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            20.0), // Adjust the border radius as needed
                      ),
                    ),
                    child: Text(
                      'History',
                      style: TextStyle(
                        fontSize: 11,
                        color: Color(0xFF114476),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Add your button's action here
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.fromLTRB(22, 2, 22, 2),
                      primary: Colors.white, // Button background color
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            20.0), // Adjust the border radius as needed
                      ),
                    ),
                    child: Text(
                      'Live Track',
                      style: TextStyle(
                        fontSize: 11,
                        color: Color(0xFF114476),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
