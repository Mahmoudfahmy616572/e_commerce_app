import 'package:e_commerce_app/core/functions/check_internet.dart';
import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  var res;
  intialdata() async {
    res = await checkInternet();
  }

  @override
  void initState() {
    intialdata();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [Text("test Page")],
      ),
    );
  }
}
