import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tasks/core/extensions/filter_color.dart';
import '../../core/constants/app_assets.dart';
import '../../core/constants/app_colors.dart';


class CustomLogo extends StatelessWidget {
  const CustomLogo({super.key, required this.size});

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      AppAssets.map,
      height: size.height,
      width: size.width,
      colorFilter: AppColors.primary.toColorFilter,
    );
  }
}
