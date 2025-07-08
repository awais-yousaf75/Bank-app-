import 'package:bank/utilities/colors.dart';
import 'package:flutter/material.dart';


class CustomTextField extends StatefulWidget
{
  String? inputLabel;
  final String hintLabel;
  bool? isPassword;
  TextEditingController? inputController;
  double? widthField;
  double? heightBtwLabelAndFeild;
  void Function()? onFieldTap;

  CustomTextField({
    required this.hintLabel,
    this.inputLabel,
    this.isPassword,
    this.inputController,
    this.widthField,
    this.heightBtwLabelAndFeild,
    this.onFieldTap,
    super.key,
  });
  @override
  CustomTextFieldState createState()=>CustomTextFieldState();
}

class CustomTextFieldState extends State<CustomTextField> 
{
  bool isPasswordVisible = false;
  

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.inputLabel != null)
          Text(
            widget.inputLabel!,
            style: TextStyle(
              fontSize: 12,
              color: greyText,
              fontWeight: FontWeight.w600,
            ),
          ),
        if(widget.inputLabel!=null)
          SizedBox(height: widget.heightBtwLabelAndFeild?? 16),


        SizedBox(
          width: widget.widthField??MediaQuery.of(context).size.width * 0.9,

          child: TextField(
            onTap: widget.onFieldTap,
            controller: widget.inputController,
            obscureText: widget.isPassword == true ? !isPasswordVisible : false,
            decoration: InputDecoration(
              hintText: widget.hintLabel,

              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              suffixIcon: widget.isPassword == true
                  ? IconButton(
                icon: Icon(
                  isPasswordVisible
                      ? Icons.visibility
                      : Icons.visibility_off,
                  color: greyText,
                ),
                onPressed: () {
                  setState(() {
                    isPasswordVisible = !isPasswordVisible;
                  });
                },
              )
                  : null,
            ),

          ),
        ),
      ],
    );
  }
}
