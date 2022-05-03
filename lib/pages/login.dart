import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mvp_all/src/style/colors/colors_views.dart';

void main() => runApp(const Login());

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: ColorsSelect.loginBackground,
          body: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 60)
              ),
              Center(
                child: Container(
                  height: 250,
                  padding: const EdgeInsets.only(top: 60),
                  child: Image.asset(
                    'assets/images/splash.png',
                  ),
                ),
              ),

              botones('Continuar con Google', FontAwesomeIcons.facebookSquare, ColorsSelect.btnGoogle, Colors.white, Colors.transparent, ""),
              botones('Continuar con Facebook', FontAwesomeIcons.google, ColorsSelect.btnFacebook, Colors.white, Colors.transparent, ""),
              botones('Registrarse con e-mail', Icons.email, ColorsSelect.btnEmail, ColorsSelect.txtBoDubHe, ColorsSelect.txtBoDubHe, "registro"),

              Column(children: [
                const Padding(padding:  EdgeInsets.only(top: 60)),
                const TextButton(
                  onPressed: null,
                  child: Text(
                    'Entrar como invitado',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: ColorsSelect.paginatorNext,
                    ),
                  ),
                ),
                const TextButton(
                  onPressed: null,
                  child: Text(
                    'Entrar como vendedor',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: ColorsSelect.btnBackgroundBo2,
                    ),
                  ),
                ),
                Container(
                  width: 300,
                  margin: const EdgeInsets.only(top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:  [
                      const Text('¿Ya tienes una cuenta?',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontSize: 18,
                            color: ColorsSelect.colorNegro,
                          )),
                      TextButton(
                        onPressed: (){
                          Navigator.pushNamed(context, 'login');
                        },
                        child: const Text(
                          'Inicia sesión',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: ColorsSelect.paginatorNext,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ])
            ],
          )),
    );
  }

  Container botones(String texto, IconData icono, Color color, Color colorIcon, Color colorSide, String ruta) {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      width: 300,
      height: 48,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          side: BorderSide(color: colorSide),
          primary: color,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30)),
        ),
        onPressed: () {
          Navigator.pushNamed(context, ruta);
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(
              icono,
              color: colorIcon,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 30),
            ),
            Text(
              texto,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18, 
                fontWeight: FontWeight.bold,
                color: colorIcon
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30),
            ),
          ],
        ),
      ),
    );
  }
}
