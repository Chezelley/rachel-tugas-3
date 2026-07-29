import 'package:flutter/material.dart';
import 'package:flutter_projectpertama/product_form.dart';
import 'package:flutter_projectpertama/product_detail.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Data Produk"),
        actions: [
          GestureDetector(
            // menampilkan icon +
            child: Icon(Icons.shopping_cart),
            // pada saat icon + di tap
            onTap: () async {
              //berpindah ke halaman ProdukForm
              Navigator.push(context,new MaterialPageRoute(builder: (context
              ) => ProductForm()));
            },
          )
        ],

        backgroundColor: const Color.fromARGB(255, 255, 143, 181),
      ),
      body: ListView(
        children: [
          //list 1
          ItemProduk(
              kodeProduk: "A001",
              namaProduk: "Kulkas",
              harga: 2500000,
            ),
      
          //list 2
          ItemProduk(
              kodeProduk: "A002",
              namaProduk: "TV",
              harga: 5000000,
            ),
          
          //list 3
          ItemProduk(
              kodeProduk: "A003",
              namaProduk: "Mesin Cuci",
              harga: 1500000,
            ),

          //list 4
          ItemProduk(
              kodeProduk: "A004", 
              namaProduk: "Monitor", 
              harga: 1500000,
            ),

          //list 5
          ItemProduk(
              kodeProduk: "A005", 
              namaProduk: "Laptop", 
              harga: 6000000,
            ),
          ],
        ),
      );
    }
  }

class ItemProduk extends StatelessWidget {
  final String kodeProduk;
  final String namaProduk;
  final int harga;

  ItemProduk({
    required this.kodeProduk,
    required this.namaProduk,
    required this.harga,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        child: ListTile(
          title: Text(namaProduk),
          subtitle: Text(harga.toString()),
        ),
      ),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => ProductDetail(
              kodeProduk: kodeProduk,
              namaProduk: namaProduk,
              harga: harga,
            ),
          ),
        );
      },
    );
  }
}