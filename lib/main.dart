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
  // const HomeActivity({super.key});

  List<String> listImages =[
    'https://images.pexels.com/photos/1805053/pexels-photo-1805053.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/2882234/pexels-photo-2882234.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/3156482/pexels-photo-3156482.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/1592384/pexels-photo-1592384.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/909907/pexels-photo-909907.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/358070/pexels-photo-358070.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/627678/pexels-photo-627678.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/3311574/pexels-photo-3311574.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/1638459/pexels-photo-1638459.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/712618/pexels-photo-712618.jpeg?auto=compress&cs=tinysrgb&w=600'
    'https://images.pexels.com/photos/712618/pexels-photo-712618.jpeg?auto=compress&cs=tinysrgb&w=600'

  ];

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
            SizedBox(height: 20,),
            Container(margin: EdgeInsets.fromLTRB(15, 1, 15, 20),
              child:
              TextField(decoration: InputDecoration(
                  label: Text('Search for photos',style: TextStyle(color: Colors.grey),),suffixIcon: Icon(Icons.image,color: Colors.greenAccent,),border: OutlineInputBorder())),
            ),
            GridView.builder(shrinkWrap: true,gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,crossAxisSpacing: 0),
              itemCount: listImages.length,
              itemBuilder: (context, index){
                return

                  GridTile(
                    child: Container(
                      margin: EdgeInsets.fromLTRB(5,0,5,9,),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child:
                        GestureDetector(child: Image.network(listImages[index],fit: BoxFit.fill,)),
                      ),
                    ),

                    footer:
                    Center(child: RichText(text: TextSpan(text: 'Photo: ', style: TextStyle(color: Colors.black,fontSize: 12),children: [TextSpan(text: ' $index',style: TextStyle(color: Colors.red,fontSize: 14,fontWeight: FontWeight.bold))]),)),
                  );
              },
            ),
            const SizedBox(height: 30),
            ListView.separated(
              shrinkWrap: true,
              itemCount: 10, // Adjust the number of ListTiles as needed
              itemBuilder: (context, index) {
                return ListTile(
                  title: RichText(text: TextSpan(text: 'Photo: ', children: [TextSpan(text: '$index',style: TextStyle(color: Colors.purple,fontWeight: FontWeight.bold,fontSize: 20))]),),
                  subtitle: RichText(text: TextSpan(text: 'Description of Photo : ',style: TextStyle(color: Colors.grey,), children: [TextSpan(text: '$index',style: TextStyle(color: Colors.green,))]),),
                    leading:
                    Container(
                      width: 50,
                        height: 50,
                       decoration: BoxDecoration(border: Border.all(width: 2,),borderRadius: BorderRadius.all(Radius.circular(100))),
                        child: 
                        ClipRRect(borderRadius: BorderRadius.all(Radius.circular(100)),child: Image.network(listImages[index],fit: BoxFit.cover)))
                ,
                  onTap: (){},
                  hoverColor: Colors.lightGreenAccent,
                );


              },
              separatorBuilder: (context, index){
                return const Column(children: [Divider()]);
              },
            ),



          ],
        ),
      ),
    );
  }

}