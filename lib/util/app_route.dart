import 'package:flutter/cupertino.dart';
import 'package:resum_ui/screen/References_screen.dart';
import 'package:resum_ui/screen/carrier_objective_screen.dart';
import 'package:resum_ui/screen/contect_photo_screen.dart';
import 'package:resum_ui/screen/eduction_screen.dart';
import 'package:resum_ui/screen/experience_screen.dart';
import 'package:resum_ui/screen/photo_screen.dart';
import 'package:resum_ui/screen/presonaldetails_screen.dart';
import 'package:resum_ui/screen/project_screen.dart';
import 'package:resum_ui/screen/resum_screen.dart';
import 'package:resum_ui/screen/resume_builder_screen.dart';
import 'package:resum_ui/screen/technicalskils_screen.dart';
import 'package:resum_ui/screen/workspace_screen.dart';

Map<String,WidgetBuilder> screen_routes={
  '/': (context) => Resume_screen(),
  'work': (context) => Workspace_screen(),
  'contects': (context) => Contect_Photo(),
  'carrier': (context) => CarrirObjective(),
  'photo': (context) => PhotoScreen(),
  'eduction': (context) => EductionScreen(),
  'experience': (context) => ExperiencesScreen(),
  'proj':(context) => ProjectScreen(),
  'references':(context) => ReferencesScreen(),
  'personal': (context) => PersonalScreen(),
  'skill': (context) => Technicalskilsscreen(),
  'resum': (context) => ResumScreen()
};