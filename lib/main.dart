import 'package:algoriza_ftask/modules/onboard/onboard_screen.dart';
import 'package:algoriza_ftask/shared/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: primaryColor,
        scaffoldBackgroundColor: Colors.white,
      )
          /*.copyWith(appBarTheme:AppBarTheme( toolbarHeight: 0,elevation:0,
        systemOverlayStyle:SystemUiOverlayStyle(statusBarColor: Colors.transparent,),)
      ),*/,

      home: const OnBoardScreen(),
    );
  }
 }
