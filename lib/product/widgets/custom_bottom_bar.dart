import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

import '../../core/constants/thema/app_thema_colors.dart';

class CustomBottomBar extends StatelessWidget {
  final Function(int i) onClick;
  const CustomBottomBar({Key? key, required this.onClick}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white10.withOpacity(0.0001),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          buildBottomItem("Home", Feather.home, 1),
          buildBottomItem("Payments", Ionicons.card, 2),
          buildBottomItem("Store", Entypo.grid, 3),
          buildBottomItem("Support", Feather.message_square, 4),
          buildBottomItem("Settings", AntDesign.setting, 5),
        ],
      ),
    );
  }

  Widget buildBottomItem(String title, IconData icon, int index) {
    return InkWell(
      onTap: () {
        onClick(index);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: AppThemaColors.white,
            size: 35,
          ),
          Text(
            title,
            style: const TextStyle(
              color: AppThemaColors.white,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
