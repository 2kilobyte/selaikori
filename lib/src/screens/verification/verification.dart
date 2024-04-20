import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:selaikori/src/constants/button_style.dart';
import 'package:selaikori/src/constants/colors.dart';
import 'package:selaikori/src/constants/common_padding.dart';
import 'package:selaikori/src/constants/text_style.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  bool otpFilled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: const Center(
                  child: Image(
                    image: AssetImage('assets/selaikori.png'),
                    width: 170,
                  ),
                ),
              ),
              const SizedBox(height: 60),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: const Center(
                  child: Text(
                    'Verification Code',
                    style: TextStyle(
                        color: ConstColors.secondary,
                        fontSize: TextAdditionalStyle.pageTitleTextSize),
                  ),
                ),
              ),
              Container(
                padding: CommonPadding.safeHorizontalPadding,
                child: const Column(
                  children: [
                    Center(
                      child: Text(
                        'Please enter OTP code that sent to your',
                        style: TextStyle(color: ConstColors.secondary_400),
                      ),
                    ),
                    Center(
                      child: Text(
                        'Mobile in the box below',
                        style: TextStyle(color: ConstColors.secondary_400),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                padding: CommonPadding.safeHorizontalPadding,
                child: const Text(
                  'OTP code sent to 01744767464',
                  style: TextStyle(color: ConstColors.secondary_400),
                ),
              ),
              const SizedBox(height: 50),
              Container(
                padding: CommonPadding.safeHorizontalPadding,
                child: PinCodeTextField(
                  appContext: context,
                  length: 6,
                  onChanged: (value) {},
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(6),
                    fieldHeight: 60,
                    fieldWidth: 50,
                    activeColor: ConstColors.primary,
                    inactiveColor: ConstColors.secondary_200,
                    selectedColor: ConstColors.primary,
                    activeFillColor: ConstColors.secondary_50,
                    inactiveFillColor: ConstColors.secondary_50,
                    selectedFillColor: ConstColors.secondary_50,
                  ),
                  keyboardType: TextInputType.number,
                  autoFocus: false,
                  cursorColor: ConstColors.primary,
                  animationType: AnimationType.fade,
                  animationDuration: const Duration(milliseconds: 200),
                  enableActiveFill: true,
                ),
              ),
              const SizedBox(height: 140),
              Container(
                padding: CommonPadding.safeHorizontalPadding,
                margin: const EdgeInsets.only(top: 30),
                child: ElevatedButton(
                  onPressed: () {},
                  style: otpFilled
                      ? AdditionalButtonStyle.primaryButtonStyle
                      : AdditionalButtonStyle.disableButtonStyle,
                  child: const Text(
                    'Confirm Your Code',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                padding: CommonPadding.safeHorizontalPadding,
                child: TextButton(
                  style: AdditionalButtonStyle.textButtonWithZeroPadding,
                  onPressed: () {},
                  child: const Text('Resend code'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
