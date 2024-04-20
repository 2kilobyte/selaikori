import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:selaikori/src/constants/button_style.dart';
import 'package:selaikori/src/constants/colors.dart';
import 'package:selaikori/src/constants/common_padding.dart';
import 'package:selaikori/src/constants/text_style.dart';

class NoInternetScreen extends StatelessWidget {
  const NoInternetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 180),
              Container(
                padding: CommonPadding.safeHorizontalPadding,
                child: const Center(
                  child: Image(
                    image: AssetImage('assets/no-connection.png'),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                padding: CommonPadding.safeHorizontalPadding,
                child: const Center(
                  child: Text('No internet connection, Please turn on'),
                ),
              ),
              Container(
                padding: CommonPadding.safeHorizontalPadding,
                child: const Center(
                  child: Text('internet and try again'),
                ),
              ),
              const SizedBox(height: 30),
              Container(
                padding: CommonPadding.safeHorizontalPadding,
                child: ElevatedButton(
                  onPressed: () {},
                  style: AdditionalButtonStyle.miniPrimaryButtonStyle,
                  child: const Text(
                    'Retry',
                    style: TextStyle(color: ConstColors.background),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                padding: CommonPadding.safeHorizontalPadding,
                child: TextButton(
                  style: AdditionalButtonStyle.textButtonWithZeroPadding,
                  onPressed: () {
                    exit(0);
                  },
                  child: const Text('Exit',
                      style: TextStyle(
                          fontSize:
                              TextAdditionalStyle.miniPrimaryButtonTextSize)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
