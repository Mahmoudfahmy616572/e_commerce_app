import 'dart:io';

import 'package:e_commerce_app/appLink.dart';
import 'package:e_commerce_app/binding/initial_pinding.dart';
import 'package:e_commerce_app/core/localization/translate.dart';
import 'package:e_commerce_app/firebase_options.dart';
import 'package:e_commerce_app/routs.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'core/localization/local_lang.dart';
import 'core/services/services.dart';

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  print('Got a message whilst in the foreground!');
  if (message.notification != null) {
    print('Notification Title: ${message.notification?.title}');
    print('Notification Body: ${message.notification?.body}');
  }
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    //1
    options: DefaultFirebaseOptions.currentPlatform,
  );
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

  await InitialBinding().dependencies(); //2
  await initialServices();
  Get.put(MyServices());
  runApp(const MyApp());

  // Create a HttpClient instance
  HttpClient client = HttpClient();

  // Allow insecure SSL/TLS protocol versions
  client.badCertificateCallback =
      (X509Certificate cert, String host, int port) => true;

  // Make the request
  client
      .getUrl(Uri.parse("${Applink.serverLink}${Applink.login}"))
      .then((HttpClientRequest request) => request.close())
      .then((HttpClientResponse response) {
    // Handle the response
  }).catchError((error) {
    // Handle the error
    print('Error: $error');
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    LocalLangController localLang = Get.put(LocalLangController());
    Get.put(MyServices());
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      locale: localLang.language,
      translations: MyLanguages(),
      theme: localLang.apptheme,
      getPages: getPages,
    );
  }
}
