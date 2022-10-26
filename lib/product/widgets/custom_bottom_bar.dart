import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

import '../../core/constants/thema/app_thema_colors.dart';
import 'package:provider/provider.dart';

import '../../core/init/global_providers/navigation_provider.dart';

class CustomBottomBar extends StatelessWidget {
  final Function(int i) onClick;
  const CustomBottomBar({Key? key, required this.onClick}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white10.withOpacity(0.0001),
        //color: Colors.transparent,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          buildBottomItem(context, "Home", Feather.home, 0),
          buildBottomItem(context, "Payments", Ionicons.card, 1),
          buildBottomItem(context, "Store", Entypo.grid, 2),
          buildBottomItem(context, "Support", Feather.message_square, 3),
          buildBottomItem(context, "Settings", AntDesign.setting, 4),
        ],
      ),
    );
  }

  Widget buildBottomItem(
      BuildContext context, String title, IconData icon, int index) {
    return InkWell(
      onTap: () {
        context.read<NavigationProvider>().changePosition(index);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: AppThemaColors.white.withOpacity(
                context.watch<NavigationProvider>().currentPosition == index
                    ? 1
                    : 0.4),
            size: 35,
          ),
          Text(
            title,
            style: TextStyle(
              color: AppThemaColors.white.withOpacity(
                  context.watch<NavigationProvider>().currentPosition == index
                      ? 1
                      : 0.4),
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
