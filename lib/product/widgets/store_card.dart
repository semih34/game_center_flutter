import 'package:flutter/material.dart';
import '../../core/constants/thema/app_thema_colors.dart';

class StoreCard extends StatelessWidget {
  final String url;
  final String title;
  final String subtitle;
  final int pt;

  const StoreCard(
      {Key? key,
      required this.url,
      required this.title,
      required this.subtitle,
      required this.pt})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        color: AppThemaColors.lightWhite,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 7,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: NetworkImage(url),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const Spacer(),
          Expanded(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: AppThemaColors.white,
                  ),
                  maxLines: 1,
                ),
                Text(
                  subtitle,
                  style: const TextStyle(
                    color: AppThemaColors.lightWhite,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(
                color: AppThemaColors.purple,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Text(
                  '$pt pt',
                  style: const TextStyle(
                    color: AppThemaColors.white,
                    fontSize: 12,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
