import 'package:facebookredesign/Model/history.dart';
import 'package:facebookredesign/Model/poster.dart';
import 'package:facebookredesign/Pages/Widgets/appBar.dart';
import 'package:facebookredesign/Pages/Widgets/navBar.dart';
import 'package:facebookredesign/Pages/Widgets/posters.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        bottomNavigationBar: const NavBar(),
        body: ListView(
          children: [
            const CustomAppBar(),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              width: double.infinity,
              height: 90,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: history.length,
                itemBuilder: (c, i) => Container(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Column(
                    children: [
                      Image.asset(
                        history[i].path,
                        width: 50,
                      ),
                      Text(
                        history[i].label,
                        style:
                            TextStyle(fontSize: 10, color: Color(0xFF444D6E)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            ...List.generate(
                poster.length,
                (i) => PosterPage(poster: poster[i],))
          ],
        ),
      ),
    );
  }
}
