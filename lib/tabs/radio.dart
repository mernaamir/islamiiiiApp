import 'package:flutter/material.dart';

class radio extends StatelessWidget{
  radio({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

backgroundColor: Colors.transparent,

    body: Column(
mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset('assets/images/radio.png'),
        Text("إذاعة القرآن الكريم",style: Theme.of(context).textTheme.bodyLarge,),
        SizedBox(height: 35,),
        Image.asset('assets/images/Group.png'),

      ],
    ),

    );
  }
}