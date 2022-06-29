import 'package:algoriza_ftask/modules/onboard/onboard_screen.dart';
import 'package:algoriza_ftask/modules/register/register_screen.dart';
import 'package:algoriza_ftask/shared/components/buttons.dart';
import 'package:algoriza_ftask/shared/components/country_picker.dart';
import 'package:algoriza_ftask/shared/components/divider.dart';
import 'package:algoriza_ftask/shared/components/form_feild.dart';
import 'package:algoriza_ftask/shared/components/login_register_text.dart';
import 'package:algoriza_ftask/shared/components/navigate.dart';
import 'package:algoriza_ftask/shared/components/row_text_button.dart';
import 'package:algoriza_ftask/shared/styles/sizes.dart';
import 'package:algoriza_ftask/shared/styles/styles.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var phoneController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  bool showSuffix = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: getWidth(context),
                height: getHeight(context) / 3,
                child: const Image(
                  image: AssetImage('assets/images/img.PNG'),
                  fit: BoxFit.cover,
                ),
              ),
              TextLR(text: 'Sign in', onTap: () {}),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Text(
                        'Phone Number',
                        style: black2416bold(),
                      ),
                    ),
                    Form(
                      key: formKey,
                      child: FormFeild(
                        keyboardType: TextInputType.number,
                        hintText: 'Eg. 812345678',
                        controller: phoneController,
                        widget: CountryPicker(),
                        textValidate: 'Phone number is not registered',
                         validateFunction: () {
                            setState(() {
                              showSuffix = true;
                            });
                        },
                        suffixIcon: showSuffix ? Icons.warning: null,
                        suffixColor: Colors.red,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: DefaultButton(
                        onTap: () {
                          if (formKey.currentState!.validate()) {
                            print('login validate success');
                          }
                        },
                        text: 'Sign In',
                      ),
                    ),
                    const RowDivider(),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: MyOutlinedButton(
                        text: 'Sign with by google',
                        onTap: () {
                          navigateTo(context, OnBoardScreen());
                        },
                      ),
                    ),
                    RowText(
                        widget: const RegisterScreen(),
                        text: 'Doesn\'t has any account?',
                        textButton: 'Register here',
                        textStyle: blue16bold(),
                        textStyle2: black2416()),
                    Padding(
                      padding:
                          const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                      child: Text(
                        'Use the application according to policy rules , Any kinds of violations will be subject to sanctions.',
                        style: grey14regular(),
                        textAlign: TextAlign.center,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
