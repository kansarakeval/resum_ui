import 'package:flutter/material.dart';
import 'package:resum_ui/util/colors.dart';

class CarrirObjective extends StatefulWidget {
  const CarrirObjective({super.key});

  @override
  State<CarrirObjective> createState() => _CarrirObjectiveState();
}

class _CarrirObjectiveState extends State<CarrirObjective> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade400,
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                children: [
                  SizedBox(height: 10),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.2,
                    width: MediaQuery.of(context).size.width,
                    color: deepOrangeprimary,
                    child: Row(
                      children: [
                        InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, 'work');
                            },
                            child: Icon(Icons.navigate_before_sharp,color: Colors.white,)),
                        Spacer(),
                        Text(
                          " Carrier Objective ",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        Spacer()
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.3,
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: [
                        Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Career Objective",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: deepOrangeprimary),
                            )),
                        SizedBox(height:10),
                        TextField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            label: Text(
                              "Description",
                            ),
                            border: OutlineInputBorder(),
                          ),
                          style: TextStyle(fontWeight: FontWeight.bold),
                          maxLines: 5,
                        ),
                      ]),
                    ),
                  ),
                  SizedBox(height:20),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.3,
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: [
                        SizedBox(height:20),
                        Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Current Designation (Experiance Canididate)",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: deepOrangeprimary),
                            )),
                        SizedBox(height:10),
                        TextField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            label: Text(
                              "Software Engineer",
                            ),
                            border: OutlineInputBorder(),
                          ),
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ]),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
