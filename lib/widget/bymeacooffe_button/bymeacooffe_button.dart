import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BuyMeaCoffeeButton extends StatelessWidget {

  const BuyMeaCoffeeButton({ Key? key }) : super(key: key);

   @override
   Widget build(BuildContext context) {
       return IconButton(
          onPressed: () {}, 
          icon: SvgPicture.asset('lib/assets/icons/buyMeaCoffee.svg')
      );
  }
}