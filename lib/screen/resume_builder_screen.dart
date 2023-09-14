import 'package:flutter/material.dart';
import 'package:resum_ui/util/colors.dart';

class Resume_screen extends StatefulWidget {
  const Resume_screen({super.key});

  @override
  State<Resume_screen> createState() => _Resume_screenState();
}

class _Resume_screenState extends State<Resume_screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height:MediaQuery.of(context).size.height*0.2,
              width:MediaQuery.of(context).size.width,
              color: deepOrangeprimary,
              child:   Column(
                children: [
                  SizedBox(height: 40),
                  Text("Resume Builder",style:TextStyle(fontSize: 20,color: Colors.white),),
                  Spacer( ),
                  Text("    RESUMES    ",style:TextStyle(fontSize: 20,color: Colors.white),),
                  SizedBox(height: 15),
                ],
              ),
            ),
            SizedBox(height: 20),
            Image.asset("assets/image/open-cardboard-box.png",height:100,width:100),
            Text(" No Resumes + Creat New Resumes",style:TextStyle(fontSize: 20,color: Colors.grey.shade400),),
            Spacer( ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: FloatingActionButton(onPressed: () {
                  Navigator.pushNamed(context,'work');
                },child: Icon(Icons.add),
                  backgroundColor: deepOrangeprimary,),
              ),
            ),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
