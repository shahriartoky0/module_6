/*Requirements:

An app bar titled "My Shopping List.", with a cart icon.

A list of at least 5 shopping items displayed using ListTile widgets.

Each item should have an icon (use any icon) and a name (name of any object).
Apply suitable styling for visual appeal.
 */

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main()
{
  runApp( const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(home: HomeActivity(),debugShowCheckedModeBanner: false));
  }

}

class HomeActivity extends StatelessWidget{

  List <String> listitem =['Apples','Bananas','Bread','Milk','Eggs' ];

  mySnackbar(context , message)
  {
    return  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Shopping List.'),
        centerTitle: true,
        actions: [
          Icon(Icons.shopping_cart),
          Text('  '),
        ],
      ),
      body: ListView.separated(itemBuilder: (context,index)
          {
            return GestureDetector(
             child: ListTile(
               leading: Icon(Icons.shopping_bag_outlined),
               title: Text(listitem[index]),
             ),
              onTap: (){mySnackbar(context, 'You ordered ${listitem[index]}');},
            );
          }
          , separatorBuilder: (context, index){
        return Column(
          children: [Divider()],
        );
          }, itemCount: listitem.length),


    )
    ;
  }

}