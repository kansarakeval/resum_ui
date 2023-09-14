import 'package:flutter/material.dart';
import 'package:resum_ui/util/colors.dart';

class ReferencesScreen extends StatefulWidget {
  const ReferencesScreen({super.key});

  @override
  State<ReferencesScreen> createState() => _ReferencesScreenState();
}

class _ReferencesScreenState extends State<ReferencesScreen> {
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
                          "References",
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
                  height: MediaQuery.of(context).size.height * 0.5,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Align(
                            alignment: Alignment.topLeft,
                            child: Text("Reference Name",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
                        SizedBox(height: 5,),
                        TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "Suresh shah",
                          ),
                        ),
                        SizedBox(height: 5,),
                        Align(
                            alignment: Alignment.topLeft,
                            child: Text("Designation",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
                        SizedBox(height: 5,),
                        TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "Marketing Manager ID-342332",
                          ),
                        ),
                        SizedBox(height: 5,),
                        Align(
                            alignment: Alignment.topLeft,
                            child: Text("Organization/Institute",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
                        SizedBox(height: 5,),
                        TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "Green Energy Pvt. Ltd",
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
