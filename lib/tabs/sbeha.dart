import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firs_app/my_theme.dart';
import 'package:flutter/widgets.dart';

class ahadeth extends StatefulWidget{
  ahadeth({super.key});

  @override
  State<ahadeth> createState() => _ahadethState();
}

class _ahadethState extends State<ahadeth> {
  int counter=0;

  int counter1=0;

  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return Scaffold(
backgroundColor: Colors.transparent,
      body: Container(

        margin: EdgeInsets.all(30),

        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
                child: Image.asset('assets/images/headedit2.png',alignment: Alignment.center,),
              ),
            ),
            InkWell(
              onTap: (){
                counter++;

                if(counter==31){

                  counter=0;
                  counter1++;
                }
                if(counter1==4){
                  counter1=1;
                }
                setState(() {

                });
              },

                child: Image.asset('assets/images/seb7a.png',width: 290,)



            ),Text("عدد التسبيحات",style:Theme.of(context).textTheme.bodyLarge,),
            SizedBox(height: 30,),
            Container(
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xffB7935),

                  borderRadius: BorderRadius.circular(20)
                ),
                  width: 70,
                  height:60,

                  child: Center(child: Text("$counter",style: TextStyle(fontSize: 25),))),
            ),
          SizedBox(
            height: 10,
          ),


          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (counter1 == 1) ...[
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xffB7935F),
                    borderRadius: BorderRadius.circular(18)
                  ),
                    width: 120,

                    child: Center(child: Text("سبحان الله",style: TextStyle(color: Colors.white),)))
              ] else if(counter1 == 2)...[
                Container(
                  decoration: BoxDecoration(
                      color: Color(0xffB7935F),
                      borderRadius: BorderRadius.circular(18)
                  ),
                    width: 120,

                    child: Center(child: Text("الحمد لله",style: TextStyle(color: Colors.white),)))
              ] else ...[
                Container(
                  decoration: BoxDecoration(
                      color: Color(0xffB7935F),
                      borderRadius: BorderRadius.circular(18)
                  ),
                    width: 120,
                    child: Center(child: Text("الله اكبر ",style: TextStyle(color: Colors.white),)))              ],
            ],
          )


          ],
        ),
      ),
    );
  }
}