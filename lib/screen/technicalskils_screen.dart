import 'package:flutter/material.dart';
import 'package:resum_ui/util/colors.dart';

class Technicalskilsscreen extends StatefulWidget {
  const Technicalskilsscreen({super.key});

  @override
  State<Technicalskilsscreen> createState() => _TechnicalskilsscreenState();
}

class _TechnicalskilsscreenState extends State<Technicalskilsscreen> {

  List<TextEditingController> datalist = [];
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
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context, 'profile');
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Icon(
                              Icons.arrow_back_ios,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 60,
                        ),
                        Text(
                          "TechnicalSkils",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),

                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Column(
                          children:
                            datalist.asMap().entries.map((e) =>  TextField(
                              controller: e.value,
                  decoration: InputDecoration(
                  hintText: "c programing",
                      suffixIcon: IconButton(onPressed: (){
                        setState(() {
                          datalist.removeAt(e.key);
                        });

                      }, icon: Icon(Icons.close))),
                )).toList(),
                        ),

                        SizedBox(
                          height: 10,
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              datalist.add(TextEditingController());
                            });

                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width*0.8,
                            height: MediaQuery.of(context).size.height*0.07,
                            decoration: BoxDecoration(border: Border.all(color: Colors.black),borderRadius: BorderRadius.circular(10)),
                            child: Icon(Icons.add),
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
