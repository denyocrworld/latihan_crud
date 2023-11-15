import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/product_list_controller.dart';

class ProductListView extends StatefulWidget {
  const ProductListView({Key? key}) : super(key: key);

  Widget build(context, ProductListController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ProductList"),
        actions: const [],
      ),
      // TODO: 4
      // - Ganti body dengan ListView builder, snippet list_builder
      // - Ganti itemCount menjadi controller.products.length  //lines ini mungkin error, biarkan dlu

      // TODO: 5
      // Tambahkan kode ini di baris pertama function itemBuilder
      // var item = controller.products[index];

      // TODO: 6
      // ! lines ini mungkin error, biarkan dlu
      // - Pada title pada item di itemBuilder, ganti jadi Text(item["product_name"])
      // - Pada subtitle pada item di itemBuilder, ganti jadi Text("${item["category"]}")
      // - Pada trailing pada item di itemBuilder, ganti jadi Text("\$${item["price"]}")

      /*
      TODO: 11
      Bungkus ListTile dengan QDismissible
        //Import jika error yaa, pakai Ctrl+.
        
      Dan tambahkan kode berikut:
        onDismiss: () => controller.delete(item["id"]),

      Kurang lebih seharusnya akan jadi sepetti ini:
          QDismissible(
            onDismiss: () => controller.delete(item["id"]),
            child: ListTile( ... )
      */

      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: const [],
          ),
        ),
      ),
      //TODO: 1. Buatlah FloatingActionButton, snippet: floating_action_button
      //TODO: 2. Ubah onPressed menjadi () async

      /*
      TODO: 3. tambahkan kode ini:
      await Get.to(ProductFormView());
      controller.getProducts(); //lines ini mungkin error, biarkan dulu
      */

      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          //
        },
      ),
    );
  }

  @override
  State<ProductListView> createState() => ProductListController();
}
