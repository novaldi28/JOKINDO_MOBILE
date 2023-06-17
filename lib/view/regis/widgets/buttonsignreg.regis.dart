import 'package:jokindo/utils/global.colors.dart';
import 'package:jokindo/view/login/login.view.dart';
import 'package:flutter/material.dart';

import '../homepage.view.dart';

class buttonsignreg extends StatelessWidget {
  final String btnText;
  final Function onBtnPressed;

  const buttonsignreg(
      {Key? key, required this.btnText, required this.onBtnPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          print('Sign Up');
        },
        child: Container(
          alignment: Alignment.center,
          height: 40,
          decoration: BoxDecoration(
            color: GlobalColors.mainColor,
            borderRadius: BorderRadius.circular(6),
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(255, 255, 255, 255).withOpacity(0.1),
                blurRadius: 10,
              ),
            ],
          ),
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                  Color.fromARGB(255, 0, 0, 0)),
              minimumSize: MaterialStateProperty.all<Size>(Size(200,
                  40)), // Mengatur ukuran minimum tombol menjadi lebar 200 dan tinggi 50 // Ganti warna latar belakang tombol dengan warna biru
            ),
            onPressed: () {
              onBtnPressed();
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return LoginScreen();
              }));
            },
            child: const Text(
              'Sign In',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ));
  }
}
