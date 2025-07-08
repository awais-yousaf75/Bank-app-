import 'package:bank/screens/accounts_and_card_screen.dart';
import 'package:bank/screens/bill_payments_screen.dart';
import 'package:bank/screens/mobile_prepaid_screen.dart';
import 'package:bank/screens/save_online_screen.dart';
import 'package:bank/screens/transaction_report_screen.dart';
import 'package:bank/screens/transfer_screen.dart';
import 'package:bank/screens/withdraw_screen.dart';
import 'package:bank/utilities/colors.dart';
import 'package:bank/widgets/custom_bottomNavBar.dart';
import 'package:bank/widgets/cutom_card_stack.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  List<Map<String, String>> items = [
    {
      'image': 'assets/images/home_images/img.png',
      'label': 'Account\nand Card',
    },
    {'image': 'assets/images/home_images/img_1.png', 'label': 'Transfer'},
    {'image': 'assets/images/home_images/img_2.png', 'label': 'Withdraw'},
    {'image': 'assets/images/home_images/img_3.png', 'label': 'Mobile prepaid'},
    {'image': 'assets/images/home_images/img_4.png', 'label': 'Pay the bill'},
    {'image': 'assets/images/home_images/img_5.png', 'label': 'Save online'},
    {'image': 'assets/images/home_images/img_6.png', 'label': 'Credit Card'},
    {
      'image': 'assets/images/home_images/img_7.png',
      'label': 'Transaction report',
    },
    {'image': 'assets/images/home_images/img_10.png', 'label': 'Beneficiary'},
  ];

  final List<Widget> _pagesPath = [
    AccountsAndCardScreen(),
    TransferScreen(),
    WithdrawScreen(),
MobilePrepaidScreen(),
    BillPaymentScreen(),
    SaveOnlineScreen(),
    Center(child: Text('Messages', style: TextStyle(fontSize: 24))),
    TransactionReportScreen(),
  ];

  Widget yourCustomWidget(int index) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => _pagesPath[index]),
        );
      },
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(color: Colors.grey.withOpacity(0.3), blurRadius: 5),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              items[index]['image']!,
              height: 28,
              width: 28,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 12),
            Text(
              items[index]['label']!,
              maxLines: 2,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 12,
                color: greyText,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }

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
      backgroundColor: primaryColor,
      appBar: AppBar(
        toolbarHeight: 90,
        title: Padding(
          padding: const EdgeInsets.only(left: 24.0, right: 24),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/personhomescreen.png",
                width: 50,
                height: 50,
              ),
              SizedBox(width: 18),
              SizedBox(
                width: 136,
                height: 24,
                child: Text(
                  "Hi, Push Puttichai",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(width: 97),

              Stack(
                clipBehavior: Clip.none,
                children: [
                  Icon(Icons.notifications, color: white, size: 28),
                  Positioned(
                    top: -4,
                    right: -4,

                    child: Container(
                      width: 20,
                      height: 20,
                      padding: EdgeInsets.all(2),
                      child: CircleAvatar(
                        backgroundColor: Colors.red,

                        child: Text(
                          "3",
                          style: TextStyle(fontSize: 10, color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        automaticallyImplyLeading: false,
        backgroundColor: primaryColor,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30),
            topLeft: Radius.circular(30),
          ),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 91.0, left: 14, right: 14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomCardStack(),

              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 24.0,
                    right: 24,
                    top: 32,
                  ),
                  child: GridView.custom(
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 16,
                      childAspectRatio: 1,
                    ),
                    childrenDelegate: SliverChildBuilderDelegate((
                      context,
                      index,
                    ) {
                      return yourCustomWidget(index);
                    }, childCount: items.length),
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
