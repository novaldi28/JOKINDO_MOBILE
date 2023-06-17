import 'package:jokindo/view/regis/regis.view.dart';
import 'package:flutter/material.dart';

class ButtonSocial extends StatelessWidget {
  const ButtonSocial({
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
        height: 55,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              blurRadius: 5,
            ),
          ],
        ),
        //// button email
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return RegisterScreen();
            }));
          },
          child: const Text(
            'Sign In With Email',
            style: TextStyle(
              backgroundColor: Color.fromARGB(26, 255, 250, 250),
              color: Color.fromARGB(255, 0, 0, 0),
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
