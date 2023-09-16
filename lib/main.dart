import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main()
{
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeActivity());
  }


}
class HomeActivity extends StatelessWidget
{
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: Text("Photo Gallery"),
          centerTitle: true,
),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10,),
            RichText(text: TextSpan(text: ' Welcome to My Photo Gallery!',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.black)),),
            TextField(decoration: InputDecoration(
                label: Text('Search for photos',style: TextStyle(color: Colors.grey),),suffixIcon: Icon(Icons.image,color: Colors.greenAccent,)))

          ],
        ),
      ),
    );
  }

}