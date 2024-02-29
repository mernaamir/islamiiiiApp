import 'package:flutter/material.dart';


class MyThemeData {

 static ThemeData lightTheme= ThemeData(
   brightness: Brightness.light,
   textTheme: TextTheme(
bodyLarge: TextStyle(
  fontSize: 30,
  fontWeight: FontWeight.bold
),
     bodyMedium: TextStyle(
       fontWeight: FontWeight.w400,
       fontSize: 25
     )
   ),
   scaffoldBackgroundColor: Colors.transparent,
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    selectedItemColor: Colors.white,
    unselectedItemColor: Colors.black,
    backgroundColor: Color(0xffB7935F),
    type: BottomNavigationBarType.fixed,
    showSelectedLabels: false,
    showUnselectedLabels: false,


  ),
  appBarTheme: AppBarTheme(

  backgroundColor: Colors.transparent,
  centerTitle: true,
  iconTheme: IconThemeData(
  color: Colors.black,
  ),
  titleTextStyle: TextStyle(
  fontSize: 30,
  fontWeight: FontWeight.bold,
  color: Colors.black
  )
  )
  );
 static ThemeData darkTheme= ThemeData(
     appBarTheme: AppBarTheme(
         backgroundColor: Colors.transparent,
         centerTitle: true,
         iconTheme: IconThemeData(
           color: Colors.red,
         ),
         titleTextStyle: TextStyle(
             fontSize: 30,
             fontWeight: FontWeight.bold,
             color: Colors.black
         )
     )
 );





}