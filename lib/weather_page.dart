import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.05,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.location_on,
                    color: Colors.grey[800],
                  ),
                  Text(
                    "Cape Coast, Ghana",
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.025,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[800],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.025,
              ),
              Text(
                "Mon Jun 05 2023",
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.height * 0.02,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey[800],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.08,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.2,
                width: MediaQuery.of(context).size.width * 0.75,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromARGB(255, 225, 238, 247),
                        blurRadius: 20,
                      )
                    ]),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "23°",
                            style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.08,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Icon(
                            Icons.cloudy_snowing,
                            size: MediaQuery.of(context).size.height * 0.08,
                          )
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.025,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Real Feel: 23",
                            style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.018,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[800],
                            ),
                          ),
                          Text(
                            "Overcast",
                            style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.018,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[800],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.1,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Humidity",
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.height * 0.02,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey[600],
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.025,
                        ),
                        Text(
                          "UV index",
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.height * 0.02,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey[600],
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.025,
                        ),
                        Text(
                          "Wind Speed",
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.height * 0.02,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey[600],
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.025,
                        ),
                        Text(
                          "Rain Probability",
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.height * 0.02,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey[600],
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.025,
                        ),
                        Text(
                          "Pressure",
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.height * 0.02,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey[600],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "65%",
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.height * 0.02,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey[600],
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.025,
                        ),
                        Text(
                          "",
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.height * 0.02,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey[600],
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.025,
                        ),
                        Text(
                          "5.00 mph",
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.height * 0.02,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey[600],
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.025,
                        ),
                        Text(
                          "2%",
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.height * 0.02,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey[600],
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.025,
                        ),
                        Text(
                          "1023.6 Pa",
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.height * 0.02,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey[600],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      
    );
  }
}
