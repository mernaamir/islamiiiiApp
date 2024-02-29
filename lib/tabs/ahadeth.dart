import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firs_app/hadehModel.dart';
import 'package:firs_app/my_theme.dart';
import 'package:firs_app/ahdethDetails.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class sbeha extends StatefulWidget{
  sbeha({super.key});

  @override
  State<sbeha> createState() => _sbehaState();
}

class _sbehaState extends State<sbeha> {
  List<HadethModel> allahdeth=[];

  @override
  Widget build(BuildContext context) {
    if(allahdeth.isEmpty){
      loadHadethFile();
    }
    // TODO: implement build
    return Column(
      children: [
        Center(child: Image.asset("assets/images/ahadeth.png")),
        Divider(
          thickness: 3,
          color: Color(0xFFB7935F),
        ),
        Text(
          AppLocalizations.of(context)!.ahadeth,
          style: Theme.of(context).textTheme.bodyLarge,
          textAlign: TextAlign.center,

        ),
        Divider(
          thickness: 3,
          color: Color(0xFFB7935F),
        ),
        Expanded(
          child: ListView.separated(
            separatorBuilder: (context,index)=>  Divider(
              thickness: 1,
              endIndent: 50,
              indent: 50,
              color: Color(0xFFB7935F),
            ),
            itemBuilder: (context,index){
          return InkWell(
            onTap: (){
              Navigator.pushNamed(context, ahadethDetails.routeName,arguments: allahdeth[index]);
            },
            child: Text(allahdeth[index].title,textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyMedium,
            ),
          );
          },
          itemCount: allahdeth.length,
          ),
        )
      ],
    );
  }

  loadHadethFile(){
    rootBundle.loadString("assets/files/ahadeth.txt").then((hadethfile) {
      List <String> ahadeth=hadethfile.split("#");
    for(int i=0;i<ahadeth.length;i++){
      String hadethone=ahadeth[i];
      List<String>hadethLines=hadethone.trim().split("\n");
      String title=hadethLines[0];
      hadethLines.removeAt(0);
      List<String>content=hadethLines;
      print(title);
      HadethModel  hadeth=HadethModel(title,content);
      allahdeth.add(hadeth);
    }
setState(() {

});

    });
  }
}