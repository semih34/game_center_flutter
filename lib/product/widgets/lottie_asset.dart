import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieAsset extends StatelessWidget {
  final String path;
  final bool isFit;
  final bool isRepeat;
  const LottieAsset(
      {Key? key, required this.path, this.isFit = false, this.isRepeat = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Lottie.asset(
      path,
      fit: isFit ? BoxFit.cover : null,
      repeat: isRepeat,
    );
  }
}
