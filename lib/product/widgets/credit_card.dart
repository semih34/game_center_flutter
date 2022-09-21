import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import '../../core/constants/thema/app_thema_colors.dart';

class CreaditCard extends StatelessWidget {
  final String name;
  final String cardNo;
  final String exprise;
  const CreaditCard({
    Key? key,
    required this.name,
    required this.cardNo,
    required this.exprise,
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
        height: 170,
        padding: const EdgeInsets.all(18),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    color: AppThemaColors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                buildCardIcon(),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      cardNo,
                      style: const TextStyle(
                        color: AppThemaColors.white,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      "Expres $exprise",
                      style: const TextStyle(
                        color: Colors.white54,
                      ),
                    )
                  ],
                ),
                const Icon(
                  MaterialCommunityIcons.contactless_payment,
                  color: AppThemaColors.white,
                  size: 30,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildCardIcon() {
    return Stack(
      children: [
        Container(
          height: 50,
          width: 60,
          decoration: BoxDecoration(
            color: AppThemaColors.green.withOpacity(0.1),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        Positioned(
          top: 10,
          left: 5,
          child: Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              color: AppThemaColors.green.withOpacity(0.8),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
        Positioned(
          top: 10,
          right: 5,
          child: Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              color: AppThemaColors.green.withOpacity(0.99),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        )
      ],
    );
  }
}
