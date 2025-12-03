import 'package:e_commerce_app/core/di/dependency_injection.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_app/app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  DependencyInjection.init();
  runApp(const MyApp());
}
