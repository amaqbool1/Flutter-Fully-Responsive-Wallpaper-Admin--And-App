import 'package:flutter/material.dart';
import 'package:wallpapers_app_theme/responsive.dart';
import 'package:wallpapers_app_theme/screens/dashboard/components/desktop_widget.dart';
import 'package:wallpapers_app_theme/screens/dashboard/components/header.dart';
import 'package:wallpapers_app_theme/screens/dashboard/components/mobile_widget.dart';
import 'package:wallpapers_app_theme/utils.dart';
import '../../constants.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("Langtg =====${AppUtils.desktopImagesList.length}");
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.all(defaultPadding),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Header(),
            ),
            SliverToBoxAdapter(
              child: SizedBox(height: defaultPadding),
            ),
            if (Responsive.isMobile(context))
              SliverToBoxAdapter(
                child: SizedBox(height: defaultPadding),
              ),
            if (Responsive.isMobile(context)) MobileWallpaperWidget(),
            if (!Responsive.isMobile(context))
              SliverToBoxAdapter(
                child: SizedBox(height: defaultPadding),
              ),
            if (!Responsive.isMobile(context)) DesktopWallpaperWidget()
          ],
        ),
      ),
    );
  }
}
