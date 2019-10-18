import 'package:flutter/material.dart';
import 'package:gateapp/pages/gateman/notifications.dart';
import 'package:gateapp/pages/gateman/scheduledVisit.dart';
import 'package:gateapp/pages/gateman/widgets/bottomAppbar.dart';
import 'package:gateapp/pages/gateman/widgets/customFab.dart';
<<<<<<< HEAD
import 'package:gateapp/pages/gateman/widgets/residentTile.dart';
=======
>>>>>>> 5234b88223c52c3c381cc6f25c57a66635e2fe3e
import 'package:gateapp/utils/colors.dart';
import 'package:gateapp/utils/helpers.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'menu.dart';
import 'visitors.dart';

class ResidentsGate extends StatefulWidget {
  @override
  _ResidentsGateState createState() => _ResidentsGateState();
}

class _ResidentsGateState extends State<ResidentsGate> {
  String name = 'Danny Evans';
  bool badge = true;
  int _counter = 1;
  bool details = false;
  bool details2 = false;
  void toggle(){
    setState(() {
     details = !details; 
    });
  }
  void toggle2(){
    setState(() {
     details2 = !details2; 
    });
  }
  var _residents = [
    {
      "name": "Janet Thompson",
      "address": "Block 3A, Dele Adebayo Estate",
      "phone": "08038000000",
      "numberVisit" : 1,
      "visitor" : {
        "nameV" : "John Doe",
        "phoneV": "09099886625",
        "descriptionV":"Bald, Tall and ...",
        "etaV":"00:00 - 00:00",
        "verificationV":"QR CODE",
        "visitStatus" : "Approved",
      },
    },
    {
      "name": "Mr. Seun Adeyini",
      "address": " Block 3B, Dele Adebayo Estate",
      "phone": "08038000000",
      "numberVisit" : 1,
      "visitor" : {
        "nameV" : "John Doe",
        "phoneV": "09099886625",
        "descriptionV":"Bald, Tall and ...",
        "etaV":"00:00 - 00:00",
        "verificationV":"QR CODE",
        "visitStatus" : "Approved",
      },
    },
  ];
  
  var _visitor = {
        "nameV" : "John Doe",
        "phoneV": "09099886625",
        "descriptionV":"Bald, Tall and ...",
        "etaV":"00:00 - 00:00",
        "verificationV":"QR CODE",
        "visitStatus" : "Approved",
  };
 
  @override
  Widget build(BuildContext context) {
    final wv = MediaQuery.of(context).size.width/100;
    final hv = MediaQuery.of(context).size.width/100;
    return Scaffold(
      bottomNavigationBar: CustomBottomAppBar(),
      floatingActionButton: CustomFAB(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      //Body of the page
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top:55.0, left: 20.0),
            child: Text('Welcome $name', style: TextStyle(fontSize: 20.0, color: Color(0xff555555), fontWeight: FontWeight.w600)),
          ),
          Padding(
            padding: const EdgeInsets.only(left:20.0),
            child: Text('Peace Estate', style: TextStyle(fontSize: 14.0, color: Color(0xff49A347), fontWeight: FontWeight.w600,),)
          ),
          Padding(
            padding: const EdgeInsets.only(top:10.0, left: 20.0, right: 20.0, bottom: 12.0),
            child: TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: 'Search by Name, Phone, Address, Visitor Info',
                hintStyle: TextStyle(fontSize: 13.0),
                contentPadding: EdgeInsets.all(14.0),
                focusedBorder: GateManHelpers.textFieldBorder,
                enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
                border: GateManHelpers.textFieldBorder,
              ),
            ),
            
          ),
          Padding(
            padding: const EdgeInsets.only(left:20.0, bottom: 10.0),
            child: Text('ResidentsGate', style: TextStyle(fontSize: 14.0, color: Color(0xff49A347), fontWeight: FontWeight.w600,),)
          ),
