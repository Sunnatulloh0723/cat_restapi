import 'package:flutter/cupertino.dart';
import 'package:write_again_cat_api/app.dart';
import 'package:write_again_cat_api/core/service_locater.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  serviceLocator();
  runApp(const CatApp());
}
