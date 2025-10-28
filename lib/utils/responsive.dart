import 'package:flutter/material.dart';

bool isDisplayDesktop(BuildContext context) {
  return MediaQuery.of(context).size.width >= 900;
}

bool isDisplayTablet(BuildContext context) {
  final width = MediaQuery.of(context).size.width;
  return width >= 600 && width < 900;
}

bool isDisplayMobile(BuildContext context) {
  return MediaQuery.of(context).size.width < 600;
}
