import 'package:jokindo/view/transaksi/transaksi.view.dart';
import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  List<String> items = ['Mobile Legends'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        title: Text('Keranjang'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return ListTile(
            title: Text(item),
            trailing: IconButton(
              icon: Icon(Icons.remove_circle),
              onPressed: () {
                setState(() {
                  items.removeAt(index);
                });
              },
            ),
          );
        },
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Total: \$100', // Total pembelian
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    Color.fromARGB(255, 0, 0, 0),
                  ), // Ganti warna latar belakang tombol dengan warna biru
                  minimumSize: MaterialStateProperty.all<Size>(Size(100, 50)),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return transaksiview();
                  }));
                },
                child: const Text(
                  'Beli',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
