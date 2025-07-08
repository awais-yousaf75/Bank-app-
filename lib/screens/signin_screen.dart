import 'package:bank/screens/forgot_password_screen.dart';
import 'package:bank/screens/home_screen.dart';
import 'package:bank/screens/signup_screen.dart';
import 'package:bank/utilities/colors.dart';
import 'package:bank/widgets/custom_appbar.dart';
import 'package:bank/widgets/custom_bottomNavBar.dart';
import 'package:bank/widgets/custom_elevatedbutton.dart';
import 'package:bank/widgets/custom_textfield.dart';
import 'package:bank/widgets/custom_title.dart';
import 'package:flutter/material.dart';

class SigninScreen extends StatefulWidget {
  @override
  SigninScreenState createState() => SigninScreenState();
}

class SigninScreenState extends State<SigninScreen> {
  final TextEditingController idController = TextEditingController();
  final TextEditingController passController = TextEditingController();
  bool isEnable = false;

  void checkFields() {
    setState(() {
      isEnable = idController.text.isNotEmpty && passController.text.isNotEmpty;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    idController.addListener(checkFields);
    passController.addListener(checkFields);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    idController.dispose();
    passController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: CustomAppBar(
        title: "Sign in",
        titleColor: white,
        backgroundColor: primaryColor,
        centerTitle: false,
        showBackButton: false,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(25),
              topLeft: Radius.circular(25),
            ),
            color: white,
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 24.0, top: 39, right: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                CustomTitle(
                  mainTitle: "Welcome Back",
                  subTitle: "Hello there, sign in to continue",
                  titleColor: primaryColor,
                ),
                SizedBox(height: 32),
                Padding(
                  padding: const EdgeInsets.only(left: 70.0),
                  child: Image.asset(
                    "assets/images/sign_in_page.png",
                    height: 165,
                    width: 213,
                  ),
                ),
                SizedBox(height: 32),
                CustomTextField(
                  hintLabel: "User id",
                  inputController: idController,
                ),
                SizedBox(height: 20),
                CustomTextField(
                  hintLabel: "Password",
                  isPassword: true,
                  inputController: passController,
                ),
                SizedBox(height: 12),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ForgotPasswordScreen(),
                      ),
                    );
                  },
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "Forgot password?",
                      style: TextStyle(
                        color: greyText,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 40),
                SizedBox(
                  height: 44,
                  child: CustomButton(
                    buttonText: 'Sign in',

                    buttonPressed: isEnable
                        ? () {
                            idController.clear();
                            passController.clear();
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CustomNavBar(),
                              ),
                            );
                          }
                        : null,

                    buttonColor: isEnable ? primaryColor : Colors.white,
                  ),
                ),
                SizedBox(height: 54),
                Center(
                  child: Image.asset(
                    "assets/images/fingerprint.png",
                    width: 64,
                    height: 64,
                  ),
                ),
                SizedBox(height: 44),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: TextStyle(
                        color: greyText,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(width: 20),

                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignupScreen(),
                          ),
                        );
                      },
                      child: Text(
                        "Sign up",
                        style: TextStyle(
                          color: primaryColor,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
