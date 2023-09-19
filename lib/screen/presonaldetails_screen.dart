import 'package:flutter/material.dart';
import 'package:resum_ui/util/colors.dart';

class PersonalScreen extends StatefulWidget {
  const PersonalScreen({super.key});

  @override
  State<PersonalScreen> createState() => _PersonalScreenState();
}

class _PersonalScreenState extends State<PersonalScreen> {
  String maritalstatus = "singal";
  bool isEnglish = false;
  bool isHindi = false;
  bool isGujarati = false;

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
                        Spacer(),
                        Text(
                          "Personal Details",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
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
                              "DOB",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            )),
                        SizedBox(
                          height: 5,
                        ),
                        TextField(
                          keyboardType: TextInputType.datetime,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "DD/MM/YYYY",
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Marital Status",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            )),
                        SizedBox(
                          height: 5,
                        ),
                        RadioListTile(
                          value: "Single",
                          groupValue: maritalstatus,
                          onChanged: (value) {
                            setState(() {
                              maritalstatus = value!;
                            });
                          },
                          title: Text("Single"),
                        ),
                        RadioListTile(
                          value: "Married",
                          groupValue: maritalstatus,
                          onChanged: (value) {
                            setState(() {
                              maritalstatus = value!;
                            });
                          },
                          title: Text("Married"),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Languages known",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            )),
                        SizedBox(
                          height: 5,
                        ),
                        CheckboxListTile(
                          value: isEnglish,
                          onChanged: (value) {
                            setState(() {
                              isEnglish = value!;
                            });
                          },
                          title: Text("English"),
                        ),
                        CheckboxListTile(
                          value: isHindi,
                          onChanged: (value) {
                            setState(() {
                              isHindi = value!;
                            });
                          },
                          title: Text("Hindi"),
                        ),
                        CheckboxListTile(
                          value: isGujarati,
                          onChanged: (value) {
                            setState(() {
                              isGujarati = value!;
                            });
                          },
                          title: Text("Gujarati"),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Nationality",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            )),
                        SizedBox(
                          height: 5,
                        ),
                        TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "Indian",
                          ),
                        ),
                        SizedBox(height: 10,),
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
