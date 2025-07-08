import 'package:bank/utilities/colors.dart';
import 'package:bank/widgets/custom_accounts_container.dart';
import 'package:bank/widgets/custom_appbar.dart';
import 'package:bank/widgets/custom_elevatedbutton.dart';
import 'package:flutter/material.dart';

class AccountsAndCardScreen extends StatefulWidget {
  @override
  AccountsAndCardScreenState createState() => AccountsAndCardScreenState();
}

class AccountsAndCardScreenState extends State<AccountsAndCardScreen> {
  bool isEnable = false;
  int selectedIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
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
      appBar: CustomAppBar(title: "Accounts and card"),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomButton(
                buttonText: 'Account',
                buttonColor: selectedIndex == 0 ? primaryColor : Colors.grey,
                buttonWidth: 155,
                buttonPressed: () {
                  setState(() {
                    selectedIndex = 0;
                    // Toggle between true and false
                  });
                },
              ),
              SizedBox(width: 16),
              CustomButton(
                buttonText: 'Card',
                buttonColor: selectedIndex == 1 ? primaryColor : Colors.grey,
                buttonWidth: 155,
                buttonPressed: () {
                  setState(() {
                    selectedIndex = 1;
                  });
                },
              ),
            ],
          ),
          if (selectedIndex == 0) ...[
            SizedBox(height: 32),
            Image.asset('assets/images/personhomescreen.png'),
            SizedBox(height: 12),
            Text(
              "Push Puttichai",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: primaryColor,
              ),
            ),
            SizedBox(height: 32),
            CustomAccountContainer(
              mainTitle: "Account 1",
              secondTitle: "Available balance",
              thirdTitle: "Branch",
              mainTitle2: "1900 8988 1234",
              secondTitle2: "\$20,000",
              thirdTitle2: "New York",
            ),
            SizedBox(height: 20),
            CustomAccountContainer(
              mainTitle: "Account 2",
              secondTitle: "Available balance",
              thirdTitle: "Branch",
              mainTitle2: "8988 1234",
              secondTitle2: "\$12,000",
              thirdTitle2: "New York",
            ),
            SizedBox(height: 20),
            CustomAccountContainer(
              mainTitle: "Account 3",
              secondTitle: "Available balance",
              thirdTitle: "Branch",
              mainTitle2: "1900 1234 2222",
              secondTitle2: "\$230,000",
              thirdTitle2: "New York",
            ),
          ],

          if (selectedIndex == 1) ...[
            SizedBox(height: 24),
            Container(
              width: 327,
              height: 204,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                color: cardColor3,
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 21.42,left: 20.44,right: 26.61),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "John Smith",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 31.49),
                    Text(
                      "Amazon Platinium",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 11.39),
                    SizedBox(
                      width: 196.6,
                      height: 26.61,
                      child: Text(
                        "4756 **** **** 9018",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(height: 1.49),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "\$3.469.52",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                        Image.asset(
                          "assets/images/visa.png",
                          width: 46.56,
                          height: 15.52,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 24),
            Container(
              width: 327,
              height: 204,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                color: Color(0xFFFFAF2A),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 21.42,left: 20.44,right: 26.61),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "John Smith",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 31.49),
                    Text(
                      "Amazon Platinium",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 11.39),
                    SizedBox(
                      width: 196.6,
                      height: 26.61,
                      child: Text(
                        "4756 **** **** 9018",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(height: 1.49),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "\$3.469.52",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                        Image.asset(
                          "assets/images/visa.png",
                          width: 46.56,
                          height: 15.52,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Spacer(),

            CustomButton(buttonText: "Add card", buttonColor: primaryColor,buttonPressed: () {},),
            SizedBox(height: 24,)

          ],


        ],
      ),
    );
  }
}
