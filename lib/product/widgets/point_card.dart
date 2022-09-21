import 'package:flutter/material.dart';
import 'package:game_center/core/constants/thema/app_thema_colors.dart';

class PointCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;
  final int pt;

  const PointCard({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.subtitle,
    required this.pt,
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
        height: 150,
        width: 250,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
        ),
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(imageUrl),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(
                    5,
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          color: AppThemaColors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                        maxLines: 1,
                      ),
                      Text(
                        subtitle,
                        style: const TextStyle(
                          color: AppThemaColors.lightWhite,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
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
            ),
          ],
        ),
      ),
    );
  }
}
