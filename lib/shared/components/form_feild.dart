import 'package:algoriza_ftask/shared/styles/sizes.dart';
import 'package:flutter/material.dart';

class FormFeild extends StatelessWidget {
  final TextEditingController controller;
  final bool obSecure;
  final TextInputType keyboardType;
  final String textValidate;
  final String hintText;
  Function()? onTap;
  IconData? suffixIcon;
  Color? suffixColor;
  Widget? widget;
  Function? validateFunction;
  FormFeild({
    Key? key,
    required this.controller,
    this.obSecure = false,
    this.keyboardType = TextInputType.text,
    required this.textValidate,
    required this.hintText,
    this.onTap,
    this.suffixIcon,
    this.suffixColor,
    this.widget,
    this.validateFunction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getHeight(context)/12,
      child: TextFormField(
        decoration: InputDecoration(
          prefixIcon: widget,
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey[300]),
          suffixIcon: GestureDetector(
            onTap: onTap,
            child: Icon(
              suffixIcon,
              color: suffixColor,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(1.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(1.0),
            borderSide: BorderSide(
              color: Colors.grey.withOpacity(.3),
              width: 2.0,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(1),
          ),
        ),
        obscureText: obSecure,
        keyboardType: keyboardType,
        controller: controller,
        validator: (value) {
          if (value!.isEmpty) {
            validateFunction!();
            return textValidate;
          }
          return null;
        },
      ),
    );
  }
}
