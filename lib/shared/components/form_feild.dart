import 'package:flutter/material.dart';

class FormFeild extends StatelessWidget {
  final TextEditingController controller;
  final bool obSecure;
  final TextInputType keyboardType;
  final String textValidate;
  final String hintText;
   Icon? suffix;

   FormFeild({Key? key,
    required this.controller,
     this.obSecure= false,
     this.keyboardType=TextInputType.text,
    required this.textValidate, required this.hintText,this.suffix
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
decoration: InputDecoration(
  hintText: hintText,
  hintStyle: TextStyle(color: Colors.grey[300]),
  suffix:suffix ,
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(1.0),
  ),
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(1.0),
    borderSide:  BorderSide(
      color: Colors.grey.withOpacity(.3),
      width: 2.0,
    ),
  ),
  border:OutlineInputBorder(
    borderRadius: BorderRadius.circular(1),
  ),
),
      obscureText: obSecure,
      keyboardType: keyboardType,
      controller: controller,
      validator: (value) {
        if (value!.isEmpty) {
          return textValidate;
        }
        return null;
      },
    );
  }
}
