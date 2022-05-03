import 'package:flutter/material.dart';
import 'package:mvp_all/src/style/colors/colors_views.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool mostrar = true;
  bool ver = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: ColorsSelect.paginatorNext),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text('Iniciar sesión'),
        iconTheme: const IconThemeData(color: ColorsSelect.paginatorNext),
        actions: [
          Container(
            padding: const EdgeInsets.only(left: 90),
            height: 60,
            width: 170,
            child: Image.asset('assets/images/splash.png'),
          )
        ],
        backgroundColor: ColorsSelect.txtBoHe,
      ),
      body: Container(
        width: size.width,
        height: size.height,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                alignment: Alignment.bottomLeft,
                margin: const EdgeInsets.only(left: 25 ,bottom: 50, top: 40),
                child: const Text(
                  'Inicia sesión con tu cuenta para continuar',
                  textAlign: TextAlign.right,
                  // textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 20, color: ColorsSelect.txtBoDubHe, fontWeight: FontWeight.bold,),
                ),
              ),
              Container(
                alignment: Alignment.bottomLeft,
                margin: const EdgeInsets.only(left: 25, bottom: 10),
                child: const Text(
                  'Correo electrónico',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 20, left: 20),
                child: TextField(
                  textAlign: TextAlign.left,
                  style: const TextStyle(fontSize: 18),
                  autofocus: true,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        borderSide: BorderSide(color: Colors.black, width: 1)),
                    hintText: 'Email Address',
                  ),
                  onChanged: (text) {},
                ),
              ),
              const Padding(padding: EdgeInsets.only(top: 20)),
              Container(
                alignment: Alignment.bottomLeft,
                margin: const EdgeInsets.only(left: 25, bottom: 10),
                child: const Text(
                  'Contraseña',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 20, left: 20),
                child: TextField(
                  obscureText: mostrar,
                  textAlign: TextAlign.left,
                  style: const TextStyle(fontSize: 18),
                  autofocus: true,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      icon:
                          Icon(mostrar ? Icons.visibility : Icons.visibility_off),
                      onPressed: () {
                        setState(() {
                          mostrar = !mostrar;
                        });
                      },
                    ),
                    border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        borderSide: BorderSide(color: Colors.black, width: 1)),
                    hintText: 'Password',
                  ),
                  onChanged: (text) {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children:  [
                    TextButton(
                      onPressed: (){
                        Navigator.pushNamed(context, 'recuperar');
                      },
                      child: const Text(
                        '¿Has olvidado tu contraseña?',
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
              ),
              const Padding(padding: EdgeInsets.only(top:160)),
              Container(
                padding: const EdgeInsets.only(top: 90),
                child: SizedBox(
                  width: size.width - 70,
                  height: 50,
                  child: ElevatedButton(
                      child: const Text(
                        'Iniciar sesion',
                        style: TextStyle(fontSize: 18),
                      ),
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          primary: ColorsSelect.splashColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)))),
                ),
              ),
              Container(
                width: 300,
                margin: const EdgeInsets.only(top: 30, left: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children:  [
                    const Text('¿Todavia no tienes cuenta?',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      )),
                    // const Text('  '),
                    TextButton(
                      onPressed: (){
                        Navigator.pushNamed(context, 'registro');
                      },
                      child: const Text(
                        'Registrate',
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
            ],
          ),
        ),

      ),
    );
  }
}