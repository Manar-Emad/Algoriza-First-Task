import 'package:algoriza_ftask/shared/styles/colors.dart';
import 'package:algoriza_ftask/shared/styles/styles.dart';
import 'package:flutter/material.dart';

class TextLR extends StatelessWidget {
  final String text;
  final Function()? onTap;
  const TextLR({Key? key, required this.text,required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:const  EdgeInsets.symmetric(vertical: 10,horizontal: 20) ,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Welcome to Fashion Daily',style:black2614(),),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(text,style: black24bold(),),
                InkWell( onTap: onTap,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Text('Help',style: blue16regular(),),
                      ),
                      const CircleAvatar(
                        backgroundColor:blueColor ,radius: 10,
                        child: Icon(Icons.question_mark_rounded,size:12,
                            color: defTextColor),
                      ),
                    ],
                  ),
                ),
              ],),
          ),],
      ),
    );
  }
}
