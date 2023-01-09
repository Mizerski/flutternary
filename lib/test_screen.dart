import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:google_fonts/google_fonts.dart';
import 'assets/fonts/fonts.dart';

class Fonts {
  const Fonts();

  interFont() {
    return GoogleFonts.inter();
  }
}

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Lorem Imsplum',
          style: Fonts().interFont(),
        ),
      ),
    );
  }
}
