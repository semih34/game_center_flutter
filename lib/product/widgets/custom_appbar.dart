import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:game_center/core/init/global_providers/navigation_provider.dart';
import 'package:game_center/product/widgets/custom_avatar.dart';
import '../../core/constants/sample_data/app_data.dart';
import '../../core/constants/thema/app_thema_colors.dart';
import 'package:provider/provider.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;

  const CustomAppBar({
    Key? key,
    this.height = 56,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppThemaColors.black,
      leading: context.watch<NavigationProvider>().currentPosition == 2
          ? null
          : CustomAvatar(
              url: SampleAppData.user.avatar,
              event: () {},
              size: 50,
            ),
      elevation: 0,
      centerTitle: context.watch<NavigationProvider>().currentPosition == 2
          ? true
          : false,
      title: context.watch<NavigationProvider>().currentPosition == 2
          ? buildSearchInput()
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hi,${SampleAppData.user.name}",
                  style: const TextStyle(
                    color: AppThemaColors.white,
                    fontSize: 18,
                  ),
                ),
                const Text(
                  "Welcome back to Banky",
                  style: TextStyle(
                    color: AppThemaColors.lightWhite,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
      actions: context.watch<NavigationProvider>().currentPosition == 2
          ? null
          : [
              IconButton(
                onPressed: () {},
                icon: const Icon(Ionicons.notifications_outline),
              )
            ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);

  Widget buildSearchInput() {
    return TextField(
      style: const TextStyle(color: AppThemaColors.white),
      cursorColor: AppThemaColors.white,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 4.0),
        filled: true,
        fillColor: AppThemaColors.lightWhite,
        focusColor: AppThemaColors.lightWhite,
        hoverColor: AppThemaColors.lightWhite,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        hintText: "Search",
        hintStyle: const TextStyle(
          color: AppThemaColors.lightWhite,
        ),
        prefixIcon: const Icon(
          Feather.search,
          color: AppThemaColors.white,
        ),
      ),
    );
  }
}
