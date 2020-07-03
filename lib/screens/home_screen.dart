import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  _contain(String text1,String amount,Color cardColor,int iconCode){
    return Container(
      decoration: BoxDecoration(
       color:cardColor,
        borderRadius:BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
          bottomRight: Radius.circular(10),
        )                     
      ),
      margin: EdgeInsets.only(right:20),      
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:<Widget>[
          Row(
            children: <Widget>[
              Expanded(
                  child: Icon(
                  IconData(iconCode, fontFamily: 'MaterialIcons'),
                  color: Colors.white,
                ),
              ),
              Expanded(
                  flex: 4,
                  child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:<Widget>[
                    Text(
                      text1,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                    SizedBox(height:5),
                    Text(
                      '₦$amount',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                  ]
                ),
              )
            ],
          )
        ]
      ),
    );
  }
  _contain2(String text1,String text2,int iconCode){
    return Container(
      padding: EdgeInsets.only(
        top:20,
        bottom:20,
        right:10,
        left:5,
      ),
       margin: EdgeInsets.only(
        bottom:20
      ),
      decoration: BoxDecoration(
        borderRadius:BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),             
        border: Border(
          top: BorderSide(color: Colors.deepOrange),
          left: BorderSide(color: Colors.deepOrange),
          right: BorderSide(color: Colors.deepOrange),
          bottom: BorderSide(color: Colors.deepOrange),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:<Widget>[
          Row(
            children: <Widget>[
              Expanded(
                  child: Icon(
                  IconData(iconCode, fontFamily: 'MaterialIcons'),
                  color: Colors.deepOrange,
                ),
              ),
              Expanded(
                  flex: 4,
                  child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:<Widget>[
                    Text(
                      text1,
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                    SizedBox(height:3),
                    Text(
                      text2,
                      style: TextStyle(
                        color: Colors.blueGrey,
                        // fontSize: 25,
                      ),
                    ),
                  ]
                ),
              )
            ],
          )
        ]
      ),
    );
  }
  _list(String listText){
    return Container(
      margin: EdgeInsets.only(
        bottom:15
      ),
      padding: EdgeInsets.only(
        top:15,
        bottom:15,
        right:10,
        left:20,
      ),
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(color: Colors.blueGrey),
          left: BorderSide(color: Colors.blueGrey),
          right: BorderSide(color: Colors.blueGrey),
          bottom: BorderSide(color: Colors.blueGrey),
        ),
        borderRadius: BorderRadius.only(
          topLeft:Radius.circular(12),
          topRight:Radius.circular(12),
          bottomRight:Radius.circular(12),
        )
      ),
      child:Row(
        children: <Widget>[
        Container(
        width: 20,
        height: 20,
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(width: 2.0,color: Colors.deepOrange),
            left: BorderSide(width: 2.0,color: Colors.deepOrange),
            right: BorderSide(width: 2.0,color: Colors.deepOrange),
            bottom: BorderSide(width: 2.0,color: Colors.deepOrange),
          ),
          borderRadius: BorderRadius.all(Radius.circular(50)),
        ),
          ),
          SizedBox(width:20),
        Text(listText,style: TextStyle(fontWeight:FontWeight.bold),)
      ],),
    );
  }
  
  int selectedIndex = 1;
  
  @override
  Widget build(BuildContext context) {
    return SliverList(
            delegate: SliverChildListDelegate([
             Column(
              children: <Widget>[
            Container(
              margin: EdgeInsets.only(
                left:30,
                right:30
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment:CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'jhayX,',
                        style:TextStyle(
                          fontWeight:FontWeight.bold,
                          fontSize:40
                        )
                      ),
                      Text(
                        'Have you washed your hands?, 🌻',
                        style:TextStyle(
                          fontSize: 15,
                          fontWeight:FontWeight.bold,
                          color: Colors.blueGrey
                        )
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Icon(
                      Icons.person_outline,
                      color: Colors.white,
                    ),
                  )
                ],
          ),
            ),
            SizedBox(height:10),
          Container(
            height: 110,
            child:PageView(
              controller: PageController(
                viewportFraction:0.85,
                initialPage: 0
              ),
              children: <Widget>[
               _contain('Total Savings', '290,867.97',Theme.of(context).primaryColor,58154),
               _contain('Total Investments','78,286.79',Colors.purple,59621),
               _contain('Flex Dollar','467,542.12',Colors.black,57895),
            ],)
          ),
          Container(
            margin: EdgeInsets.only(
                left:30,
                right:30
              ),
            child: Column(
              children: <Widget>[
                SizedBox(height:30),
                Text('$selectedIndex'),
                Row(
                  children:<Widget>[
                    RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(text: 'TO-DO LIST ', style: TextStyle(fontSize:17,fontWeight: FontWeight.bold,color: Colors.blueGrey)),
                          TextSpan(text: '- REFRESH',style: TextStyle(fontSize:17,fontWeight: FontWeight.bold,color: Theme.of(context).primaryColor)),
                        ],
                      ),
                    )
                  ]
                ),
                SizedBox(height: 20),
                _list('Add your BVN now!'),
                _list('Turn on your Ba₦ka AutoSave 🚦'),
                _list('Safelock ₦500,000 for 61 - 90 days'),
                _contain2('Get Ba₦ka Savings Interest for March!','Tap to get interest on your savings for March',59638),
                _contain2('Stay Informed: COVID-19 🦠','Get the latest information directly from the WHO (World Health Organization) about corona virus',59621),
                _contain2('See your recent activities','See your most recent activities on Ba₦ka',59612),
                _contain2('Create a Safelock','Avoid spending temptations. Tap to create a Safelock',59545),
              ],
            ),
          )
         ],
        ),

            ]),
          );
  }
}