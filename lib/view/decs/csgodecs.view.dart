import 'package:jokindo/utils/global.colors.dart';
import 'package:jokindo/view/homepage/widgets/buttonkeranjang.global.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:get/get.dart';

import '../widgets/buttontransaksi.global.dart';

class csdecs extends StatelessWidget {
  const csdecs({super.key});

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
                                                    'assets/images/CS GO.jpg'),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsets.only(left: 115.0),
                                            child: Text(
                                              'CS : GO',
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
                                            'CS:GO (Counter-Strike: Global Offensive)\nadalah game onlinefirst-person shooter (FPS)\ntaktis yang dimainkan oleh dua tim beranggotakan\nlima pemain.',
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
                                            'Tujuan dari permainan ini adalah menyelesaikan\nmisi atau mengeliminasi seluruh tim lawan.',
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
                                            'Pertandingan terdiri dari beberapa putaran dan\nberakhir ketika salah satu tim mencapai\njumlah kemenangan yang ditentukan.',
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Color.fromARGB(
                                                  255, 0, 22, 41),
                                              fontWeight: FontWeight.bold,
                                            ),
                                            maxLines: 4,
                                          ),
                                          Text(
                                            'Rank dalam Games ini: Silver I - IV, Silver Elite\nSilver Elite Master, Gold Nova I - III\nGold Nova Master, Master Guardian I - II\nMaster Guardian Elite, Distinguished Master Guardian\nLegendary Eagle, Legendary Eagle Master\nSupreme Master First Class, Global Elite',
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
