import 'package:facebookredesign/Pages/Widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends PreferredSize {

  const CustomAppBar();
  @override
  Size get preferredSize => Size.fromHeight(160);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(16),
            )),
        padding: const EdgeInsets.symmetric(horizontal: 10),
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                CircleAvatar(
                  radius: 15,
                  child: Icon(FontAwesomeIcons.facebookF),
                ),
                Spacer(),
                IconButton(
                    icon: Icon(
                      FontAwesomeIcons.search,
                      color: Color(0xFF2D3F7B),
                      size: 16,
                    ),
                    onPressed: () {}),
                IconButton(
                    icon: Icon(
                      FontAwesomeIcons.solidBell,
                      color: Color(0xFF2D3F7B),
                      size: 16,
                    ),
                    onPressed: () {}),
                IconButton(
                    icon: Icon(
                      FontAwesomeIcons.facebookMessenger,
                      color: Color(0xFF2196F3),
                      size: 16,
                    ),
                    onPressed: () {}),
                CircleAvatar(
                  radius: 15,
                  child: Image.asset('assets/profile.png'),
                ),
              ],
            ),
            Divider(),
            Row(
              children: [
                CircleAvatar(
                  radius: 15,
                  child: Image.asset('assets/profile.png'),
                ),
                SizedBox(
                  width: 20,
                ),
                Flexible(
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: '¿Qué estas pensando, Mao?',
                        hintStyle:
                            TextStyle(fontSize: 12, color: Color(0xFF8E97B7))),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text('😊'),
                ),
              ],
            ),
            Buttons()
          ],
        ),
      ),
    );
  }
}
