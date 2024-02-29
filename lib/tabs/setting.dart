import 'package:flutter/material.dart';
import 'package:firs_app/sheets/languages.dart';
import 'package:firs_app/sheets/themeBottom.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../provider/myProvider.dart';


class setting extends StatelessWidget{
  setting({super.key});

  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<myProvider>(context);

    // TODO: implement build
    return Padding(
      padding:EdgeInsets.all(18.0),

      child: Column(

        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Text(AppLocalizations.of(context)!.language),
          SizedBox(
            height: 12,
          ),
          InkWell(
            onTap: (){
              showModalBottomSheet(context: context,
                  isScrollControlled: true,
                  builder: (context){

return Container(

  height: MediaQuery.of(context).size.height*.7,
  child: languageSheet(),
);
              });
            },
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                border: Border.all(color: Color(0xffB7935F))
              ),
                  width: double.infinity,
              child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12),

                  child: Text(provider.languageCode=="en"?AppLocalizations.of(context)!.english:AppLocalizations.of(context)!.arabic),

            ),
          ),),

            SizedBox(
            height: 35,
          ),
            Text(AppLocalizations.of(context)!.myTheme),
          SizedBox(
            height: 12,
          ),
          InkWell(
            onTap: (){
              showModalBottomSheet(context: context, builder: (context){
                return Container(
                  height: MediaQuery.of(context).size.height*.7,
                  child: themesheet(),
                );
              });

            },
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 12),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(color: Color(0xffB7935F))
              ),
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 12),

                child: Text(AppLocalizations.of(context)!.light),
              ),

            ),
          )
        ],
      ),
    );
  }
}