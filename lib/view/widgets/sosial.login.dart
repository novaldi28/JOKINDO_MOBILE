import 'package:jokindo/utils/global.colors.dart';
import 'package:flutter/material.dart';


class SocialLogin extends StatelessWidget {
  const SocialLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          child: Text(
            '------ or ------ ',
            style: TextStyle(
              color: GlobalColors.textColor,
              fontWeight: FontWeight.w600,
              fontSize: 20,
            ),
          ),
          
        ),
      ],
    );
  }
}