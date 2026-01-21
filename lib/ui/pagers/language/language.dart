import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:tasks/core/genereted/localizations/app_localizations.dart';

import 'package:tasks/cubits/locale/locale.dart';
import 'package:tasks/cubits/theme/theme.dart';
import 'package:tasks/ui/pagers/language/widgets/language_radui_button.dart';

import '../../../core/helper/pager.dart';


class LanguagePage extends StatefulWidget {
  const LanguagePage({super.key});

  @override
  State<LanguagePage> createState() => _LanguagePageState();
}

class _LanguagePageState extends State<LanguagePage> {
  final ValueNotifier<String?> _selectedLanguage = ValueNotifier(null);

  @override
  void dispose() {
    _selectedLanguage.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,

      appBar: AppBar(
        title: Text(t.chooseLanguage, style: TextStyle(fontSize: 20.sp)),
        backgroundColor: theme.scaffoldBackgroundColor,
        elevation: 0,
        actions: [
          CupertinoSwitch(
            value: isDark,
            onChanged: (v) => context.read<ThemeCubit>().toggleTheme(v),
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ValueListenableBuilder<String?>(
                valueListenable: _selectedLanguage,
                builder: (_, val, __) => Column(
                  children: [
                    LanguageRadioButton(
                      label: "Azərbaycan",
                      value: "az",
                      groupValue: val,
                      onChanged: (v) => _selectedLanguage.value = v,
                    ),
                    LanguageRadioButton(
                      label: "English",
                      value: "en",
                      groupValue: val,
                      onChanged: (v) => _selectedLanguage.value = v,
                    ),
                    LanguageRadioButton(
                      label: "Русский",
                      value: "ru",
                      groupValue: val,
                      onChanged: (v) => _selectedLanguage.value = v,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40.h),
              ValueListenableBuilder<String?>(
                valueListenable: _selectedLanguage,
                builder: (_, val, __) => SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: val == null
                        ? null
                        : () async {
                            await context.read<LocaleCubit>().setLanguage(val);
                            context.go(Pager.home);
                          },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: theme.colorScheme.primary,
                      padding: EdgeInsets.symmetric(vertical: 16.h),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                    ),
                    child: Text(
                      "Continue",
                      style: TextStyle(
                        fontSize: 18.sp,

                        color: theme.colorScheme.onPrimary,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
