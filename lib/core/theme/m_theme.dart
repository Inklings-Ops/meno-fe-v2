import 'package:flutter/material.dart';
import 'package:meno_fe_v2/common/constants/m_colors.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';

class MTheme {
  static get light {
    final ThemeData base = ThemeData.light(useMaterial3: true);
    final TextTheme textTheme = base.textTheme;

    return base.copyWith(
      brightness: Brightness.light,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      primaryColor: MColors.primary,
      primaryColorLight: MColors.primaryLight,
      primaryColorDark: Colors.black,
      highlightColor: MColors.highlight,
      disabledColor: MColors.disabled,
      scaffoldBackgroundColor: Colors.white,
      bottomSheetTheme: const BottomSheetThemeData(
        backgroundColor: Colors.transparent,
      ),
      dividerTheme: const DividerThemeData(color: Color(0xFFF4F0FF)),
      inputDecorationTheme: InputDecorationTheme(
        contentPadding: MSize.pFromLTRB(12, 16, 12, 16),
        filled: true,
        fillColor: Colors.white,
        errorMaxLines: 5,
        hintStyle: const TextStyle(color: Color(0xffc4c4c4)),
        prefixIconColor: const Color(0xffc4c4c4),
        suffixIconColor: const Color(0xffc4c4c4),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(MSize.r(10)),
          borderSide: const BorderSide(color: Color(0xff9D9D9D)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(MSize.r(10)),
          borderSide: const BorderSide(color: MColors.primary),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(MSize.r(10)),
          borderSide: const BorderSide(color: MColors.primary),
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        elevation: 0,
        backgroundColor: MColors.primaryLight,
        selectedItemColor: MColors.primary,
        unselectedItemColor: const Color(0xFF989898),
        selectedLabelStyle: base.textTheme.bodyMedium?.copyWith(
          fontSize: MSize.fS(12),
          fontWeight: FontWeight.w500,
        ),
        unselectedLabelStyle: base.textTheme.bodyMedium?.copyWith(
          fontSize: MSize.fS(12),
          fontWeight: FontWeight.w500,
        ),
        type: BottomNavigationBarType.fixed,
        selectedIconTheme: const IconThemeData(shadows: null),
        unselectedIconTheme: const IconThemeData(shadows: null),
      ),
      colorScheme: const ColorScheme.light().copyWith(
        primary: MColors.primary,
        secondary: MColors.secondary,
        background: MColors.background,
        error: MColors.danger,
      ),
      tabBarTheme: TabBarTheme(
        labelColor: Colors.black,
        labelPadding: MSize.pFromLTRB(0, 0, 0, 0),
        indicatorSize: TabBarIndicatorSize.label,
        splashFactory: NoSplash.splashFactory,
        overlayColor: MaterialStateProperty.resolveWith((states) {
          return Colors.transparent;
        }),
      ),
      appBarTheme: const AppBarTheme(elevation: 0),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: MColors.primary,
          fixedSize: Size(MSize.sw(1), MSize.r(53)),
          padding: EdgeInsets.symmetric(vertical: MSize.r(16)),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(MSize.r(10)),
          ),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.transparent,
          fixedSize: Size(MSize.sw(1), MSize.r(53)),
          padding: EdgeInsets.symmetric(vertical: MSize.r(16)),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(MSize.r(10)),
          ),
          side: BorderSide(color: MColors.primary, width: MSize.r(1)),
        ),
      ),
      snackBarTheme: SnackBarThemeData(
        backgroundColor: MColors.danger,
        behavior: SnackBarBehavior.floating,
        contentTextStyle: textTheme.bodyLarge?.copyWith(
          fontSize: MSize.fS(14),
          fontWeight: FontWeight.w400,
          color: Colors.white,
        ),
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(MSize.r(14)),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(padding: EdgeInsets.zero),
      ),
      textTheme: textTheme.copyWith().apply(fontFamily: 'SFProDisplay'),
    );
  }

  MTheme._();
}
