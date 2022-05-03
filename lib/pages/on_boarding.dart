import 'package:flutter/material.dart';
import 'package:mvp_all/src/style/colors/colors_views.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  int pages = 0;
  PageController controller = PageController();
  int initialPage = 0;
  List<Map<String, String>> onBoardingDatos = [
    {
      "text": "ESPARCIMIENTO",
      "text1": "Brindamos todos los servicios para consentir a tu mascota.",
      "image": "assets/images/B1.png",
    },
    {
      "text": "ADOPCIÓN",
      "text1": "Brindamos todos los servicios para consentir a tu mascota.",
      "image": "assets/images/B2.png",
    },
    {
      "text": "HOSPITALIDAD",
      "text1": "Brindamos todos los servicios para consentir a tu mascota.",
      "image": "assets/images/B3.png",
    },
    {
      "text": "VETERINARIA",
      "text1": "Brindamos todos los servicios para consentir a tu mascota.",
      "image": "assets/images/B4.png",
    },
    {
      "text": "TIENDA",
      "text1": "Brindamos todos los servicios para consentir a tu mascota.",
      "image": "assets/images/B5.png",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
      color: Colors.white,
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 4,
              child: PageView.builder(
                controller: controller,
                onPageChanged: (value) {
                  setState(() {
                    pages = value;
                  });
                },
                itemCount: onBoardingDatos.length,
                itemBuilder: (context, index) => ContentBoarding(
                  text: onBoardingDatos[index]["text"]!,
                  text1: onBoardingDatos[index]["text1"]!,
                  image: onBoardingDatos[index]["image"]!,
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      onBoardingDatos.length,
                      (index) => newMethod(index: index),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.only(top: 140)),
                  SizedBox(
                    width: 300,
                    height: 50,
                    child: _button(indexAll : onBoardingDatos.length - 1 ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    )));
  }

  ElevatedButton _button({ required int indexAll}) {
    return ElevatedButton(
      onPressed: () {
        if (pages == onBoardingDatos.length - 1) {
          Navigator.pushNamed(context, 'progress');
        } else {
          controller.nextPage(
            duration: const Duration(milliseconds: 150),
            curve: Curves.easeIn
          );
        }

      },
      child: Text(
        pages == indexAll ? 'Continuar' : 'Siguiente',
        style: TextStyle(
            color: pages == indexAll
                ? ColorsSelect.btnBackgroundBo1
                : ColorsSelect.txtBoDubHe,
            fontSize: 18,
            fontWeight: FontWeight.bold),
      ),
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25), // <-- Radius
        ),
        side:  BorderSide(width: 3.0, color: pages == indexAll? Colors.transparent : Colors.grey),
        primary: pages == indexAll
            ? ColorsSelect.btnBackgroundBo2
            : ColorsSelect.btnBackgroundBo1,
      ),
    );
  }

  AnimatedContainer newMethod({required int index}) {
    return AnimatedContainer(
      margin: const EdgeInsets.only(right: 8),
      height: 4,
      width: pages == index ? 20 : 12,
      duration: kThemeAnimationDuration,
      decoration: BoxDecoration(
          color: pages == index
              ? ColorsSelect.paginatorNext
              : ColorsSelect.paginator,
          borderRadius: BorderRadius.circular(3)),
    );
  }
}

class ContentBoarding extends StatelessWidget {
  const ContentBoarding({
    Key? key,
    required this.text,
    required this.text1,
    required this.image,
  }) : super(key: key);

  final String text, text1, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        // const Divider(),
        // Text(
        //   text,
        //   style: const TextStyle(
        //     color: Colors.blue,
        //     fontSize: 22
        //   ),
        // ),
        Image.asset(
          image,
          width: 290,
          height: 290,
        ),
        Text(
          text,
          style: const TextStyle(
            color: ColorsSelect.txtBoHe,
            fontSize: 21,
          ),
        ),

        Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              text1,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: ColorsSelect.txtBoDubHe,
                fontSize: 18,
              ),
            ))
      ],
    );
  }
}
