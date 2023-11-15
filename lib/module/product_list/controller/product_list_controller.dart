import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/product_list_view.dart';

class ProductListController extends State<ProductListView> {
  static late ProductListController instance;
  late ProductListView view;

  @override
  void initState() {
    instance = this;
    //TODO: 9 Panggil method getProducts() disini
    //Daftar product mungkin tidak langsung muncul,
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  /*
    TODO: 7
    Buat state List products = [];
    */

  /*
    TODO: 8
    Buat method getProducts() async
    Isi dengan kode berikut:
    -----
    products = await ProductService().getProducts();
    setState((){});
    -----
    */


    /*
      TODO: 10. Buatlah metod delete(int id) async
      isi dengan kode berikut:
      -----
      await ProductService().delete(id);
      getProducts();
      -----
    */
}
