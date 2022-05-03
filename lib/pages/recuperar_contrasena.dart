import 'package:flutter/material.dart';
import 'package:mvp_all/src/style/colors/colors_views.dart';

class RecuperarPage extends StatefulWidget {
  const RecuperarPage({ Key? key }) : super(key: key);

  @override
  State<RecuperarPage> createState() => _RecuperarPageState();
}

class _RecuperarPageState extends State<RecuperarPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: ColorsSelect.paginatorNext),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text('Recuperar contraseña'),
        iconTheme: const IconThemeData(color: ColorsSelect.paginatorNext),
        actions: [
          Container(
            padding: const EdgeInsets.only(left: 10),
            height: 60,
            width: 100,
            child: Image.asset('assets/images/splash.png'),
          )
        ],
        backgroundColor: ColorsSelect.txtBoHe,
      ),
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                alignment: Alignment.bottomLeft,
                margin: const EdgeInsets.only(bottom: 50, top: 40, left: 25),
                child: const Text(
                  'Ingresa tu email para recuperar tu contraseña',
                  style: TextStyle(fontSize: 20, color: ColorsSelect.txtBoDubHe, fontWeight: FontWeight.bold,),
                ),
              ),
              Container(
                alignment: Alignment.bottomLeft,
                margin: const EdgeInsets.only(left: 25, bottom: 10),
                child: const Text(
                  'Correo electrónico',
                  textAlign: TextAlign.center,
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
                    hintText: 'Dirección de correo',
                  ),
                  onChanged: (text) {},
                ),
              ),
              Container(
              padding: const EdgeInsets.only(left: 10, top: 15),
              width: 360,
              child: const Text(
                  'Ingrese su correo electronico registrado y le \nenviaremos un correo electronico que contiene un \nenlace para restablecer su contraseña.',
                  style:
                      TextStyle(fontSize: 17, color: ColorsSelect.txtBoDubHe)),
            ),
                  const Padding(padding: EdgeInsets.only(top:350)),
                  Container(
                padding: const EdgeInsets.only(top: 60),
                child: SizedBox(
                  width: size.width - 70,
                  height: 50,
                  child: ElevatedButton(
                      child: const Text(
                        'Enviar solicitud',
                        style: TextStyle(fontSize: 18),
                      ),
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          primary: ColorsSelect.splashColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)))),
                ),
              ),
            ],
          ),
        ),

      ),
    );
  }
}