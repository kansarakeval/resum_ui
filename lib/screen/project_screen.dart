import 'package:flutter/material.dart';
import 'package:resum_ui/util/colors.dart';
import 'package:resum_ui/util/global.dart';

class ProjectScreen extends StatefulWidget {
  const ProjectScreen({super.key});

  @override
  State<ProjectScreen> createState() => _ProjectScreenState();
}

class _ProjectScreenState extends State<ProjectScreen> {
  TextEditingController txttitel=TextEditingController();
  TextEditingController txtroles=TextEditingController();
  TextEditingController txttechnologies=TextEditingController();
  TextEditingController txtdescripation=TextEditingController();

  bool iscprograming = false;
  bool isc = false;
  bool isflutter = false;
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
                          "Project",
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
                  height: MediaQuery.of(context).size.height * 1.0,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Align(
                            alignment: Alignment.topLeft,
                            child: Text("Project Title",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
                        SizedBox(height: 5,),
                        TextField(controller: txttitel,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "Resum Bilder App",
                          ),
                        ),
                        SizedBox(height: 5,),
                        Align(
                            alignment: Alignment.topLeft,
                            child: Text("Technologies",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
                        SizedBox(height: 5,),
                        CheckboxListTile(
                          value: iscprograming,
                          onChanged: (value) {
                            setState(() {
                              iscprograming = value!;
                            });
                          },
                          title: Text("C Programing"),
                        ),
                        CheckboxListTile(
                          value: isc,
                          onChanged: (value) {
                            setState(() {
                              isc = value!;
                            });
                          },
                          title: Text("C++"),
                        ),
                        CheckboxListTile(
                          value: isflutter,
                          onChanged: (value) {
                            setState(() {
                              isflutter = value!;
                            });
                          },
                          title: Text("Flutter"),
                        ),
                        SizedBox(height: 5,),
                        Align(
                            alignment: Alignment.topLeft,
                            child: Text("Roles",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
                        SizedBox(height: 5,),
                        TextField(controller: txtroles,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "Organize team members, Code analysis",
                          ),
                          maxLines: 2,
                        ),
                        SizedBox(height: 5,),
                        Align(
                            alignment: Alignment.topLeft,
                            child: Text("Technologies",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
                        SizedBox(height: 5,),
                        TextField(controller: txttechnologies,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "5 - Programmers",
                          ),
                        ),
                        SizedBox(height: 5,),
                        Align(
                            alignment: Alignment.topLeft,
                            child: Text("Project Descripation",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
                        SizedBox(height: 5,),
                        TextField(controller: txtdescripation,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "Enter Your Project Descripation",
                          ),
                        ),
                        SizedBox(height: 20,),
                        ElevatedButton(onPressed: (){
                          Global g1= Global();
                          g1.projectlist.addAll([txttitel.text,txtroles.text,txttechnologies.text,txtdescripation.text]);
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("${g1.projectlist}")));

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
