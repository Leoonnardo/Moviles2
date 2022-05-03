import 'package:flutter/material.dart';
import 'package:mvp_all/pages/iniciar_seion.dart';
import 'package:mvp_all/pages/login.dart';
import 'package:mvp_all/pages/recuperar_contrasena.dart';
import 'package:mvp_all/pages/registro.dart';
import 'package:mvp_all/painters/progressView.dart';
import 'package:mvp_all/splash/splas_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'movil',
      initialRoute: 'splash',
      routes: {
        'home': (BuildContext context) => const Login(),
        // 'act2': (BuildContext context) => const HomeHeader(),
        'splash' : (BuildContext context)  => const SplashView(),
        'progress':(BuildContext context) =>  ProgressView(),
        'registro':(BuildContext context) =>  const Registro(),
        'login':(BuildContext context) =>  const LoginPage(),
        'recuperar':(BuildContext context) =>  const RecuperarPage(),
      },
    );
  }
}
