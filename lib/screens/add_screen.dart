import 'package:bank/screens/add_successful_screen.dart';
import 'package:bank/screens/choose_card_screen.dart';
import 'package:bank/utilities/colors.dart';
import 'package:bank/widgets/custom_appbar.dart';
import 'package:bank/widgets/custom_elevatedbutton.dart';
import 'package:bank/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AddScreen extends StatefulWidget {
  @override
  AddScreenState createState() => AddScreenState();
}

class AddScreenState extends State<AddScreen> {
  final TextEditingController _accountController = TextEditingController();
  final TextEditingController _timeDepositController = TextEditingController();
  final TextEditingController _amountController = TextEditingController();
  bool isEnable = false;
  int? selectedCard;
  String result = " ";

  void checkField() {
    setState(() {
      isEnable =
          _amountController.text.isNotEmpty &&
          _timeDepositController.text.isNotEmpty &&
          _accountController.text.isNotEmpty;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    _amountController.addListener(checkField);
    _timeDepositController.addListener(checkField);
    _accountController.addListener(checkField);
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _amountController.dispose();
    _timeDepositController.dispose();
    _accountController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: CustomAppBar(title: "Add"),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset("assets/images/svg/add_screen.svg"),
            SizedBox(height: 32),
            Card(
              color: Colors.white,
              child: SizedBox(
                height: 304,
                width: 327,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 16),
                    CustomTextField(
                      hintLabel: "Choose account/card",
                      widthField: 295,
                      inputController: _accountController,
                      onFieldTap: () async {
                        selectedCard = await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ChooseCardScreen(),
                          ),
                        );

                        if (selectedCard == 1) {
                          _accountController.text = "1234";
                        } else if (selectedCard == 2) {
                          _accountController.text = "5678";
                        }
                      },
                    ),

                    SizedBox(height: 20),
                    CustomTextField(
                      onFieldTap: () async {
                        result = await showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              backgroundColor: Colors.white,
                              title: Text(
                                'Choose time deposit',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),

                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  ListTile(
                                    title: Text(
                                      '3 months (Interest rate 4%)',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: greyText,
                                      ),
                                    ),
                                    onTap: () => Navigator.pop(
                                      context,
                                      '3 months (Interest rate 4%)',
                                    ),
                                  ),
                                  ListTile(
                                    title: Text(
                                      '6 months ( Interest rate 4.5%)',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: greyText,
                                      ),
                                    ),
                                    onTap: () => Navigator.pop(
                                      context,
                                      '6 months ( Interest rate 4.5%)',
                                    ),
                                  ),
                                  ListTile(
                                    title: Text(
                                      '12 months ( Interest rate 5%)',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: greyText,
                                      ),
                                    ),
                                    onTap: () => Navigator.pop(
                                      context,
                                      '12 months ( Interest rate 5%)',
                                    ),
                                  ),
                                  ListTile(
                                    title: Text(
                                      '16 months (Interest rate 5.5%)',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: greyText,
                                      ),
                                    ),
                                    onTap: () => Navigator.pop(
                                      context,
                                      '16 months (Interest rate 5.5%)',
                                    ),
                                  ),
                                  ListTile(
                                    title: Text(
                                      '24 months (Interest rate 6%)',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: greyText,
                                      ),
                                    ),
                                    onTap: () => Navigator.pop(
                                      context,
                                      '24 months (Interest rate 6%)',
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                        if (result != null) {
                          setState(() {
                            _timeDepositController.text = result;
                          });
                        }
                      },
                      hintLabel: "Choose time deposit",
                      widthField: 295,
                      inputController: _timeDepositController,
                    ),
                    SizedBox(height: 20),
                    CustomTextField(
                      hintLabel: "Amount (At least \$1000)",
                      widthField: 295,
                      inputController: _amountController,
                    ),
                    SizedBox(height: 20),
                    CustomButton(
                      buttonText: "Verify",
                      buttonColor: primaryColor,
                      buttonWidth: 295,
                      buttonPressed: isEnable
                          ? () {
                              _timeDepositController.clear();
                              _accountController.clear();
                              _amountController.clear();
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => AddSuccessfulScreen(),
                                ),
                              );
                            }
                          : null,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
