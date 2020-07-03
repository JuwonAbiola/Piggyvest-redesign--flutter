import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'profile_screen.dart';
import 'test_screen.dart';

class ContainerScreen extends StatefulWidget {
  @override
  _ContainerScreenState createState() => _ContainerScreenState();
}

class _ContainerScreenState extends State<ContainerScreen> {
  int selectedIndex = 1;
  final screens = [TestScreen(),HomeScreen(),ProfileScreen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.transparent,
            floating: true,
          ),
          screens[selectedIndex]
        ],

      ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.add,size: 50,),
        splashColor: Colors.blueAccent,
        backgroundColor: Theme.of(context).primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius:BorderRadius.only(
            topLeft:Radius.circular(30),
            topRight:Radius.circular(30),
            bottomLeft:Radius.circular(30),

          )
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        color: Theme.of(context).primaryColor,
        backgroundColor: Colors.transparent,
        index: selectedIndex,
        height: 55,
        onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
        animationDuration: Duration(
          milliseconds:200
        ),
        items: [
          Icon(Icons.account_balance_wallet,color: Colors.white,),
          Icon(Icons.home,color: Colors.white,),
          Icon(Icons.person,color: Colors.white,),
        ],
      ),
    );
  }
}