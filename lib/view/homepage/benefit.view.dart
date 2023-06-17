import 'package:jokindo/utils/global.colors.dart';
import 'package:jokindo/view/homepage/widgets/buttondecsapex.global.dart';
import 'package:jokindo/view/homepage/widgets/buttondecscs.global.dart';
import 'package:jokindo/view/homepage/widgets/buttondecsdota.global.dart';
import 'package:jokindo/view/homepage/widgets/buttondecsff.global.dart';
import 'package:jokindo/view/homepage/widgets/buttondecsml.global.dart';
import 'package:jokindo/view/homepage/widgets/buttondecspubg.global.dart';
import 'package:jokindo/view/homepage/widgets/buttondecsval.global.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class benefitView extends StatelessWidget {
  const benefitView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        title: Text('Benefit'),
      ),
      body: SafeArea(
        child: ListView(children: [
          Container(
            color: GlobalColors.mainColor,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              children: [
                const SizedBox(height: 25),
                Container(
                  padding: EdgeInsets.only(top: 10, left: 50),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 10.0, top: 5, bottom: 3),
                              child: Text(
                                'Work From Home',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(206, 0, 63, 114),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Container(
                              width: 250, // atur lebar kontainer
                              height: 150, // atur tinggi kontainer
                              padding: EdgeInsets.only(left: 150.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                    10), // atur jari-jari pembulatan
                                image: DecorationImage(
                                  image: AssetImage('assets/images/rumah.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),

                            const SizedBox(height: 20),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 15.0, top: 5, bottom: 3),
                              child: Text(
                                'Faster Process',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(206, 0, 63, 114),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Container(
                              width: 100, // atur lebar kontainer
                              height: 150, // atur tinggi kontainer
                              padding: EdgeInsets.only(right: 200.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                    10), // atur jari-jari pembulatan
                                image: DecorationImage(
                                  image: AssetImage('assets/images/jam.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const SizedBox(height: 20),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 15.0, top: 5, bottom: 3),
                              child: Text(
                                'Guaranteed Security',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(206, 0, 63, 114),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Container(
                              width: 100, // atur lebar kontainer
                              height: 150, // atur tinggi kontainer
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                    10), // atur jari-jari pembulatan
                                image: DecorationImage(
                                  image: AssetImage('assets/images/lock.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const SizedBox(height: 20),

                            ////apex
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 30.0, top: 5, bottom: 3),
                              child: Text(
                                'We Listen and Record Requests',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(206, 0, 63, 114),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Container(
                              width: 100, // atur lebar kontainer
                              height: 150, // atur tinggi kontainer
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                    10), // atur jari-jari pembulatan
                                image: DecorationImage(
                                  image:
                                      AssetImage('assets/images/headphone.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const SizedBox(height: 20),

                            ////PUBG
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 15.0, top: 5, bottom: 3),
                              child: Text(
                                'Buyers Rights',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(206, 0, 63, 114),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 100.0),
                              width: 100, // atur lebar kontainer
                              height: 150, // atur tinggi kontainer
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                    10), // atur jari-jari pembulatan
                                image: DecorationImage(
                                  image: AssetImage('assets/images/humy.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
