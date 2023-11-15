import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/product_form_controller.dart';

class ProductFormView extends StatefulWidget {
  //TODO: 1. Tambahkan kode berikut
  /*
    final Map? item;
    const ProductFormView({
      Key? key,
      this.item,
    }) : super(key: key);
  */

  Widget build(context, ProductFormController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ProductForm"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: const [
              /*
              TODO: 4. Buatlah Form dengan data berikut:
              q_image_picker    => Photo
                value: controller.photo,
                onChanged: (value) {
                  controller.photo = value;
                }

              q_textfield       => Product Name
                value: controller.productName,
                onChanged: (value) {
                  controller.productName = value;
                }

              q_numberfield     => Price
                value: controller.price?.toString(),
                onChanged: (value) {
                  controller.price = double.tryParse(value) ?? 0;
                }

              q_memofield       => Description
                value: controller.description,
                onChanged: (value) {
                  controller.description = value;
                }
              */
            ],
          ),
        ),
      ),
      //TODO: 2. Tambahkan button Save di bottom NavigationBar, q_action_bottom_action
      //TODO: 3. Panggil method controller.save() ketika tombol Save di klik
    );
  }

  @override
  State<ProductFormView> createState() => ProductFormController();
}
