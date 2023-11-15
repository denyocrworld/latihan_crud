import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/login_controller.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  Widget build(context, LoginController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: const [
              //TODO: 1. Buatlah textfield email dan password
              //Gunakan snippet q_email dan q_password

              /*
              TODO: 5.
              Pada textfield email dan password
              handle event onChanged
              onChanged: (value) {
                controller.email = value;
              }

              dan

              onChanged: (value) {
                controller.password = value;
              }
              */
            ],
          ),
        ),
      ),
      //TODO: 2: Buatlah button dengan text Login di bottomnavigationbar dibawah
      //gunakan snippet: q_bottom_action_button

      //TODO: 6. Pada event onPressed pada tombol Login,
      // Panggil method controller.login();

      /*
      TODO: 7. Test
      7.1 Masukkan 
        email: admin@demo.com
        password: 123456

      7.2 Klik tombol Login
        Jika kamu masuk ke MainNavigation maka halaman login sudah selesai!
      */
    );
  }

  @override
  State<LoginView> createState() => LoginController();
}
