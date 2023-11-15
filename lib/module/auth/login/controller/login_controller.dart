import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/login_view.dart';

class LoginController extends State<LoginView> {
  static late LoginController instance;
  late LoginView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  /*
    TODO: 3. Buatlah state String? email dan String? password.
    */

  /*
    TODO: 4. Buatlah method login() async
    Isi dengan kode berikut:
    -----
    bool isSuccess = await AuthService().login(email: email!, password: password!,);
    if(!isSuccess){
      snackbarDanger(message: "Gagal login, email atau password salah!");
      return;
    }

    Get.offAll(MainNavigationView());
    -----
    */
}
