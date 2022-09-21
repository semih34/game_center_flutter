import 'package:flutter/material.dart';
import 'package:game_center/core/constants/thema/app_thema_colors.dart';

class CustomAvatar extends StatelessWidget {
  final String url;
  final double size;
  final Function event;
  final String name;
  final Color nameColor;
  final Color borderColor;
  const CustomAvatar({
    Key? key,
    required this.url,
    required this.event,
    this.size = 55,
    this.name = '',
    this.nameColor = AppThemaColors.white,
    this.borderColor = AppThemaColors.green,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: size,
          width: size,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(size / 2),
            border: Border.all(
              color: borderColor,
              width: 2,
            ),
            image: DecorationImage(
              image: NetworkImage(url),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          height: name != "" ? 3 : 0,
        ),
        name != ""
            ? Text(
                name,
                style: TextStyle(
                  color: nameColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              )
            : const SizedBox(
                height: 0,
              )
      ],
    );
  }
}
