import 'package:flutter_application_1/views/home.dart';
import 'package:flutter_application_1/views/login.dart';
import 'package:flutter_application_1/views/regestration.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

var routes = [
  GetPage(name: "/", page: () => loginscreen()),
  GetPage(name: "/register", page: () => RegestrationScreen()),
  GetPage(name: "/home", page: () => HomeScreen()),
];
