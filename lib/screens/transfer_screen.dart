import 'package:bank/screens/choose_card_screen.dart';
import 'package:bank/screens/confirm_transfer_screen.dart';
import 'package:bank/screens/confirm_transfer_screen2.dart';
import 'package:bank/utilities/colors.dart';
import 'package:bank/widgets/custom_appbar.dart';
import 'package:bank/widgets/custom_checkbox.dart';
import 'package:bank/widgets/custom_elevatedbutton.dart';
import 'package:bank/widgets/custom_people_row.dart';
import 'package:bank/widgets/custom_textfield.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class TransferScreen extends StatefulWidget {
  @override
  TransferScreenState createState() => TransferScreenState();
}

class TransferScreenState extends State<TransferScreen> {
  int? selectedIndex;
  int? selectedCard;
  int? selectedPerson;
  List<String> banksList = [
    'JPMorgan Chase (USA)',
    'Bank of America (USA)',
    'Citibank (USA)',
    'HSBC (UK)',
    'Barclays (UK)',
    'Standard Chartered (UK)',
    'Deutsche Bank (Germany)',
    'BNP Paribas (France)',
    'Credit Suisse (Switzerland)',
    'UBS Group (Switzerland)',
    'Royal Bank of Canada (Canada)',
    'Bank of China (China)',
    'Industrial and Commercial Bank of China (ICBC)',
    'Mitsubishi UFJ Financial Group (Japan)',
    'Santander Bank (Spain)',
  ];

  List<String> branchesList = [
    'Main Branch',
    'Downtown Branch',
    'City Center Branch',
    'North Branch',
    'South Branch',
    'East Branch',
    'West Branch',
    'Airport Branch',
    'University Branch',
    'Mall Branch',
    'Corporate Branch',
    'Industrial Area Branch',
    'Residential Area Branch',
    'Central Park Branch',
    'Financial District Branch',
  ];

  final TextEditingController _cardController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _cardNumberController = TextEditingController();
  final TextEditingController _amountController = TextEditingController();
  final TextEditingController _contentController = TextEditingController();
  final TextEditingController _bankController = TextEditingController();
  final TextEditingController _branchController = TextEditingController();

  bool isEnable = false;

