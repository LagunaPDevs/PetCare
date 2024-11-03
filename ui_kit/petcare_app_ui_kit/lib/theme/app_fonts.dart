import 'package:flutter/widgets.dart';

class PetCareFontStyle {
  final BuildContext context;
  PetCareFontStyle(this.context);

  static const _baseRegularTextStyle = TextStyle(fontWeight: FontWeight.w400);
  static const _baseMediumTextStyle = TextStyle(fontWeight: FontWeight.w500);
  static const _baseSemiBoldTextStyle = TextStyle(fontWeight: FontWeight.w700);
  static const _baseBoldTextStyle = TextStyle(fontWeight: FontWeight.w900);

  // Regular
  TextStyle get regular12 {
    return _baseRegularTextStyle.copyWith(fontSize: 12);
  }

  TextStyle get regular14 {
    return _baseRegularTextStyle.copyWith(fontSize: 14);
  }

  TextStyle get regular16 {
    return _baseRegularTextStyle.copyWith(fontSize: 16);
  }

  TextStyle get regular24 {
    return _baseRegularTextStyle.copyWith(fontSize: 24);
  }

  TextStyle get regular32 {
    return _baseRegularTextStyle.copyWith(fontSize: 32);
  }

  TextStyle get regular40 {
    return _baseRegularTextStyle.copyWith(fontSize: 40);
  }

  // Medium
  TextStyle get medium12 {
    return _baseMediumTextStyle.copyWith(fontSize: 12);
  }

  TextStyle get medium14 {
    return _baseMediumTextStyle.copyWith(fontSize: 14);
  }

  TextStyle get medium16 {
    return _baseMediumTextStyle.copyWith(fontSize: 16);
  }

  TextStyle get medium24 {
    return _baseMediumTextStyle.copyWith(fontSize: 24);
  }

  TextStyle get medium32 {
    return _baseMediumTextStyle.copyWith(fontSize: 32);
  }

  TextStyle get medium40 {
    return _baseMediumTextStyle.copyWith(fontSize: 40);
  }

  // Semibold
  TextStyle get semibold12 {
    return _baseSemiBoldTextStyle.copyWith(fontSize: 12);
  }

  TextStyle get semibold14 {
    return _baseSemiBoldTextStyle.copyWith(fontSize: 14);
  }

  TextStyle get semibold16 {
    return _baseSemiBoldTextStyle.copyWith(fontSize: 16);
  }

  TextStyle get semibold24 {
    return _baseSemiBoldTextStyle.copyWith(fontSize: 24);
  }

  TextStyle get semibold32 {
    return _baseSemiBoldTextStyle.copyWith(fontSize: 32);
  }

  TextStyle get semibold40 {
    return _baseSemiBoldTextStyle.copyWith(fontSize: 40);
  }

  // Semibold
  TextStyle get bold12 {
    return _baseBoldTextStyle.copyWith(fontSize: 12);
  }

  TextStyle get bold14 {
    return _baseBoldTextStyle.copyWith(fontSize: 14);
  }

  TextStyle get bold16 {
    return _baseBoldTextStyle.copyWith(fontSize: 16);
  }

  TextStyle get bold24 {
    return _baseBoldTextStyle.copyWith(fontSize: 24);
  }

  TextStyle get bold32 {
    return _baseBoldTextStyle.copyWith(fontSize: 32);
  }

  TextStyle get bold40 {
    return _baseBoldTextStyle.copyWith(fontSize: 40);
  }
}
