import 'package:jokindo/utils/global.colors.dart';
import 'package:jokindo/view/regis/regis.view.dart';
import 'package:flutter/material.dart';

class buttonlanding extends StatelessWidget {
  const buttonlanding({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print('Login');
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
                Color.fromARGB(255, 0, 0, 0),
              ), // Ganti warna latar belakang tombol dengan warna biru
              minimumSize: MaterialStateProperty.all<Size>(Size(30, 40)),
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return RegisterScreen();
              }));
            },
            child: const Text(
              'Registrasi',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            )),
      ),
    );
  }
}
