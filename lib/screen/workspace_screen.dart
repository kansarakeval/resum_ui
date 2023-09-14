import 'package:flutter/material.dart';
import 'package:resum_ui/util/colors.dart';

class Workspace_screen extends StatefulWidget {
  const Workspace_screen({super.key});

  @override
  State<Workspace_screen> createState() => _Workspace_screenState();
}

class _Workspace_screenState extends State<Workspace_screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade50,
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.2,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.deepOrange,
                    child: Column(
                      children: [
                        SizedBox(height: 40),
                        Text(
                          "Resume Builder App",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        Spacer(),
                        Text(
                          "    RESUMES    ",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        SizedBox(height: 15),
                      ],
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.07,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(Icons.quick_contacts_mail_outlined),
                          SizedBox(width: 10,),
                          Text("Contact Info"),
                          Spacer(),
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, 'contects');
                            },
                              child: Icon(Icons.arrow_forward_ios))
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 6),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.07,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(Icons.area_chart),
                          SizedBox(width: 10,),
                          Text("Carrier Objective"),
                          Spacer(),
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, 'carrier');
                            },
                              child: Icon(Icons.arrow_forward_ios))
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 6),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.07,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(Icons.person),
                          SizedBox(width: 10,),
                          Text("Personal Details"),
                          Spacer(),
                          Icon(Icons.arrow_forward_ios)
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 6),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.07,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(Icons.cast_for_education),
                          SizedBox(width: 10,),
                          Text("Eduction"),
                          Spacer(),
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, 'eduction');
                            },
                              child: Icon(Icons.arrow_forward_ios))
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 6),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.07,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(Icons.e_mobiledata),
                          SizedBox(width: 10,),
                          Text("Experiences"),
                          Spacer(),
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, 'experience');
                            },
                              child: Icon(Icons.arrow_forward_ios))
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 6),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.07,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(Icons.military_tech),
                          SizedBox(width: 10,),
                          Text("Technical Skils"),
                          Spacer(),
                          Icon(Icons.arrow_forward_ios)
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 6),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.07,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(Icons.interests),
                          SizedBox(width: 10,),
                          Text("Interest/Hobbies"),
                          Spacer(),
                          Icon(Icons.arrow_forward_ios)
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 6),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.07,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(Icons.contact_page),
                          SizedBox(width: 10,),
                          Text("Projects"),
                          Spacer(),
                          Icon(Icons.arrow_forward_ios)
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 6),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.07,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(Icons.description),
                          SizedBox(width: 10,),
                          Text("Achievements"),
                          Spacer(),
                          Icon(Icons.arrow_forward_ios)
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 6),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.07,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(Icons.room_preferences),
                          SizedBox(width: 10,),
                          Text("Refernces"),
                          Spacer(),
                          Icon(Icons.arrow_forward_ios)
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 6),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.07,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.white,
                    child: Row(
                      children: [
                        Icon(Icons.insert_page_break),
                        SizedBox(width: 10,),
                        Text("Declaration"),
                        Spacer(),
                        Icon(Icons.arrow_forward_ios)
                      ],
                    ),
                  ),
                  SizedBox(height: 6),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
