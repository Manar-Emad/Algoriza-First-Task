import 'package:algoriza_ftask/shared/styles/colors.dart';
import 'package:algoriza_ftask/shared/styles/sizes.dart';
import 'package:algoriza_ftask/shared/styles/styles.dart';
import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';

class CountryPicker extends StatefulWidget {
   CountryPicker({Key? key}) : super(key: key);

  @override
  State<CountryPicker> createState() => _CountryPickerState();
}

class _CountryPickerState extends State<CountryPicker> {
  String countryCode='+ 20';

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showCountryPicker(
          context: context,
          exclude: <String>['KN', 'MF'],
          favorite: <String>['SE'],
          showPhoneCode: true,
          onSelect: (Country country) {
            // print('Select country: ${country.displayName}');
            setState((){
              countryCode=country.phoneCode.toString();
            });
            print('Select country: ${country.countryCode}');
          },
          countryListTheme: CountryListThemeData(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(40.0),
              topRight:  Radius.circular(40.0),
            ),
            inputDecoration: InputDecoration(
              labelText: 'Search',
              hintText: 'Start typing to search',
              prefixIcon: const Icon(Icons.search),
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: const Color(0xFF8C98A8)
                      .withOpacity(0.2),
                ),
              ),
            ),
          ),
        );
      },
      child: SizedBox(
        width: getWidth(context)/6,
        height: getHeight(context)/20,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text(countryCode,style: black14bold(),),
          const Icon(Icons.keyboard_arrow_down,size: 20,color: secondColor,)
        ],),
      ),
    );
  }
}
