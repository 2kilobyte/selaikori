import 'package:flutter/material.dart';
import 'package:selaikori/src/constants/colors.dart';
import 'package:selaikori/src/constants/text_style.dart';

class AdditionalButtonStyle {
  static final ButtonStyle textButtonWithZeroPadding = TextButton.styleFrom(
    padding: EdgeInsets.zero,
  );

  static final ButtonStyle primaryButtonStyle = ElevatedButton.styleFrom(
    minimumSize: const Size.fromHeight(60),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
    textStyle:
        const TextStyle(fontSize: TextAdditionalStyle.primaryButtonTextSize),
    elevation: 0,
    backgroundColor: ConstColors.primary,
  );
  static final ButtonStyle disableButtonStyle = ElevatedButton.styleFrom(
    minimumSize: const Size.fromHeight(60),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
    textStyle:
        const TextStyle(fontSize: TextAdditionalStyle.primaryButtonTextSize),
    elevation: 0,
    backgroundColor: ConstColors.secondary_200,
  );

  static final ButtonStyle miniPrimaryButtonStyle = ElevatedButton.styleFrom(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
    padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
    textStyle:
        const TextStyle(fontSize: TextAdditionalStyle.miniPrimaryButtonTextSize),
    elevation: 0,
    backgroundColor: ConstColors.primary,
  );
}
