import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle textStyleHead() {
  return GoogleFonts.alike(
    fontWeight: FontWeight.bold,
    fontSize: 16,
  );
}

TextStyle textStyle() {
  return GoogleFonts.alike(
    //fontWeight: FontWeight.bold,
    fontSize: 14,
  );
}

TextStyle textStyleBold() {
  return GoogleFonts.alike(
    fontWeight: FontWeight.bold,
    fontSize: 14,
  );
}

TextStyle textStyleWhite() {
  return GoogleFonts.alike(
    //fontWeight: FontWeight.bold,
    color: Color.fromRGBO(255, 255, 255, 1.0),
    fontSize: 10,
  );
}
