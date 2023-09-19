import 'package:flutter/material.dart';
import 'package:resum_ui/util/colors.dart';
import 'package:resum_ui/util/global.dart';

class ExperiencesScreen extends StatefulWidget {
  const ExperiencesScreen({super.key});

  @override
  State<ExperiencesScreen> createState() => _ExperiencesScreenState();
}

class _ExperiencesScreenState extends State<ExperiencesScreen> {
  String employ = "previously employed";
  TextEditingController txtcours=TextEditingController();
  TextEditingController txtnew=TextEditingController();
  TextEditingController txtroles=TextEditingController();
  TextEditingController txtjoined=TextEditingController();
  TextEditingController txtexit=TextEditingController();
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
                            child: Icon(
                              Icons.navigate_before_sharp,
                              color: Colors.white,
                            )),
                        SizedBox(
                          width: 100,
                        ),
                        Text(
                          "Experience",
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
                  height: MediaQuery.of(context).size.height * 0.9,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Course/Degree",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            )),
                        SizedBox(
                          height: 5,
                        ),
                        TextField(controller: txtcours,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "Company Name",
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "New Enterise, San Francisco",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            )),
                        SizedBox(
                          height: 5,
                        ),
                        TextField(controller: txtnew,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "Quality Text Engineer",
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Roles (optional)",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            )),
                        SizedBox(
                          height: 5,
                        ),
                        TextField(controller: txtroles,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText:
                                "Working with team members to \n come  up with new concepts and \n product analysis..",
                          ),
                          maxLines: 3,
                        ),
                        Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Employed Status",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            )),
                        RadioListTile(
                          value: "previously employed",
                          groupValue: employ,
                          onChanged: (value) {
                            setState(() {
                              employ = value!;
                            });
                          },
                          title: Text("Previously Employed"),
                        ),
                        RadioListTile(
                          value: "currently employed",
                          groupValue: employ,
                          onChanged: (value) {
                            setState(() {
                              employ = value!;
                            });
                          },
                          title: Text("currently Employed"),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Text(
                              "Date Joined",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Spacer(),
                            Text(
                              "Date Exit",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Spacer(),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.4,
                              height: 50,
                              child: TextField(controller: txtjoined,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: "DD/MM/YYYY",
                                ),
                              ),
                            ),
                            Spacer(),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.4,
                              height: 50,
                              child: TextField(controller: txtexit,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: "DD/MM/YYYY",
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        ElevatedButton(onPressed: () {
                          Global g1= Global();
                          g1.experiencelist.addAll([txtcours.text,txtnew.text,txtroles.text,txtjoined.text,txtexit.text]);
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("${g1.experiencelist}")));
                        }, child: Text("save"))
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
