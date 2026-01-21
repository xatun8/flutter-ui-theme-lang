import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:tasks/core/genereted/localizations/app_localizations.dart';
import 'package:tasks/core/helper/pager.dart';
import 'widgets/info_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;

    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      appBar: AppBar(
        title: Text(t.home, style: TextStyle(fontSize: 20.sp)),
        backgroundColor:
            theme.appBarTheme.backgroundColor ?? theme.scaffoldBackgroundColor,
        actions: [
          IconButton(
            icon: Icon(Icons.language, size: 26.r),
            onPressed: () => context.push(Pager.language),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.w),
        child: Column(
          children: [
            Text(
              t.welcome,
              style: TextStyle(
                fontSize: 24.sp,
                fontWeight: FontWeight.bold,
                color: theme.textTheme.bodyLarge?.color,
              ),
            ),
            SizedBox(height: 20.h),
            InfoCard(title: t.dailyTips),
            InfoCard(title: t.newsUpdate),
            InfoCard(title: t.exploreMore),
          ],
        ),
      ),
    );
  }
}
