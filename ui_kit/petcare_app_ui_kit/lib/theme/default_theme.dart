import 'package:flutter/material.dart';

import 'package:petcare_app_ui_kit/theme/color_constants.dart';

ThemeData defaultTheme = ThemeData(
    fontFamily: "Poppins",
    primaryColor: PetCareColors.neutral10,
    unselectedWidgetColor: PetCareColors.neutral50,
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
      backgroundColor: PetCareColors.main,
      foregroundColor: PetCareColors.neutral10,
      padding: const EdgeInsets.symmetric(vertical: 16),
      shape: const StadiumBorder(),
    )));
