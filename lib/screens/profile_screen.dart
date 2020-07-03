import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  _list(String listText,int iconCode) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      padding: EdgeInsets.only(
        top: 15,
        bottom: 15,
      ),
      decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(color: Colors.blueGrey),
            left: BorderSide(color: Colors.blueGrey),
            right: BorderSide(color: Colors.blueGrey),
            bottom: BorderSide(color: Colors.blueGrey),
          ),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12),
            topRight: Radius.circular(12),
            bottomRight: Radius.circular(12),
          )),
      child: Row(
        children: <Widget>[
          Expanded(
              child: Icon(
              IconData(iconCode, fontFamily: 'MaterialIcons'),
              color: Colors.deepOrange,
            ),
          ),
          SizedBox(width: 20),
          Expanded(
            flex: 4,
              child: Text(
              listText,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate([
            Container(
              margin: EdgeInsets.only(left: 30, right: 30),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('My Account',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 40)),
                          Text('Abiola Oluwajuwon',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blueGrey)),
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
                  SizedBox(height:50),
                 _list('My Account Settings',59391),
                 _list('Self Help',57894),
                 _list('Add Your BVN',59545),
                 _list('Refer & Earn ₦1,000.00',59405),
                 _list('Withdraw Funds',57895),
                 _list('My Card & Bank Settings',59638),
                _list('View Ba₦ka Library',59493),
                 _list('Contact Us',58705),
                ],
              ),
            ),
      ]),
    );
  }
}
