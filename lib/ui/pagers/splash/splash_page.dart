import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:tasks/core/helper/pager.dart';


import '../../widgets/custom_loding.dart';
import '../../widgets/custom_logo.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 3), () {
      if (mounted) {
        context.go(Pager.language);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      body: Stack(
        children: [
          Center(child: CustomLogo(size: Size(346.w, 334.h))),
          Positioned(
            bottom: 80.h,
            left: 0,
            right: 0,
            child: CustomLoading(size: 60.r),
          ),
        ],
      ),
    );
  }
}
