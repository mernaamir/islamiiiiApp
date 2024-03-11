import 'package:firs_app/provider/myProvider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class languageSheet extends StatelessWidget{
   languageSheet ({super.key});

  @override
  Widget build(BuildContext context) {

    var provider=Provider.of<myProvider>(context);
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: (){
                   provider.changeLanguage("en");
                },
                child: Text(AppLocalizations.of(context)!.english,style:

                TextStyle(color:provider.languageCode=="en"? Color(0xffB7935F):Colors.black,fontSize: 30)),
              ),
              provider.languageCode=="en"
                  ? Icon(
                Icons.done,
                size: 30,
                color: Color(0xffB7935F),
              )
                  : SizedBox()

            ],
          )
          ,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [
              InkWell(
                onTap: (){
                  provider.changeLanguage("ar");
                },
                child: Text(AppLocalizations.of(context)!.arabic,
                    style: TextStyle(
                        color:provider.languageCode=="en"?Colors.black: Color(0xffB7935F),

                        fontSize: 30)

                ),
              ),
              provider.languageCode=="ar"
                  ? Icon(
                Icons.done,
                size: 30,
                color: Color(0xffB7935F),
              )
                  : SizedBox()
              // provider.changeLanguage=="en"?SizedBox():
              // Icon(Icons.done,size:30,color:Color(0xffB7935F) ,)
            ],
          )
        ],
      ),
    );
  }
}