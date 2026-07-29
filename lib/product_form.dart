import 'package:flutter/material.dart';
import 'package:flutter_projectpertama/product_detail.dart';

class ProductForm extends StatefulWidget {
  const ProductForm({super.key});

  @override
  State<ProductForm> createState() => _ProductFormState();
}

class _ProductFormState extends State<ProductForm> {
  final _kodeProdukTextboxController = TextEditingController();
  final _namaProdukTextboxController = TextEditingController();
  final _hargaProdukTextboxController = TextEditingController();
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Form'),
      backgroundColor: const Color.fromARGB(255, 255, 143, 181),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _textboxKodeProduk(),
            _textboxNamaProduk(),
            _textboxHargaProduk(),
            _tombolSimpan()
          ],
        ),
      ),
    );
  }
  
  _textboxKodeProduk() {
    return TextField(
      decoration: InputDecoration(labelText: "Kode Produk"),
      controller: _kodeProdukTextboxController,
    );
  }
  
  _textboxNamaProduk() {
    return TextField(
      decoration: InputDecoration(labelText: "Nama Produk"),
      controller: _namaProdukTextboxController,
    );
  }
  
  _textboxHargaProduk() {
    return TextField(
      decoration: InputDecoration(labelText: "Harga"),
      controller: _hargaProdukTextboxController,
    );
  }
  
  _tombolSimpan() {
    return ElevatedButton(
      child: Text('Simpan'),
      onPressed: () {
        String kode_Produk = _kodeProdukTextboxController.text;
        String nama_Produk = _namaProdukTextboxController.text;
        int harga = int.parse(_hargaProdukTextboxController.text);

        Navigator.of(context).push(new MaterialPageRoute(builder: (context)=>ProductDetail(kodeProduk: kode_Produk, namaProduk: nama_Produk, harga: harga,)));
      },
    );
  }
}