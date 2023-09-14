import 'package:flutter/material.dart';
import 'package:resum_ui/util/colors.dart';

class EductionScreen extends StatefulWidget {
  const EductionScreen({super.key});

  @override
  State<EductionScreen> createState() => _EductionScreenState();
}

class _EductionScreenState extends State<EductionScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade300,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.2,
                width: MediaQuery.of(context).size.width * 1.0,
                color: deepOrangeprimary,
                child: Column(
                  children: [
                    Spacer(),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, 'work');
                          },
                            child: Icon(Icons.navigate_before_sharp,color: Colors.white,)),
                        SizedBox(width: 100,),
                        Text(
                          "Eduction",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Spacer()
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.6,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                            child: Text("Course/Degree",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
                        SizedBox(height: 5,),
                        TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                              hintText: "B.Tech Information Technology",
                          ),
                        ),
                        SizedBox(height: 5,),
                        Align(
                            alignment: Alignment.topLeft,
                            child: Text("School/College/Institute",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
                        SizedBox(height: 5,),
                        TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "Bhagavan Mahavir Universtiy",
                          ),
                        ),
                        SizedBox(height: 5,),
                        Align(
                            alignment: Alignment.topLeft,
                            child: Text("School/College/Institute",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
                        SizedBox(height: 5,),
                        TextField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "70%(or) 7.0 CGPA",
                          ),
                        ),
                        SizedBox(height: 5,),

                        Align(
                            alignment: Alignment.topLeft,
                            child: Text("Year Of Pass",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
                        SizedBox(height: 5,),
                        TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "2019",
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