<<<<<<< HEAD
           
          Row(
            children: <Widget>[
              Expanded(
                child: SizedBox(height: 400.0,
                  child: ListView.builder(shrinkWrap: true, physics: ScrollPhysics(),
        itemCount: _residents.length,
        itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom:10.0),
                    child: ResidentTile(
                      name: _residents[index]['name'],
                      address: _residents[index]['address'],
                      phone: _residents[index]['phone'],
                      numberVisit: 1,
                      visitStatus: _visitor['nameV'],
                      verificationV: _visitor['verificationV'],
                      descriptionV: _visitor['descriptionV'],
                      etaV: _visitor['etaV'],
                      phoneV: _visitor['phoneV'],
                      nameV: _visitor['nameV'],
=======
          Container(padding: const EdgeInsets.all(0.0), margin: const EdgeInsets.only(left: 20.0, right: 20.0),
            decoration: BoxDecoration(border: Border.all(color: Colors.grey.withOpacity(0.4))),
            child: Column(
              children: <Widget>[
                ListTile(onTap: toggle,
                  title: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Janet Thompson', style: TextStyle(fontSize: 14.0,)),
                      Padding(
                        padding: const EdgeInsets.only(top:4.0, bottom: 4.0),
                        child: Row(children: <Widget>[
                          Icon(Icons.location_on, size: 14.0, color: Color(0xff4F4F4F),),
                          Text(' Block 3A, Dele Adebayo Estate', style: TextStyle(fontSize: 11.0,))
                        ],),
                      )
                    ],
                  ),
                  subtitle: Row(children: <Widget>[
                        Icon(Icons.phone, size: 14.0, color: Color(0xff4F4F4F)),
                        Text(' 08038000000 ', style: TextStyle(fontSize: 11.0,))
                      ],),
                  trailing: InkWell(onTap: (){Navigator.pushReplacementNamed(context, '/visitors-list');},
                    child: Column(
                      children: <Widget>[
                        Container(padding: const EdgeInsets.only(top:4.0, bottom: 4.0, left: 10.0, right: 10.0), margin: const EdgeInsets.only(bottom: 3.0),
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(1.0), color: Color(0xffFFDA58)),
                          child: Text('Scheduled Visit', style: TextStyle(color: Color(0xff4F4F4F), fontSize: 9.0, fontWeight: FontWeight.bold),),
                        ),
                        Container(padding: const EdgeInsets.only(left: 6.0, right: 6.0),
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(5.0), color: Colors.green),
                          child: Text('1', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 18.0),),
                        ),
                      ],
>>>>>>> 5234b88223c52c3c381cc6f25c57a66635e2fe3e
                    ),
                  );
        },
      ),
                ),
<<<<<<< HEAD
=======
                InkWell(onTap: (){Navigator.pushReplacementNamed(context, '/scheduled-visit');/*Navigator.of(context).push(MaterialPageRoute(builder: (context) => new ScheduledVisit(name: widget.name)));*/},
                  child: details ? Padding(
                    padding: const EdgeInsets.only(left:20.0, bottom: 20.0, right: 20.0),
                    child: 
                    Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left:8.0, right: 8.0),
                          child: Divider(),
                        ),
                        Column(children: <Widget>[
              Padding(
                    padding: const EdgeInsets.only(bottom:20.0),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: <Widget>[
                      Text('Visitor Info', style: TextStyle(color: Color(0xff464646).withOpacity(0.6), fontSize: 16.0, fontWeight: FontWeight.w600),),
                      Text('Approved', style: TextStyle(color: Colors.green, fontSize: 14.0, fontWeight: FontWeight.w700)),
                    ],),
              ),
              Padding(
                    padding: const EdgeInsets.only(bottom:8.0),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: <Widget>[
                      Text('Name:', style: TextStyle(color: Color(0xff464646), fontSize: 14.0, fontWeight: FontWeight.w600)),
                      Text('John Doe', style: TextStyle(color: Color(0xff979797), fontSize: 14.0, fontWeight: FontWeight.w600)),
                    ],),
              ),
              Padding(
                    padding: const EdgeInsets.only(bottom:8.0),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: <Widget>[
                      Text('Phone Number:', style: TextStyle(color: Color(0xff464646), fontSize: 14.0, fontWeight: FontWeight.w600)),
                      Text('09099886625', style: TextStyle(color: Color(0xff979797), fontSize: 14.0, fontWeight: FontWeight.w600)),
                    ],),
              ),
              Padding(
                    padding: const EdgeInsets.only(bottom:8.0),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: <Widget>[
                      Text('Description:', style: TextStyle(color: Color(0xff464646), fontSize: 14.0, fontWeight: FontWeight.w600)),
                      Text('Bald, Tall and ...', style: TextStyle(color: Color(0xff979797), fontSize: 14.0, fontWeight: FontWeight.w600)),
                    ],),
>>>>>>> 5234b88223c52c3c381cc6f25c57a66635e2fe3e
              ),
            ],
          ),
          

<<<<<<< HEAD
          SizedBox(height: 60,)
