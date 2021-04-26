import 'package:facebookredesign/Model/menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NavBar extends StatelessWidget {

  const NavBar();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.vertical(top: Radius.circular(20))
      ),
        height: kToolbarHeight,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(
            menu.length,
            (i) => InkWell(
              child: SvgPicture.asset(menu[i].path, width: 25,height: 21,),
              onTap: () {},
            ),
          ),
        ));
  }
}