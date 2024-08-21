import 'package:e_commerce_app/view/screens/login.dart';
import 'package:flutter/material.dart';

import 'core/constants/app_route.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoute.login: (context) => const Login()
};
