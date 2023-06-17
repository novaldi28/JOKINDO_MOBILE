import 'package:jokindo/utils/global.colors.dart';
import 'package:jokindo/view/homepage/widgets/buttonkeranjang.global.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:get/get.dart';

import '../widgets/buttontransaksi.global.dart';

class dotadecs extends StatelessWidget {
  const dotadecs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        title: Text('Deskripsi Games'),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              color: GlobalColors.mainColor,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      hintText: 'Search Games ..',
                      prefixIcon: Icon(
                        Icons.search,
                        color: Color.fromARGB(255, 209, 223, 241),
                      ),
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide.none),
                    ),
                  ),
                  const SizedBox(height: 25),
                  Container(
                      padding: EdgeInsets.only(top: 10),
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.only(
                                    left: 25,
                                    top: 30,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: 300, // atur lebar kontainer
                                            height:
                                                150, // atur tinggi kontainer
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(
                                                  10), // atur jari-jari pembulatan
                                              image: DecorationImage(
                                                image: AssetImage(
                                                    'assets/images/Dota2.jpg'),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsets.only(left: 120.0),
                                            child: Text(
                                              'Dota 2',
                                              style: TextStyle(
                                                fontSize: 20,
                                                color: Color.fromARGB(
                                                    255, 0, 17, 32),
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: 16.0, right: 16.0),
                                            child: Text(
                                              'Multiplayer Online Battle Arena (MOBA)\n',
                                              style: TextStyle(
                                                fontSize: 15,
                                                color: Color.fromARGB(
                                                    255, 0, 17, 32),
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: 100.0, top: 10),
                                            child: Text(
                                              'Description',
                                              style: TextStyle(
                                                fontSize: 15,
                                                color: Color.fromARGB(
                                                    255, 0, 41, 77),
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          Text(
                                            'Dota 2 adalah sebuah game online multiplayer\nbattle arena (MOBA) yang dimainkan oleh dua tim\n beranggotakan lima pemain.',
                                            textWidthBasis:
                                                TextWidthBasis.longestLine,
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Color.fromARGB(
                                                  255, 0, 22, 41),
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            'Tujuan game ini menghancurkan markas(base) musuh\ndi sisi lain petasambil melindungi markas sendiri.',
                                            textWidthBasis:
                                                TextWidthBasis.longestLine,
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Color.fromARGB(
                                                  255, 0, 22, 41),
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            'Pertandingan biasanya berlangsung selama\n30 hingga 60 menit tergantung pada strategi dan\nkeahlian masing-masing tim.',
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Color.fromARGB(
                                                  255, 0, 22, 41),
                                              fontWeight: FontWeight.bold,
                                            ),
                                            maxLines: 4,
                                          ),
                                          Text(
                                            'Rank dalam Games ini: Herald (level 1-5)\nGuardian (level 1-5), Crusader (level 1-5)\nArchon (level 1-5), Legend (level 1-5)\nAncient (level 1-5), Divine (level 1-5), Immortal top 1000\nImmortal top 100, Immortal top 10, Immortal top 1',
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Color.fromARGB(
                                                  255, 0, 22, 41),
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          const SizedBox(height: 25),
                                          Center(
                                            child: Buttontransaksi(),
                                          ),
                                          Center(
                                            child: buttonkeranjang(),
                                          )
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
}
