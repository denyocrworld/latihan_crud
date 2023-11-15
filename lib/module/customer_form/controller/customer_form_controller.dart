
import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/customer_form_view.dart';

class CustomerFormController extends State<CustomerFormView> {
    static late CustomerFormController instance;
    late CustomerFormView view;

    @override
    void initState() {
        instance = this;
        super.initState();
    }

    @override
    void dispose() => super.dispose();

    @override
    Widget build(BuildContext context) => widget.build(context, this);
}
        
    