import 'package:flutter/material.dart';
//
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';

//TODO mudar ARGB, mudar por variaveis de ambiente

class AppBarComponent extends StatelessWidget {
  const AppBarComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        shadowColor: const Color.fromARGB(0, 219, 7, 7),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.min,
          children: const [
            Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
              size: 32,
            ),
            Text(
              'Back',
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Color.fromARGB(255, 0, 1, 0),
              ),
            ),
          ],
        ),
        actions: [
          SizedBox(
            width: 32,
            child: SvgPicture.asset('assets/icons/donation_icon.svg'),
          ),
          const SizedBox(
            width: 16,
          ),
          SizedBox(
            width: 32,
            child: SvgPicture.asset('assets/icons/github_icon.svg'),
          ),
        ],
      ),
    );
  }
}