=======
           


           SizedBox(height: 10.0,),




          Container(padding: const EdgeInsets.all(0.0), margin: const EdgeInsets.only(left: 20.0, right: 20.0),
            decoration: BoxDecoration(border: Border.all(color: Colors.grey.withOpacity(0.4))),
            child: Column(
              children: <Widget>[
                ListTile(onTap: toggle2,
                  title: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Mr. Seun Adeniyi', style: TextStyle(fontSize: 14.0,)),
                      Padding(
                        padding: const EdgeInsets.only(top:4.0, bottom: 4.0),
                        child: Row(children: <Widget>[
                          Icon(Icons.location_on, size: 14.0, color: Color(0xff4F4F4F),),
                          Text(' Block 3B, Dele Adebayo Estate', style: TextStyle(fontSize: 11.0,))
                        ],),
                      )
                    ],
                  ),
                  subtitle: Row(children: <Widget>[
                        Icon(Icons.phone, size: 14.0, color: Color(0xff4F4F4F)),
                        Text(' 07055300000 ', style: TextStyle(fontSize: 11.0,))
                      ],),
                  trailing: InkWell(onTap: (){Navigator.pushReplacementNamed(context, '/visitors-list');},
                    child: Column(
                      children: <Widget>[
                        Container(padding: const EdgeInsets.only(top:4.0, bottom: 4.0, left: 10.0, right: 10.0), margin: const EdgeInsets.only(bottom: 3.0),
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(1.0), color: Color(0xffFFDA58)),
                          child: Text('Scheduled Visit', style: TextStyle(color: Color(0xff4F4F4F), fontSize: 9.0, fontWeight: FontWeight.bold),),
                        ),
                        Container(padding: const EdgeInsets.only(left: 6.0, right: 6.0),
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(5.0), color: Colors.green),
                          child: Text('2', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 18.0),),
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(onTap: (){Navigator.pushReplacementNamed(context, '/scheduled-visit');},
                  child: details2 ? 
                  Padding(
                    padding: const EdgeInsets.only(left:20.0, bottom: 20.0, right: 20.0),
                    child: 
                    Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left:8.0, right: 8.0),
                          child: Divider(),
                        ),
                        Column(children: <Widget>[
              Padding(
                    padding: const EdgeInsets.only(bottom:20.0),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: <Widget>[
                      Text('Visitor Info', style: TextStyle(color: Color(0xff464646).withOpacity(0.6), fontSize: 16.0, fontWeight: FontWeight.w600),),
                      Text('Approved', style: TextStyle(color: Colors.green, fontSize: 14.0, fontWeight: FontWeight.w700)),
                    ],),
              ),
              Padding(
                    padding: const EdgeInsets.only(bottom:8.0),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: <Widget>[
                      Text('Name:', style: TextStyle(color: Color(0xff464646), fontSize: 14.0, fontWeight: FontWeight.w600)),
                      Text('John Doe', style: TextStyle(color: Color(0xff979797), fontSize: 14.0, fontWeight: FontWeight.w600)),
                    ],),
              ),
              Padding(
                    padding: const EdgeInsets.only(bottom:8.0),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: <Widget>[
                      Text('Phone Number:', style: TextStyle(color: Color(0xff464646), fontSize: 14.0, fontWeight: FontWeight.w600)),
                      Text('09099886625', style: TextStyle(color: Color(0xff979797), fontSize: 14.0, fontWeight: FontWeight.w600)),
                    ],),
              ),
              Padding(
                    padding: const EdgeInsets.only(bottom:8.0),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: <Widget>[
                      Text('Description:', style: TextStyle(color: Color(0xff464646), fontSize: 14.0, fontWeight: FontWeight.w600)),
                      Text('Bald, Tall and ...', style: TextStyle(color: Color(0xff979797), fontSize: 14.0, fontWeight: FontWeight.w600)),
                    ],),
              ),
              Padding(
                    padding: const EdgeInsets.only(bottom:8.0),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: <Widget>[
                      Text('ETA:', style: TextStyle(color: Color(0xff464646), fontSize: 14.0, fontWeight: FontWeight.w600)),
                      Text('00:00 - 00:00', style: TextStyle(color: Color(0xff979797), fontSize: 14.0, fontWeight: FontWeight.w600)),
                    ],),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: <Widget>[
                    Text('Verified With :', style: TextStyle(color: Color(0xff464646), fontSize: 14.0, fontWeight: FontWeight.w600)),
                    Text('QR CODE', style: TextStyle(color: Colors.green, fontSize: 14.0, fontWeight: FontWeight.w700)),
              ],),
              
            ],),
                      ],
                    ),
                  )
                  : Container(),
                ),
              ],
            ),
          ),SizedBox(height: 60,)
>>>>>>> 5234b88223c52c3c381cc6f25c57a66635e2fe3e
        ],
      ),

    );
  }
  
}
