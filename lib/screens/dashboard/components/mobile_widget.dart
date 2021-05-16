import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wallpapers_app_theme/constants.dart';
import 'package:wallpapers_app_theme/utils.dart';

class MobileWallpaperWidget extends StatelessWidget {
  const MobileWallpaperWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.58,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0),
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return Stack(
            children: [
              AspectRatio(
                aspectRatio: 0.58,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    AspectRatio(
                      aspectRatio: 0.64,
                      child: Image.asset(
                        AppUtils.mobileImagesList[index],
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
        childCount: AppUtils.mobileImagesList.length,
      ),
    );
  }
}
