import 'package:flutter/material.dart';
import 'package:resum_ui/util/colors.dart';

class ProjectScreen extends StatefulWidget {
  const ProjectScreen({super.key});

  @override
  State<ProjectScreen> createState() => _ProjectScreenState();
}

class _ProjectScreenState extends State<ProjectScreen> {
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
                  height: MediaQuery.of(context).size.height * 0.9,
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
                        TextField(
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
                        TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "Quality Text Engineer",
                          ),
                        ),
                        SizedBox(height: 5,),
                        Align(
                            alignment: Alignment.topLeft,
                            child: Text("Roles",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
                        SizedBox(height: 5,),
                        TextField(
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
                        TextField(
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
                        TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "Enter Your Project Descripation",
                          ),
                        ),
                        SizedBox(height: 20,),
                        ElevatedButton(onPressed: (){}, child: Text("save"))
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
