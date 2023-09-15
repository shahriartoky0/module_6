import 'dart:ffi' as ffi;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:module_6/activity1.dart';
import 'package:module_6/fragment/add.dart';
import 'package:module_6/fragment/connected.dart';
import 'package:module_6/fragment/gift.dart';
import 'package:module_6/fragment/home.dart';
import 'package:module_6/fragment/setting.dart';
import 'package:module_6/fragment/wallet.dart';

main()
{
  runApp(const myApp());
}

class myApp extends StatelessWidget{
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
   return MaterialApp(home: HomeActivity(),);
  }

}
class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  mySnackbar(context, message) {
    return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message)));
  }

  myAlert(context) {
    return showDialog(context: context, builder: (BuildContext context) {
      return Expanded(child: AlertDialog(
        title: Text('Confirm'),
        content: Text('Are you sure you want to Login'),
        actions: [
          TextButton(onPressed: () {
            mySnackbar(context, 'Welcome Mr. Golam Shahriar Toky');
            Navigator.of(context).pop();
          }, child: Text('Yes')),
          TextButton(onPressed: () {
            Navigator.of(context).pop();
          }, child: Text('cancel')),
        ],
      ));
    });
  }


  @override
  Widget build(BuildContext context) {
    ButtonStyle loginStyle = ElevatedButton.styleFrom(
      backgroundColor: Colors.green,
      minimumSize: Size(double.infinity, 40), //added as ffi in package import;
    );
    var data = [
      {
        'name': "Golam Shahriar Toky",
        'Image': 'https://img.freepik.com/free-photo/decorated-tables-wedding-restaurant_8353-9963.jpg?size=626&ext=jpg'
      },
      {
        'name': "Rohan bhai",
        'Image': 'https://img.freepik.com/free-photo/shine-wedding-altar-newlyweds-stands-backyard-decorated-with-balloons_8353-8415.jpg?size=626&ext=jpg'
      },
      {
        'name': "Sakib bhai",
        'Image': 'https://img.freepik.com/free-photo/decorated-wedding-hall-with-candles-round-tables-centerpieces_8353-10057.jpg?size=626&ext=jpg'
      },
      {
        'name': "Sharfaraj",
        'Image': 'https://img.freepik.com/free-photo/decorated-tables-wedding-restaurant_8353-9963.jpg?size=626&ext=jpg'
      },
      {
        'name': "hasan",
        'Image': 'https://img.freepik.com/free-photo/shine-wedding-altar-newlyweds-stands-backyard-decorated-with-balloons_8353-8415.jpg?size=626&ext=jpg'
      },
      {
        'name': "Sakib",
        'Image': 'https://img.freepik.com/free-photo/decorated-wedding-hall-with-candles-round-tables-centerpieces_8353-10057.jpg?size=626&ext=jpg'
      },{
        'name': "hasan",
        'Image': 'https://img.freepik.com/free-photo/shine-wedding-altar-newlyweds-stands-backyard-decorated-with-balloons_8353-8415.jpg?size=626&ext=jpg'
      },
      {
        'name': "Sakib",
        'Image': 'https://img.freepik.com/free-photo/decorated-wedding-hall-with-candles-round-tables-centerpieces_8353-10057.jpg?size=626&ext=jpg'
      },{
        'name': "hasan",
        'Image': 'https://img.freepik.com/free-photo/shine-wedding-altar-newlyweds-stands-backyard-decorated-with-balloons_8353-8415.jpg?size=626&ext=jpg'
      },
      {
        'name': "Sakib",
        'Image': 'https://img.freepik.com/free-photo/decorated-wedding-hall-with-candles-round-tables-centerpieces_8353-10057.jpg?size=626&ext=jpg'
      },{
        'name': "hasan",
        'Image': 'https://img.freepik.com/free-photo/shine-wedding-altar-newlyweds-stands-backyard-decorated-with-balloons_8353-8415.jpg?size=626&ext=jpg'
      },
      {
        'name': "Sakib",
        'Image': 'https://img.freepik.com/free-photo/decorated-wedding-hall-with-candles-round-tables-centerpieces_8353-10057.jpg?size=626&ext=jpg'
      },
      {'name': "Null naam ", 'Image': null}
    ];



    return DefaultTabController(length: 5, child:

      Scaffold(
        appBar: AppBar(
          title: Text('Module 6 '),
          // leading: Icon(Icons.adb_outlined),
          // toolbarHeight: 50,
          elevation: 50,
          actions: [
            IconButton(onPressed: () {
              mySnackbar(context, 'From the appbar (home)');
            }, icon: Icon(Icons.home)),
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          ],
          bottom: TabBar(
            isScrollable: true,
            tabs: [
              Tab(icon: Icon(Icons.home),child: Text('Home'),),
              Tab(icon: Icon(Icons.person_add_alt_sharp),child: Text('Add'),),
              Tab(icon: Icon(Icons.settings),child: Text('Setting'),),
              Tab(icon: Icon(Icons.wallet),child: Text('Wallet'),),
              Tab(icon: Icon(Icons.card_giftcard),child: Text('Gift'),),
              Tab(icon: Icon(Icons.account_tree_outlined),child: Text('Connected'),),
            ],
          ),
        ),

        drawer: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(accountName: Text('Golam Shahriar Toky'),
                accountEmail: Text('accountEmail'),
                currentAccountPicture: Image.network(
                    'https://img.freepik.com/free-photo/creative-light-bulb-abstract-glowing-blue-background-generative-ai_188544-8090.jpg?w=2000'),
                decoration: BoxDecoration(
                  color: Colors.lightBlue,
                ),),
              ListTile(
                leading: Icon(Icons.home), title: Text('Home'), onTap: () {},),
              ListTile(leading: Icon(Icons.person_outline_rounded),
                title: Text('Profile'),
                onTap: () {},),
              ListTile(leading: Icon(Icons.settings),
                title: Text('Settings'),
                onTap: () {},),
              ListTile(leading: Icon(Icons.logout),
                title: Text('Logout'),
                onTap: () {},),
            ],
          ),
        ),
        endDrawer: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(accountName: Text('Golam Shahriar Toky'),
                accountEmail: Text('accountEmail'),
                currentAccountPicture: Image.network(
                    'https://img.freepik.com/free-photo/creative-light-bulb-abstract-glowing-blue-background-generative-ai_188544-8090.jpg?w=2000'),
                decoration: BoxDecoration(
                  color: Colors.lightBlue,
                ),),
              ListTile(
                leading: Icon(Icons.home), title: Text('Home'), onTap: () {},),
              ListTile(leading: Icon(Icons.person_outline_rounded),
                title: Text('Profile'),
                onTap: () {},),
              ListTile(leading: Icon(Icons.settings),
                title: Text('Settings'),
                onTap: () {},),
              ListTile(leading: Icon(Icons.logout),
                title: Text('Logout'),
                onTap: () {},),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home,), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.message,), label: 'Inbox'),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications,), label: 'Alert'),
          ],


          onTap: (int index) {
            if (index == 0) {
              mySnackbar(context, 'home pressed from bottom');
            }
            if (index == 1) {
              mySnackbar(context, 'message pressed from bottom');
            }
            if (index == 2) {
              mySnackbar(context, 'Alert pressed from bottom');
            }
          },
        ),
        body:
       TabBarView(
         children:[
            homePage(),
           add(),
           setting(),
           wallet(),
           gift(),
           connected()
          ]

       )


    )
    );
  }
}