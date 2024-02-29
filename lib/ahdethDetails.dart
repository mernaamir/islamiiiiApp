import 'package:flutter/material.dart';
import 'hadehModel.dart';
class ahadethDetails extends StatelessWidget{
  static const String routeName="ahadethdetails";
   ahadethDetails ({super.key});

  @override
  Widget build(BuildContext context) {
    var modal=ModalRoute.of(context)!.settings.arguments as HadethModel;
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
            title: Text(modal.title,style: Theme.of(context).textTheme.bodyLarge,),
          ),
          body: Card(
            margin: EdgeInsets.all(15),
            elevation: 10,
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

                return Text(modal.content[index],textAlign: TextAlign.center,
                    style:TextStyle(fontSize: 20,letterSpacing: .5));
              },itemCount: modal.content.length,
            ),
          )

      ),
    );
  }
}