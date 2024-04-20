import 'package:flag/flag.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:selaikori/src/constants/button_style.dart';
import 'package:selaikori/src/constants/colors.dart';
import 'package:selaikori/src/constants/common_padding.dart';
import 'package:selaikori/src/constants/text_style.dart';
import 'package:selaikori/src/controller/language_toggler.dart';
import 'package:selaikori/src/data/login.dart';
import 'package:toggle_switch/toggle_switch.dart';

class LoginScreen extends StatefulWidget {
  // ignore: use_super_parameters
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool langState = true;

  getLangState() async {
    final currentLang = await getCurrentLanguage();
    setState(() {
      langState = currentLang;
    });
  }

  @override
  void initState() {
    super.initState();
    getLangState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstColors.background,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: CommonPadding.safeHorizontalPadding,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Image(
                      image: AssetImage('assets/selaikori.png'),
                      width: 145,
                    ),
                    ToggleSwitch(
                      minWidth: 50.0,
                      minHeight: 30,
                      cornerRadius: 20.0,
                      activeBgColors: const [
                        [ConstColors.primary],
                        [ConstColors.primary]
                      ],
                      activeFgColor: ConstColors.background,
                      inactiveBgColor: ConstColors.secondary_100,
                      inactiveFgColor: ConstColors.secondary,
                      initialLabelIndex: langState ? 0 : 1,
                      totalSwitches: 2,
                      labels: const ['বাং', 'EN'],
                      radiusStyle: true,
                      onToggle: (index) {
                        setCurrentLanguage(languageIndex: index);
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (contex) => const LoginScreen(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 60),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Center(
                  child: Text(
                    langState ? LoginScreenBnData.title : LoginScreenEnData.title,
                    style: const TextStyle(fontSize: TextAdditionalStyle.pageTitleTextSize),
                  ),
                ),
              ),
              const SizedBox(height: 35),
              Container(
                  width: MediaQuery.of(context).size.width,
                  padding: CommonPadding.safeHorizontalPadding,
                  child: Text(
                    langState
                        ? LoginScreenBnData.longMobileLabel
                        : LoginScreenEnData.longMobileLabel,
                    style:
                        const TextStyle(color: ConstColors.secondary_300),
                  )),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: CommonPadding.safeHorizontalPadding,
                margin: const EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 100,
                      child: TextFormField(
                        readOnly: true,
                        initialValue: ' +88',
                        decoration: InputDecoration(
                            labelText: langState
                                ? LoginScreenBnData.phoneCodeLabel
                                : LoginScreenEnData.phoneCodeLabel,
                            labelStyle: const TextStyle(
                                color: ConstColors.secondary_300,
                                fontSize: TextAdditionalStyle.inputFieldTextSize),
                            border: const OutlineInputBorder(),
                            prefixIcon: const Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Flag.fromString(
                                'BD',
                                height: 1,
                                width: 15,
                                borderRadius: 4,
                                flagSize: FlagSize.size_4x3,
                              ),
                            )),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width - 150,
                      child: TextFormField(
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          labelText: langState
                              ? LoginScreenBnData.mobileLabel
                              : LoginScreenEnData.mobileLabel,
                          labelStyle: const TextStyle(
                              color: ConstColors.secondary_300,
                              fontSize: TextAdditionalStyle.inputFieldTextSize),
                          border: const OutlineInputBorder(),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: CommonPadding.safeHorizontalPadding,
                margin: const EdgeInsets.only(top: 20),
                child: Text(
                  langState
                      ? LoginScreenBnData.nameLongLabel
                      : LoginScreenEnData.nameLongLabel,
                  style: const TextStyle(color: ConstColors.secondary_300),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: CommonPadding.safeHorizontalPadding,
                margin: const EdgeInsets.only(top: 10),
                child: TextFormField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    labelText: langState
                        ? LoginScreenBnData.nameLabel
                        : LoginScreenEnData.nameLabel,
                    labelStyle: const TextStyle(
                        color: ConstColors.secondary_300,
                        fontSize: TextAdditionalStyle.inputFieldTextSize),
                    border: const OutlineInputBorder(),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 25),
                padding: CommonPadding.safeHorizontalPadding,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(langState
                          ? LoginScreenBnData.agreement1stText
                          : LoginScreenEnData.agreement1stText),
                      TextButton(
                        style: AdditionalButtonStyle.textButtonWithZeroPadding,
                        onPressed: () {},
                        child: Text(langState
                            ? LoginScreenBnData.agreement2ndText
                            : LoginScreenEnData.agreement2ndText),
                      ),
                      Text(langState
                          ? LoginScreenBnData.agreement3rdText
                          : LoginScreenEnData.agreement3rdText),
                      TextButton(
                        style: AdditionalButtonStyle.textButtonWithZeroPadding,
                        onPressed: () {},
                        child: Text(langState
                            ? LoginScreenBnData.agreement4thText
                            : LoginScreenEnData.agreement4thText),
                      ),
                    ],
                  ),
                ),
              ),
              Center(
                child: Text(langState
                    ? LoginScreenBnData.agreement5thText
                    : LoginScreenEnData.agreement5thText),
              ),
              Container(
                padding: CommonPadding.safeHorizontalPadding,
                margin: const EdgeInsets.only(top: 30),
                child: ElevatedButton(
                  onPressed: () {},
                  style: AdditionalButtonStyle.primaryButtonStyle,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        langState
                            ? LoginScreenBnData.buttonText
                            : LoginScreenEnData.buttonText,
                        style: const TextStyle(color: ConstColors.background),
                      ),
                      const SizedBox(width: 10),
                      const Icon(
                        CupertinoIcons.arrow_right,
                        color: ConstColors.background,
                        size: 20.0,
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                padding: CommonPadding.safeHorizontalPadding,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(langState
                          ? LoginScreenBnData.problem1stText
                          : LoginScreenEnData.problem1stText),
                      TextButton(
                        style: AdditionalButtonStyle.textButtonWithZeroPadding,
                        onPressed: () {},
                        child: Text(langState
                            ? LoginScreenBnData.problem2ndText
                            : LoginScreenEnData.problem2ndText),
                      ),
                    ],
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
