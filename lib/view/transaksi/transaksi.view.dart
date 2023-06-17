import 'package:jokindo/utils/global.colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:get/get.dart';

import '../widgets/buttontransaksi.global.dart';

@override
class transaksiview extends StatelessWidget {
  const transaksiview({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        title: Text('Pembayaran'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Detail Pembayaran',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            Text('Setiap kenaikan rank akan di kenakan biaya 15k'),
            Text('Metode Pembayaran: shopeepay, gopay, dana, dan bank'),
            SizedBox(height: 24.0),
            Text(
              'Informasi Kartu Kredit',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              decoration: InputDecoration(
                labelText: 'Username',
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              decoration: InputDecoration(
                labelText: 'Jumlah Kenaikan rank, range (1 - 10)',
              ),
            ),
            SizedBox(height: 24.0),
            ElevatedButton(
              style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                Color.fromARGB(255, 0, 0, 0),
              ), // Ganti warna latar belakang tombol dengan warna biru
              minimumSize: MaterialStateProperty.all<Size>(Size(30, 40)),
            ),
              onPressed: () {
                // Logika untuk memproses pembayaran
              },
              child: Text('Bayar'),
            ),
          ],
        ),
      ),
    );
  }
}
