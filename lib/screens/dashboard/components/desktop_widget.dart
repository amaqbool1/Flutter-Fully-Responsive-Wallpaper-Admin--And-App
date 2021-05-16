import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wallpapers_app_theme/constants.dart';
import 'package:wallpapers_app_theme/utils.dart';

class DesktopWallpaperWidget extends StatelessWidget {
  const DesktopWallpaperWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          childAspectRatio: 5 / 3,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0),
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return Stack(
            children: [
              AspectRatio(
                aspectRatio: 5 / 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AspectRatio(
                      aspectRatio: 6 / 3,
                      child: Image.asset(
                        AppUtils.desktopImagesList[index],
                        fit: BoxFit.cover,
                      ),
                    ),
                    Text(
                      AppUtils.namesList[index],
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.cinzel(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.normal),
                    )
                  ],
                ),
              ),
              Positioned(
                bottom: 35,
                right: 10,
                child: CircleAvatar(
                  backgroundColor: bgColor.withOpacity(0.4),
                  child: IconButton(
                    icon: Icon(
                      Icons.file_download,
                      color: primaryColor,
                      size: 20,
                    ),
                    onPressed: () {},
                  ),
                ),
              )
            ],
          );
        },
        childCount: AppUtils.desktopImagesList.length,
      ),
    );
  }
}
