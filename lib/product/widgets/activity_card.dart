import 'package:flutter/material.dart';
import 'package:game_center/core/constants/thema/app_thema_colors.dart';

class ActivityCard extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final String title;
  final String subtitle;
  final int price;
  final int pt;
  final Function event;
  const ActivityCard({
    Key? key,
    required this.icon,
    required this.iconColor,
    required this.title,
    required this.subtitle,
    required this.price,
    required this.pt,
    required this.event,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppThemaColors.lightWhite,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      elevation: 8,
      child: Container(
        padding: const EdgeInsets.all(15),
        width: 180,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: iconColor.withOpacity(0.3),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Icon(
                  icon,
                  color: iconColor,
                  size: 30,
                ),
              ),
            ),
            const Spacer(),
            Text(
              title,
              style: const TextStyle(
                color: AppThemaColors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              subtitle,
              style: const TextStyle(
                color: AppThemaColors.lightWhite,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Spacer(
              flex: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "-\$$price",
                  style: const TextStyle(
                    color: AppThemaColors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: AppThemaColors.purple,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: const EdgeInsets.all(5),
                  child: Center(
                    child: Text(
                      "+ $pt pt",
                      style: const TextStyle(
                        color: AppThemaColors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
