import 'package:bank/screens/internet_bill_screen.dart';
import 'package:bank/widgets/custom_appbar.dart';
import 'package:bank/widgets/custom_container.dart';
import 'package:flutter/material.dart';

class BillPaymentScreen extends StatefulWidget {
  @override
  BillPaymentScreenState createState() => BillPaymentScreenState();
}

class BillPaymentScreenState extends State<BillPaymentScreen> {
  @override
  void initState() {
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
      appBar: CustomAppBar(title: 'Pay the bill'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomContainer(
              mainTitle: "Electricity bill",
              subTitle: "Pay electricity bill this month",
              imagePath: "assets/images/bill_1.png",
              imageWidth: 90,
              imageHeight: 80,
            ),
            SizedBox(height: 20),
            CustomContainer(
              mainTitle: "Water bill",
              subTitle: "Pay water bill this month",
              imagePath: "assets/images/bill_2.png",
              imageWidth: 90,
              imageHeight: 84,
            ),
            SizedBox(height: 20),

            CustomContainer(
              mainTitle: "Mobile bill",
              subTitle: "Pay mobile bill this month",
              imagePath: "assets/images/bill_3.png",
              imageWidth: 90,
              imageHeight: 84,
            ),
            SizedBox(height: 20),

            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => InternetBillPayment(),
                  ),
                );
              },
              child: CustomContainer(
                mainTitle: "Internet bill",
                subTitle: "Pay internet bill this month",
                imagePath: "assets/images/bill_4.png",
                imageWidth: 90,
                imageHeight: 84,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
