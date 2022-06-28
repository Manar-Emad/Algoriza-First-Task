import 'package:algoriza_ftask/modules/login/login_screen.dart';
import 'package:algoriza_ftask/modules/register/register_screen.dart';
import 'package:algoriza_ftask/shared/components/buttons.dart';
import 'package:algoriza_ftask/shared/components/navigate.dart';
import 'package:algoriza_ftask/shared/components/row_text_button.dart';
import 'package:algoriza_ftask/shared/styles/colors.dart';
import 'package:algoriza_ftask/shared/styles/sizes.dart';
import 'package:algoriza_ftask/shared/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BoardModel {
  final String image;
  final String title;
  final String body;

  BoardModel({required this.image, required this.title, required this.body});
}

class OnBoardScreen extends StatefulWidget {
  const OnBoardScreen({Key? key}) : super(key: key);

  @override
  _OnBoardScreenState createState() => _OnBoardScreenState();
}

class _OnBoardScreenState extends State<OnBoardScreen> {
  late List<BoardModel> list;

  @override
  void initState() {
    super.initState();
  }

  var isLast = false;
  final controller = PageController();

  @override
  Widget build(BuildContext context) {
    list = [
      BoardModel(
        image: 'assets/images/delivery1.png',
        title: 'Get food delivery to your doorstep asap',
        body:
            'we have young and professional delivery team that will bring your food as soon as possible to your doorstep',
      ),
      BoardModel(
        image: 'assets/images/man2.png',
        title: 'Buy Any Food from your favourite restaurant',
        body:
            'we are constantly adding your favourite restaurant throughout the territory and around your area carefully selected',
      ),
    ];
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: PageView.builder(
                physics: const BouncingScrollPhysics(),
                onPageChanged: (int index) {
                  if (index == (list.length - 1) && !isLast) {
                    setState(() => isLast = true);
                  } else if (isLast) {
                    setState(() => isLast = false);
                  }
                },
                controller: controller,
                itemCount: list.length,
                itemBuilder: (context, i) => Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                  Container(
                  width:getWidth(context)/5,
                  height: getHeight(context)/15,
                  clipBehavior:Clip.antiAliasWithSaveLayer ,
                  decoration:  BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color:skipColor ,
                  ),
                  child: MaterialButton(
                    onPressed: (){
                      navigateAndFinish(context, LoginScreen(),);
                    },
                    child: const Text('Skip'),
                  ),
                ),
                      ],
                    ),
                    RichText(
                      text:  TextSpan(
                        children: <TextSpan>[
                           TextSpan(text: '7', style: logoStyle(fLogoColor)),
                           TextSpan(text: 'Krave', style: logoStyle(logoColor)),
                        ],
                      ),
                    ),
                    Image(
                      height: getHeight(context)/2,
                    width: getWidth(context),
                      image: AssetImage(
                        list[i].image,
                      ),
                    ),
                    sizedBoxh1,
                    Text(list[i].title, maxLines:2,overflow: TextOverflow.ellipsis,
                      style: black20bold(), textAlign: TextAlign.center,),
                    sizedBoxh1,
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Text(list[i].body,style: grey14regular(),textAlign: TextAlign.center,
                        maxLines: 3 ,overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    sizedBoxh3,
                    SmoothPageIndicator(
                      count: list.length,
                      controller: controller,
                      effect: const ScrollingDotsEffect(
                        dotColor: indicatorInActiveColor,
                        activeDotColor: indicatorActiveColor,
                        dotWidth: 10,
                        dotHeight: 4,
                        spacing: 10,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            DefaultButton(
              onTap: () {
                if (isLast) {
                  navigateAndFinish(context, LoginScreen());
                } else {
                  controller.nextPage(
                    duration: const Duration(milliseconds: 750),
                    curve: Curves.fastLinearToSlowEaseIn,
                  );
                }
              },
              color: primaryColor,
              text: 'Get Started',
            ),
             Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child:RowText(text: 'Don\'t have an account?',
                textButton: 'Sign up',textStyle: prim14bold(),textStyle2: black14bold(),
                widget: RegisterScreen(),)
            ),
          ],
        ),
      ),
    );
  }
}
