import 'package:jokindo/utils/global.colors.dart';
import 'package:jokindo/view/homepage/widgets/buttonbenefit.global.dart';
import 'package:jokindo/view/landingpage/buttonreglanding.global.dart';
import 'package:flutter/material.dart';

class landingview extends StatelessWidget {
  const landingview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              color: GlobalColors.mainColor,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                children: [
                  const SizedBox(height: 25),
                  Container(
                      padding: const EdgeInsets.only(top: 2),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: 900,
                            padding: const EdgeInsets.only(left: 50.0, bottom: 400),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  padding: const EdgeInsets.only(
                                    left: 20,
                                    top: 3,
                                  ),
                                  child: Column(
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            padding: const EdgeInsets.only(
                                                left: 950.0, bottom: 100),
                                            width: 300, // atur lebar kontainer
                                            height:
                                                250, // atur tinggi kontainer
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(
                                                  10), // atur jari-jari pembulatan
                                              image: const DecorationImage(
                                                image: AssetImage(
                                                    'assets/images/logooo.png'),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.only(
                                                left: 9.0, top: 5, bottom: 3),
                                            child: Text(
                                              'Lakukan Sign Up agar dapat mengakses konten',
                                              style: TextStyle(
                                                fontSize: 15.0,
                                                color: Color.fromARGB(
                                                    206, 0, 0, 0),
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.only(
                                                left: 80.0, top: 5, bottom: 3),
                                            child: Text(
                                              'yang kami tawarkan',
                                              style: TextStyle(
                                                fontSize: 15.0,
                                                color: Color.fromARGB(
                                                    206, 0, 0, 0),
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            padding:
                                            const EdgeInsets.only(left: 105.0),
                                            child: const buttonlanding(),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.only(
                                                left: 30.0, top: 5, bottom: 3),
                                            child: Text(
                                              'Kami menawarkan berbagai benefit,',
                                              style: TextStyle(
                                                fontSize: 15.0,
                                                color: Color.fromARGB(
                                                    206, 0, 0, 0),
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.only(
                                                left: 6.0, top: 5, bottom: 3),
                                            child: Text(
                                              'Klik button dibawah dan pelajari lebih lanjut!!!',
                                              style: TextStyle(
                                                fontSize: 15.0,
                                                color: Color.fromARGB(
                                                    206, 0, 0, 0),
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(height: 10),
                                          Container(
                                            padding:
                                                const EdgeInsets.only(left: 115.0),
                                            child: const buttonbenefit(),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  loginPressed() {}
}
