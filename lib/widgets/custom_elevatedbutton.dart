import 'package:bank/utilities/colors.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  VoidCallback? buttonPressed;
  final String buttonText;
  final Color buttonColor;
  double? buttonWidth;
  double? buttonHeight;

  CustomButton({
    required this.buttonText,
    this.buttonPressed,
    required this.buttonColor,
    this.buttonWidth,
    this.buttonHeight,
    super.key,
  });

  @override
  CustomButtonState createState() => CustomButtonState();
}

class CustomButtonState extends State<CustomButton> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SizedBox(
      /*width: MediaQuery.of(context).size.width*0.9,
      height: MediaQuery.of(context).size.height*0.06,*/
      //width: widget.buttonWidth??MediaQuery.of(context).size.width,
      height: widget.buttonHeight ?? MediaQuery.of(context).size.height * 0.05,
      width: widget.buttonWidth ?? MediaQuery.of(context).size.width * 0.9,


      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          backgroundColor: widget.buttonColor,
        ),

        onPressed: widget.buttonPressed,
        child: Center(
          child: Text(
            widget.buttonText,
            style: TextStyle(
              color: white,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
