import 'package:flutter/cupertino.dart';
import 'package:resum_ui/screen/carrier_objective_screen.dart';
import 'package:resum_ui/screen/contect_photo_screen.dart';
import 'package:resum_ui/screen/photo_screen.dart';
import 'package:resum_ui/screen/resume_builder_screen.dart';
import 'package:resum_ui/screen/workspace_screen.dart';

Map<String,WidgetBuilder> screen_routes={
  '/': (context) => Resume_screen(),
  'work': (context) => Workspace_screen(),
  'contects': (context) => Contect_Photo(),
  'carrier': (context) => CarrirObjective(),
  'photo': (context) => PhotoScreen(),
};