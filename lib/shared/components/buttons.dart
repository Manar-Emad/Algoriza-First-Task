import 'package:algoriza_ftask/shared/styles/colors.dart';
import 'package:algoriza_ftask/shared/styles/sizes.dart';
import 'package:flutter/material.dart';

/// Button
class DefaultButton extends StatelessWidget {
  final Function() onTap;
  final String text;
  final Color color;
   const DefaultButton({Key? key, required this.onTap, required this.text,this.color=blueColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: getHeight(context)/14,
      clipBehavior:Clip.antiAliasWithSaveLayer ,
      decoration:  BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: color,
      ),
      child: MaterialButton(
        onPressed:
          onTap,
        child: Text(text,
          style: const TextStyle(color: defTextColor,
          ),),
      ),
    );
  }
}

/// OutLined Button
class MyOutlinedButton extends StatelessWidget {
  final Function() onTap;
  final String text;
  final Color borderColor;
  const MyOutlinedButton({Key? key,
    required this.onTap,
    required this.text,
    this.borderColor=blueColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: getHeight(context)/14,
      clipBehavior:Clip.antiAliasWithSaveLayer ,
      decoration:  BoxDecoration(
          border: Border.all(color: borderColor),
        borderRadius: BorderRadius.circular(5),
      ),
      child: MaterialButton(
        onPressed:
        onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: getHeight(context)/29,
              width: getWidth(context)/8,
              child:const Image(image: AssetImage('assets/images/google.png')),
            ),
            Text(text,style: const TextStyle(color: blueColor,),),
          ],
        ),
      ),
    );
  }
}
