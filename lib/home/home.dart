

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:firs_app/tabs/Qurantab.dart';
import 'package:firs_app/tabs/ahadeth.dart';
import 'package:firs_app/tabs/radio.dart';
import 'package:firs_app/tabs/sbeha.dart';
import 'package:firs_app/tabs/setting.dart';
import 'package:flutter/material.dart';



class homeScreen extends StatefulWidget{
  static const String routeName="home";
   homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
    int index=0;

  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return Container(

      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/background.png"),fit: BoxFit.fill
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text(AppLocalizations.of(context)!.appName,


              style: Theme.of(context).textTheme.bodyLarge),
          centerTitle: true,
        ),

        bottomNavigationBar: BottomNavigationBar(


          iconSize: 28,
          currentIndex: index,
          onTap: (value){
index=value;
setState(() {

});
          },
          items: [
            BottomNavigationBarItem(icon:ImageIcon(AssetImage("assets/images/ic_quran.png")),label: ""),
            BottomNavigationBarItem(icon:ImageIcon(AssetImage("assets/images/ic_sebha.png")),label: ""),

            BottomNavigationBarItem(icon:ImageIcon(AssetImage("assets/images/ic_ahadeth.png")),label: ""),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/ic_radio.png")),label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.settings),label: ""),



          ],
        ),
        body: tabs[index],

      ),
    );
  }
  List<Widget> tabs=[
Qurantab(),
    ahadeth(),
    sbeha(),
    radio(),
    setting()
  ];
}