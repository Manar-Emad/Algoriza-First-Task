
import 'package:algoriza_ftask/shared/styles/sizes.dart';
import 'package:algoriza_ftask/shared/styles/styles.dart';
import 'package:flutter/material.dart';

class MyDivider extends StatelessWidget {
  const MyDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        height: 1.0,
        color: Colors.grey[200],
      ),
    );
  }
}

class RowDivider extends StatelessWidget {
  const RowDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getWidth(context),
      child: Row(
        children: [
          const MyDivider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text('Or',style:grey14regular()),
          ),
          const MyDivider(),
        ],
      ),
    );
  }
}
