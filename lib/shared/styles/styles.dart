import 'package:flutter/material.dart';
import 'colors.dart';

///Logo Design
TextStyle logoStyle(final Color color) =>  TextStyle(
  fontSize: 26.0,
  fontWeight: FontWeight.bold,
  color: color,
);

/// black26 style
TextStyle black2614() => const TextStyle(
  fontSize: 14.0,
  color:black54Color,
);
TextStyle black2416() => const TextStyle(
  fontSize: 16.0,
  color:black54Color,
);
TextStyle black2414bold() => const TextStyle(
  fontSize: 14.0,
  fontWeight: FontWeight.bold,
  color:black54Color,
);

/// blackBold Style
TextStyle black24bold() => const TextStyle(
  fontSize: 24.0,
  fontWeight: FontWeight.bold,
  color:secondColor,
);
TextStyle black22bold() => const TextStyle(
    fontSize: 22.0,
   fontWeight: FontWeight.bold,
   color:secondColor,
 );
TextStyle black20bold() => const TextStyle(
  fontSize: 20.0,
  fontWeight: FontWeight.bold,
  color:secondColor,
);
TextStyle black14bold() => const TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.bold,
    color: Colors.black
);

/// grey regular Style
TextStyle grey14regular() => const TextStyle(
  fontSize: 14.0,
  color:greyColor,
);
TextStyle grey12regular() => const TextStyle(
  fontSize: 12.0,
  color:greyColor,
);

/// grey bold Style
TextStyle grey14bold() => const TextStyle(
  fontSize: 14.0,
  color:greyColor,
  fontWeight: FontWeight.bold
);

///Primary Color Bold Text Style
TextStyle prim20bold() => const TextStyle(
  fontSize: 20.0,
  fontWeight: FontWeight.bold,
  color: primaryColor,
);
TextStyle prim24bold() => const TextStyle(
  fontSize: 24.0,
  fontWeight: FontWeight.bold,
  color: primaryColor,
);
TextStyle prim14bold() => const TextStyle(
  fontSize: 14.0,
  fontWeight: FontWeight.bold,
  color: primaryColor,
);

///blue style
TextStyle blue14regular() => const TextStyle(
  fontSize: 14.0,
  color: blueColor,
);
TextStyle blue12regular() => const TextStyle(
  fontSize: 12.0,
  color: blueColor,
);
TextStyle blue14bold() => const TextStyle(
  fontSize: 14.0,
  fontWeight: FontWeight.bold,
  color: blueColor,
);


///MaxLines Style
Text txtMaxLines1(String txt) =>  Text(txt,
  maxLines: 1 ,overflow: TextOverflow.ellipsis,
);

Text txtMaxLinesB1(String txt) =>  Text(txt,style: const TextStyle(
    fontWeight: FontWeight.bold,fontSize: 12),
  maxLines: 1 ,overflow: TextOverflow.ellipsis,
);
