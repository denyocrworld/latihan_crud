import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/product_form_view.dart';

class ProductFormController extends State<ProductFormView> {
  static late ProductFormController instance;
  late ProductFormView view;

  @override
  void initState() {
    instance = this;
    /*
    TODO: 8
    Tambahkan kode berikut
    if(isEditMode){
      photo = widget.item!["photo"];
      productName = widget.item!["product_name"];
      price = widget.item!["price"];
      description = widget.item!["description"];
    }
    */

    //TODO: 9
    // Hot Restart, login lagi
    // Coba semua fitur Create, Update dan Delete dari Products apakah sudah bekerja?
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  //TODO: 5. Buatlah getter isEditMode
  // bool get isEditMode => widget.item != null;

  //TODO: 6. Buatlah state
  /*
    String? photo;
    String? productName;
    double? price;
    String? description;
  */

  //TODO: 7. Buatlah method save() async
  /*
    Tambahkan kode berikut:
    -----
    if(isEditMode) {
      //Edit
      await  ProductService().update(widget.item!["id"], {
        "photo": photo!,
        "productName": productName!,
        "price": price!,
        "description": description!,
      });
    }
    else {
      //Create
      await ProductService().create({
        "photo": photo!,
        "productName": productName!,
        "price": price!,
        "description": description!,
      });
    }

    Get.back();
    -----
  */
}
