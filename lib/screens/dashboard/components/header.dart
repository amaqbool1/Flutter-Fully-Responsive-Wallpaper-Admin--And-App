import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:wallpapers_app_theme/controllers/MenuController.dart';
import 'package:wallpapers_app_theme/responsive.dart';
import '../../../constants.dart';

class Header extends StatelessWidget {
  const Header({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        if (!Responsive.isDesktop(context))
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: context.read<MenuController>().controlMenu,
          ),
        Expanded(
          flex: 4,
          child: RichText(
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
        ),
        if (Responsive.isDesktop(context))
          Expanded(flex: 2, child: SearchField()),
      ],
    );
  }
}

class SearchField extends StatelessWidget {
  const SearchField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        fillColor: secondaryColor,
        filled: true,
        hintText: "Search",
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        suffixIcon: InkWell(
          onTap: () {},
          child: Container(
            padding: EdgeInsets.all(defaultPadding * 0.75),
            margin: EdgeInsets.symmetric(horizontal: defaultPadding / 2),
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: const BorderRadius.all(Radius.circular(10)),
            ),
            child: Icon(
              CupertinoIcons.search,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
