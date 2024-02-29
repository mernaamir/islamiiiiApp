
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'suraModel.dart';

class suraDetails extends StatefulWidget{
  static const String routeName="SuraDetails";
   suraDetails({super.key});

  @override
  State<suraDetails> createState() => _suraDetailsState();
}

class _suraDetailsState extends State<suraDetails> {
  List <String> verses=[];

  @override
  Widget build(BuildContext context) {
    var modal=ModalRoute.of(context)!.settings.arguments as suraModel;
if(verses.isEmpty){
  loadfile(modal.index);

}
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
centerTitle: true,
          title: Text(modal.name,style: Theme.of(context).textTheme.bodyLarge,),
        ),
        body: Card(
          margin: EdgeInsets.all(12),
          elevation: 9,
          color: Colors.white.withOpacity(.9),
          shape: OutlineInputBorder(
            borderRadius: BorderRadius.circular(24),
            borderSide: BorderSide(color: Colors.transparent)
          ),
          child: ListView.separated(
            separatorBuilder: (context,index)=>SizedBox(
              height: 12,
            ),
            itemBuilder: (context,index){

            return Text(verses[index],textAlign: TextAlign.center,
            style:TextStyle(fontSize: 20,letterSpacing: .5));
          },itemCount: verses.length,
          ),
        )

        ),
        );
  }

  Future<void>loadfile(int index) async{
    String sura=await rootBundle.loadString("assets/files/${index+1}.txt");
    List<String> lines=sura.split("\n");
    verses=lines;
    setState(() {

    });
  }
}