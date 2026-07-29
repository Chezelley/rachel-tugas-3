import 'package:flutter/material.dart';

class ProductDetail extends StatefulWidget {
  final String kodeProduk;
  final String namaProduk;
  final int harga;
 
 const ProductDetail({this.kodeProduk = '', this.namaProduk = '', this.harga = 0, super.key});

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: const Text("Detail Produk"),
      backgroundColor: const Color.fromARGB(255, 255, 143, 181),
      ),
      body: SingleChildScrollView(
       child: Column(
        children: [
          Text("Kode Produk : ${widget.kodeProduk}"),
          Text("Nama Produk : ${widget.namaProduk}"),
          Text("Harga : ${widget.harga.toString()}"),
        ],
      ),
     ),
    );
  }
}