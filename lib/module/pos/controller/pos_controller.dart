
import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/pos_view.dart';

class PosController extends State<PosView> {
    static late PosController instance;
    late PosView view;

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
        
    