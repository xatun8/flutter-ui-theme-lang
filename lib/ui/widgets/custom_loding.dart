import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../../core/constants/app_colors.dart';

class CustomLoading extends StatelessWidget {
  const CustomLoading({
    super.key,
    required this.size,
    this.color = AppColors.primary,
  });

  final double size;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: size,
        width: size,
        child: SpinKitCircle(color: color),
      ),
    );
  }
}
