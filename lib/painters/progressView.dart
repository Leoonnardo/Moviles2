import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mvp_all/painters/progressPainter.dart';
import 'package:mvp_all/src/style/colors/colors_views.dart';

class ProgressView extends StatefulWidget {
  ProgressView({Key? key}) : super(key: key);

  @override
  State<ProgressView> createState() => _ProgressViewState();
}

class _ProgressViewState extends State<ProgressView> {
  double progress = 0.0;

   @override
  void initState() {
    super.initState();
    updateProgress();
  }

  @override
  void dispose() {
    super.dispose();
    // updateProgress();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.transparent,
          width: 200,
          height: 200,
          child: CustomPaint(
            painter: ProgressPainter(llenaraBarra: progress)
          ),
        ),
      ),
    );
  }

  void updateProgress() {
    Timer.periodic(
      const Duration(
        milliseconds: 10
      ), (timer) {
        if (progress == 100) {
          Navigator.pushReplacementNamed(context, 'home');
          progress = 0;
          timer.cancel();
        }
        else {
          setState(() {
            progress = progress + 0.5;
          });
        }
    });
  }
}


