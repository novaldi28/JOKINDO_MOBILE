import 'dart:convert';

import 'package:jokindo/view/regis/widgets/buttonsignreg.regis.dart';
import 'package:flutter/material.dart';
import 'package:jokindo/services/auth_services.dart';
import 'package:jokindo/services/global.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import 'package:jokindo/view/homepage/homepage.view.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String _email = '';
  String _password = '';

  loginPressed() async {
    try {
      if (_email.isNotEmpty && _password.isNotEmpty) {
        http.Response response = await AuthServices.login(_email, _password);
        Map responseMap = jsonDecode(response.body);
        if (response.statusCode == 200) {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => const homepageView(),
              ));
        } else {
          throw errorSnackBar(context, responseMap.values.first);
        }
      } else {
        throw errorSnackBar(context, 'enter all required fields');
      }
    } catch (error) {
      Get.back();
      showDialog(
          context: Get.context!,
          builder: (context) {
            return SimpleDialog(
              title: Text("Error"),
              contentPadding: EdgeInsets.all(20),
              children: [Text(error.toString())],
            );
          });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          elevation: 0,
          title: const Text(
            'Login',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              TextField(
                decoration: const InputDecoration(
                  hintText: 'Enter your email',
                ),
                onChanged: (value) {
                  _email = value;
                },
              ),
              const SizedBox(
                height: 30,
              ),
              TextField(
                obscureText: true,
                decoration: const InputDecoration(
                  hintText: 'Enter your password',
                ),
                onChanged: (value) {
                  _password = value;
                },
              ),
              const SizedBox(
                height: 30,
              ),
              buttonsignreg(
                btnText: 'LOG IN',
                onBtnPressed: () => loginPressed(),
              ),


            ],
          ),
        ));
  }
}
