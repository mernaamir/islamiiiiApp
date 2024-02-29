import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class themesheet extends StatelessWidget{
  themesheet ({super.key});
  bool isLight=true;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(AppLocalizations.of(context)!.light,style:

              TextStyle(color:isLight?

              Color(0xffB7935F):Colors.black,fontSize: 30)),
              isLight? Icon(Icons.done,size: 30,color: Color(0xffB7935F),):SizedBox()
            ],
          )
          ,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [
              Text(AppLocalizations.of(context)!.dark,style: TextStyle(color:isLight?Colors.black: Color(0xffB7935F),fontSize: 30)

              ),
              isLight?SizedBox():
              Icon(Icons.done,size:30,color:Color(0xffB7935F) ,)
            ],
          )
        ],
      ),
    );
  }
}