import 'package:algoriza_ftask/modules/login/login_screen.dart';
import 'package:algoriza_ftask/shared/components/buttons.dart';
import 'package:algoriza_ftask/shared/components/divider.dart';
import 'package:algoriza_ftask/shared/components/form_feild.dart';
import 'package:algoriza_ftask/shared/components/login_register_text.dart';
import 'package:algoriza_ftask/shared/components/navigate.dart';
import 'package:algoriza_ftask/shared/components/row_text_button.dart';
import 'package:algoriza_ftask/shared/styles/colors.dart';
import 'package:algoriza_ftask/shared/styles/sizes.dart';
import 'package:algoriza_ftask/shared/styles/styles.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
   RegisterScreen({Key? key}) : super(key: key);

  var phoneController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   body:SingleChildScrollView(
     child: Column(
       children: [
         Stack(
           alignment: AlignmentDirectional.centerStart,
             children: [
             Container(
               color: Colors.red,
               width: getWidth(context),
               height: getHeight(context)/7,
               child:const Image(image: AssetImage('assets/images/img.PNG'),
                 fit: BoxFit.cover, ),),
                Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 20),
                 child: InkWell(
                   onTap: (){navigateTo(context, LoginScreen());},
                   child: const CircleAvatar(
                     backgroundColor:secondColor ,radius: 20,
                     child: Padding(
                       padding: EdgeInsets.only(left: 5),
                       child:  Icon(Icons.arrow_back_ios,size:18,
                           color: defTextColor),
                     ),
                   ),
                 ),
               ),
             ],
           ),
         TextLR(text: 'Register',onTap: (){}),
         Form(
           key: formKey,
           child: Padding(
             padding: const EdgeInsets.symmetric(horizontal: 20),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Text('Email',style:black2414bold() ,),
                  Padding(
                    padding: const EdgeInsets.only(top: 10,bottom: 20),
                    child: FormFeild(
                     keyboardType: TextInputType.emailAddress,
                     hintText: 'Eg.example@email.com',
                     controller: emailController,
                     textValidate: 'Phone email is not registered',
                 ),
                  ),
                 Text('Phone Number',style:black2414bold() ,),
                 Padding(
                   padding: const EdgeInsets.only(top: 10,bottom: 20),
                   child: FormFeild(
                     keyboardType: TextInputType.number,
                     hintText: 'Eg.812345678',
                     controller: phoneController,
                     textValidate: 'Phone number is not registered',
                   ),
                 ),
                 Text('Password',style:black2414bold() ,),
                 Padding(
                   padding: const EdgeInsets.only(top: 10,bottom: 20),
                   child: FormFeild(
                     keyboardType: TextInputType.text,
                     hintText: 'Eg.812345678',
                     controller: passwordController,
                     textValidate: 'Password is too short',
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.symmetric(vertical: 10),
                   child: DefaultButton(onTap:(){
                     if(formKey.currentState!.validate()){
                       print('register validate success');
                     }
                   } ,text:'Register' ,),
                 ),
                 const RowDivider(),
                 Padding(
                   padding: const EdgeInsets.symmetric(vertical: 10),
                   child: MyOutlinedButton(
                     text: 'Sign with by google',
                     onTap: (){},
                   ),
                 ),
                 RowText(widget:  RegisterScreen(),
                     text: 'Has any account?',
                     textButton:'Sign in here' ,textStyle: blue14bold(),textStyle2: black2416()),
                  sizedBoxh1,
                  Center(
                    child: Text('By registering your account, you are agree to our ',
                     style: grey12regular(),textAlign: TextAlign.center,maxLines: 2,overflow: TextOverflow.ellipsis,
                 ),
                  ),
                 Center(child: TextButton(onPressed:(){},child:Text('terms and conditions',style:blue12regular() ,textAlign: TextAlign.center,))),

               ],
             ),
           ),
         ),

       ],
     ),
   ) ,
    );
  }
}
