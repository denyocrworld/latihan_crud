
import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/customer_form_controller.dart';

class CustomerFormView extends StatefulWidget {
    const CustomerFormView({Key? key}) : super(key: key);

    Widget build(context, CustomerFormController controller) {
    controller.view = this;

    return Scaffold(
        appBar: AppBar(
        title: const Text("CustomerForm"),
        actions: const [],
        ),
        body: SingleChildScrollView(
        child: Container(
            padding: const EdgeInsets.all(10.0),
            child: Column(
            children: const [],
            ),
        ),
        ),
    );
    }

    @override
    State<CustomerFormView> createState() => CustomerFormController();
}
    