import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wallpapers_app_theme/constants.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        // it enables scrolling
        child: Column(
          children: [
            DrawerHeader(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: bgColor,
                    radius: 30,
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "W",
                            style: GoogleFonts.cinzel(
                                fontSize: 22,
                                color: primaryColor,
                                fontWeight: FontWeight.w300),
                          ),
                          TextSpan(
                            text: "W",
                            style: GoogleFonts.cinzel(
                                fontSize: 15,
                                color: primaryColor,
                                fontWeight: FontWeight.w300),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "W",
                          style: GoogleFonts.cinzel(
                              fontSize: 22,
                              color: primaryColor,
                              fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: "alls",
                          style: GoogleFonts.cinzel(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                        TextSpan(
                          text: "World",
                          style: GoogleFonts.cinzel(
                              fontSize: 15,
                              color: primaryColor,
                              fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            DrawerListTile(
              title: "All",
              press: () {},
            ),
            DrawerListTile(
              title: "Food",
              press: () {},
            ),
            DrawerListTile(
              title: "Love",
              press: () {},
            ),
            DrawerListTile(
              title: "Nature",
              press: () {},
            ),
            DrawerListTile(
              title: "Cars & Bikes",
              press: () {},
            ),
            DrawerListTile(
              title: "Games",
              press: () {},
            ),
            DrawerListTile(
              title: "Hi-Tech",
              press: () {},
            ),
            DrawerListTile(
              title: "Movies",
              press: () {},
            ),
            DrawerListTile(
              title: "Space",
              press: () {},
            ),
            DrawerListTile(
              title: "Travel",
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key key,
    // For selecting those three line once press "Command+D"
    @required this.title,
    @required this.press,
  }) : super(key: key);

  final String title;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      dense: true,
      horizontalTitleGap: 0.0,
      title: Text(
        title,
        style: GoogleFonts.cinzel(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
