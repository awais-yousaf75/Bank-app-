import 'package:bank/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:bank/utilities/colors.dart';
import 'package:bank/widgets/custom_accounts_container.dart';
import 'package:bank/widgets/custom_appbar.dart';
import 'package:bank/widgets/custom_elevatedbutton.dart';
import 'package:flutter/material.dart';


class ChooseCardScreen extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: CustomAppBar(title: "Choose card"),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 24),
            InkWell(
              onTap: () {
                Navigator.pop(context,1);

              },
              child: Container(
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
            ),
            SizedBox(height: 24),
            InkWell(
              onTap: () {
                Navigator.pop(context,2);
              },
              child: Container(
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
            ),
            Spacer(),

            CustomButton(buttonText: "Add card", buttonColor: primaryColor,buttonPressed: () {},),
            SizedBox(height: 24,)

          ]

        ),
      ),

    );
  }
}