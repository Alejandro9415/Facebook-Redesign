import 'package:facebookredesign/Model/post.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Buttons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
          post.length,
          (i) => Container(
            
                margin: EdgeInsets.symmetric(horizontal: 10),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(7.0)
                ),
                child: Row(
                  
                  children: [
                    SvgPicture.asset(post[i].path, height: 10,),
                    SizedBox(width: 5,),
                    Text(post[i].label, style: TextStyle(fontSize: 12),),
                  ],
                ),
              )),
    );
  }
}
