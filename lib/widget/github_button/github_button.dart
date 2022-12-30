import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

class GithubButton extends StatelessWidget {

  const GithubButton({ Key? key }) : super(key: key);

   @override
   Widget build(BuildContext context) {
       return IconButton(
          onPressed: () {
            launchUrl(Uri.parse('https://github.com/Mizerski/flutternary'));
          }, 
          icon: SvgPicture.asset('lib/assets/icons/github.svg')
      );
  }
}