  void checkField() {
    setState(() {
      isEnable =
          _cardController.text.isNotEmpty &&
          _nameController.text.isNotEmpty &&
          _amountController.text.isNotEmpty &&
          _cardNumberController.text.isNotEmpty &&
          _contentController.text.isNotEmpty &&
          _bankController.text.isNotEmpty &&
          _branchController.text.isNotEmpty;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    _cardNumberController.addListener(checkField);
    _nameController.addListener(checkField);
    _contentController.addListener(checkField);
    _cardController.addListener(checkField);
    _amountController.addListener(checkField);
    _bankController.addListener(checkField);
    _branchController.addListener(checkField);
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: CustomAppBar(title: "Transfer"),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(left: 24.0, right: 24),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomTextField(
                  inputController: _cardController,
                  hintLabel: "Choose account/card",
                  onFieldTap: () async {
                    selectedCard = await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ChooseCardScreen(),
                      ),
                    );

                    if (selectedCard == 1) {
                      _cardController.text = '1234';
                    } else if (selectedCard == 2) {
                      _cardController.text = '5678';
                    } else {
                      _cardController.clear();
                    }

                    checkField();
                  },
                ),
                SizedBox(height: 24),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Choose transaction",
                    style: TextStyle(
                      color: greyText,
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(height: 16),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            selectedIndex = selectedIndex == 0 ? -1 : 0;
                          });
                        },
                        child: Container(
                          width: 140,
                          height: 110,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            color: selectedIndex == 0
                                ? primaryColor
                                : Color(0xFFE0E0E0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 16),
                                Icon(
                                  Icons.credit_card_rounded,
                                  size: 38,
                                  color: selectedIndex == 0 ? white : black,
                                ),
                                SizedBox(
                                  width: 80,
                                  height: 32,
                                  child: Text(
                                    "Transfer via card number",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: selectedIndex == 0 ? white : black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 16),
                      InkWell(
                        onTap: () {
                          setState(() {
                            selectedIndex = selectedIndex == 1 ? -1 : 1;
                          });
                        },
                        child: Container(
                          width: 140,
                          height: 110,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            color: selectedIndex == 1
                                ? primaryColor
                                : Color(0xFFE0E0E0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 16),
                                Icon(
                                  Icons.person,
                                  size: 38,
                                  color: selectedIndex == 1 ? white : black,
                                ),
                                SizedBox(
                                  width: 90,
                                  height: 32,
                                  child: Text(
                                    "Transfer to the same bank",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: selectedIndex == 1 ? white : black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 16),

                      InkWell(
                        onTap: () {
                          setState(() {
                            selectedIndex = selectedIndex == 2 ? -1 : 2;
                          });
                        },
                        child: Container(
                          width: 140,
                          height: 110,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            color: selectedIndex == 2
                                ? primaryColor
                                : Color(0xFFE0E0E0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 16),
                                Icon(
                                  Icons.account_balance_outlined,
                                  size: 38,
                                  color: selectedIndex == 2 ? white : black,
                                ),

                                SizedBox(
                                  width: 82,
                                  height: 32,
                                  child: Text(
                                    "Transfer to another bank",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: selectedIndex == 2 ? white : black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 40),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: CustomPeopleRow(
                    topLeftText: "Choose beneficiary",
                    topRightText: "Find Beneficiary",
                    selectedIndex: selectedPerson,
                    onIndexSelected: (index) {
                      selectedPerson = index;
                      if (index == 1) {
                        _nameController.text = "Emma";
                        _cardNumberController.text = "1234";
                      } else if (index == 2) {
                        _nameController.text = "Justin";
                        _cardNumberController.text = "5678";
                      } else {
                        _nameController.clear();
                        _cardNumberController.clear();
                      }
                    },
                  ),
                ),
                if (selectedIndex == 0) ...[
                  Form(
                    child: Card(
                      color: Colors.white,
                      child: SizedBox(
                        width: 327,
                        height: 394,
                        child: Column(
                          children: [
                            CustomTextField(
                              hintLabel: "Name",
                              widthField: 295,
                              inputController: _nameController,
                            ),
                            SizedBox(height: 12),
                            CustomTextField(
                              inputController: _cardNumberController,
                              hintLabel: "Card number",
                              widthField: 295,
                            ),
                            SizedBox(height: 12),
                            CustomTextField(
                              hintLabel: "Amount",
                              widthField: 295,
                              inputController: _amountController,
                            ),
                            SizedBox(height: 12),
                            CustomTextField(
                              inputController: _contentController,
                              hintLabel: "Content",
                              widthField: 295,
                            ),
                            SizedBox(height: 12),
                            CustomCheckBox(
                              checkBoxText: "Save to directory of beneficiary",
                              textColorFirst: greyText,
                            ),
                            CustomButton(
                              buttonText: "Confirm",
                              buttonColor: primaryColor,
                              buttonWidth: 295,
                              buttonPressed: isEnable
                                  ? () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              ConfirmTransferScreen(
                                                personName:
                                                    _nameController.text,
                                                card: selectedCard,
                                                personIndex: selectedPerson,
                                                content:
                                                    _contentController.text,
                                                amount: _amountController.text,
                                              ),
                                        ),
                                      );
                                    }
                                  : null,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 24),
                ],

                if (selectedIndex == 2) ...[
                  Form(
                    child: Card(
                      color: Colors.white,
                      child: SizedBox(
                        width: 327,
                        height: 626,
                        child: Column(
                          children: [
                            SizedBox(height: 24),
                            CustomTextField(
                              hintLabel: "Choose bank",
                              inputController: _bankController,
                              widthField: 295,
                              onFieldTap: () async {
                                final result = await showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      title: Text("Choose bank"),
                                      content: SingleChildScrollView(
                                        child: Column(
                                          children: banksList.map((option) {
                                            return ListTile(
                                              title: Text(option),
                                              onTap: () {
                                                Navigator.pop(context, option);
                                                _bankController.text = option;
                                              },
                                            );
                                          }).toList(),
                                        ),
                                      ),
                                    );
                                  },
                                );
                              },
                            ),
                            SizedBox(height: 24),

                            CustomTextField(
                              hintLabel: "Choose branch",
                              widthField: 295,

                              onFieldTap: () async {
                                final result = await showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      title: Text("Choose branch"),
                                      content: SingleChildScrollView(
                                        child: Column(
                                          children: branchesList.map((option) {
                                            return ListTile(
                                              title: Text(option),
                                              onTap: () {
                                                Navigator.pop(context, option);
                                                _branchController.text = option;
                                              },
                                            );
                                          }).toList(),
                                        ),
                                      ),
                                    );
                                  },
                                );
                              },
                              inputController: _branchController,
                            ),
                            SizedBox(height: 24),

                            CustomTextField(
                              hintLabel: "Name",
                              widthField: 295,
                              inputController: _nameController,
                            ),
                            SizedBox(height: 24),

                            CustomTextField(
                              hintLabel: "Card number",
                              widthField: 295,
                              inputController: _cardNumberController,
                            ),
                            SizedBox(height: 24),

                            CustomTextField(
                              hintLabel: "Amount",
                              widthField: 295,
                              inputController: _amountController,
                            ),
                            SizedBox(height: 24),

                            CustomTextField(
                              hintLabel: "Note",
                              widthField: 295,
                              inputController: _contentController,
                            ),
                            SizedBox(height: 24),
                            CustomCheckBox(
                              checkBoxText: "Save to directory beneficiary",
                              textColorFirst: greyText,
                            ),
                            Spacer(),
                            CustomButton(
                              buttonText: "Confirm",
                              buttonColor: primaryColor,
                              buttonWidth: 295,
                              buttonPressed: isEnable
                                  ? () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              ConfirmTransferScreen2(
                                                personName:
                                                _nameController.text,
                                                card: selectedCard,
                                                personIndex: selectedPerson,
                                                content:
                                                _contentController.text,
                                                amount: _amountController.text,



                                              ),
                                        ),
                                      );
                                    }
                                  : null,
                            ),
                            SizedBox(height: 24),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }
}
