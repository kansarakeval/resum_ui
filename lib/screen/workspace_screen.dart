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
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, 'contects');
                    },
                      child: textFiledTile("Contact Info", Icons.contact_mail_sharp)),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, 'carrier');
                    },
                      child: textFiledTile("Carrier Objective", Icons.shopping_bag)),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, 'personal');
                    },
                      child: textFiledTile("Personal Details", Icons.person)),
                  InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, 'eduction');
                    },
                      child: textFiledTile("Eduction", Icons.cast_for_education)),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, 'experience');
                    },
                      child: textFiledTile("Experiences", Icons.e_mobiledata)),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, 'skill');
                    },
                      child: textFiledTile("Technical Skils", Icons.military_tech)),
                  textFiledTile("Interest/Hobbies", Icons.interests),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, 'proj');
                    },
                      child: textFiledTile("Projects", Icons.contact_page)),
                  textFiledTile("Achievements", Icons.description),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, 'references');
                    },
                      child: textFiledTile("Refernces", Icons.room_preferences)),
                  textFiledTile("Declaration", Icons.insert_page_break),
                  InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, 'resum');
                      },
                      child: textFiledTile("Resum", Icons.family_restroom_outlined)),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
  Widget textFiledTile(String hint,IconData icon){
    return Container(
      height: MediaQuery.of(context).size.height * 0.07,
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Icon(icon),
            SizedBox(width: 10,),
            Text("$hint"),
            Spacer(),
            Icon(Icons.arrow_forward_ios)
          ],
        ),
      ),
    );

  }
}
