import 'package:hive_flutter/adapters.dart';
import 'package:maid_service/core/utils/static_variables.dart';

class HiveBoxes{
  static Box getInitialPhase()=> Hive.box(initialPhase);
}