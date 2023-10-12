import 'package:flutter/material.dart';
import 'package:resum_ui/util/colors.dart';

class ResumScreen extends StatefulWidget {
  const ResumScreen({super.key});

  @override
  State<ResumScreen> createState() => _ResumScreenState();
}

class _ResumScreenState extends State<ResumScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Resum"),
          backgroundColor: deepOrangeprimary2,
          actions: [Icon(Icons.download)],
        ),
        body: SingleChildScrollView(
          child: Row(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.35,
                height: MediaQuery.of(context).size.height,
                color: deepOrangeprimary,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: CircleAvatar(
                          radius: 50,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      mediumText("Contact"),
                      largeText("Phone"),
                      smallText("24154841546"),
                      SizedBox(height: 10,),
                      largeText("Email"),
                      smallText("keval@gmail.com"),
                      SizedBox(height: 10,),
                      largeText("Address"),
                      smallText("surat"),
                      SizedBox(height: 15,),
                      mediumText("Education"),
                      largeText("Enter your Degree"),
                      smallText("university/collage"),
                      SizedBox(height: 10,),
                      largeText("Enter your Degree"),
                      smallText("university/collage"),
                      SizedBox(height: 15,),
                      mediumText("Expertise"),
                      smallText("UI/UX"),
                      SizedBox(height: 8,),
                      smallText("visual Design"),
                      SizedBox(height: 8,),
                      smallText("flutter"),

                    ],
                  ),
                ),
              ),
              SizedBox(width: 15,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  mediumText1("Kansara Keval"),
                  largeText1("Marketing Manager"),
                  smallText1("They'll work with different teams,\nlike,"
                      "UX product design financial\ndepartments,"
                      "and sales engineers,\nto develop astrategy that  will\n"
                      "allow the product to meet\nits intended goals."),
                  SizedBox(height: 10,),
                  largeText1("Email"),
                  smallText1("keval@gmail.com"),
                  SizedBox(height: 10,),
                  largeText1("Address"),
                  smallText1("surat"),
                  SizedBox(height: 15,),
                  mediumText1("Education"),
                  largeText1("Enter your Degree"),
                  smallText1("university/collage"),
                  SizedBox(height: 10,),
                  largeText1("Enter your Degree"),
                  smallText1("university/collage"),
                  SizedBox(height: 15,),
                  mediumText1("Expertise"),
                  smallText1("UI/UX"),
                  SizedBox(height: 8,),
                  smallText1("visual Design"),
                  SizedBox(height: 8,),
                  smallText1("flutter"),


                ],
              ),

            ],
          ),
        ),
      ),
    );
  }

  Text largeText(String txt) => Text("$txt",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold, color: Colors.white),);

  Text smallText(String text) => Text("$text",style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold, color: Colors.white),);

  Text mediumText(String tital) => Text("$tital", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),);

  Text largeText1(String txt) => Text("$txt",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold, color: Colors.black),);

  Text smallText1(String text) => Text("$text",style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold, color: Colors.black),);

  Text mediumText1(String tital) => Text("$tital", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
    );

}
