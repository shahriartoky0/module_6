import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class homePage extends StatelessWidget{
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(

            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Activity1('Passing Data')));
              }, child: Text('Activity 1')),
            ],
          ),]));

  }

}


class Activity1 extends StatelessWidget{

  String sendData;

       Activity1(
      //passing data
      this.sendData,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  title: Text('Activity 1'),
),
      body: Column(
        children: [
          TextButton(onPressed: (){}, child: Text('Activity 2')),
          ElevatedButton(onPressed: (){}, child: Text(sendData)),
        ],
      ),
    );
  }

}