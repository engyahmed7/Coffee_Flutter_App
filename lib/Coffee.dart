// ignore_for_file: file_names

import 'package:coffee/CoffeeDetails.dart';
import 'package:flutter/material.dart';
import 'package:coffee/models/data.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'my_flutter_app_icons.dart';

// ignore_for_file: prefer_const_constructors

class Coffee extends StatelessWidget {
  const Coffee({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffFAF4EE),
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              MyFlutterApp.menu,
              color: Color(0xffCF9775),
              size: 25,
            ),
            onPressed: () {},
          ),
          shadowColor: Color(0xffFAF4EE),
          backgroundColor: Color(0xffFAF4EE),
          actions: [
            IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.black,
                size: 35,
              ),
              onPressed: () {},
            ),
          ],
        ),
        bottomNavigationBar: bottomNavBar(),
        body: Column(
// mainAxisAlignment: MainAxisAlignment.start,
// crossAxisAlignment: CrossAxisAlignment.start,
          children: [
// Row(
//   children: [
//     Text("It's Great", style:TextStyle(color: Colors.black,fontSize: 45),),
//     Text(" Day for",style: TextStyle(color: Color(0xffCF9775),fontSize: 45),)
//   ],
// ),
//
// Text("Coffee",style: TextStyle(color: Color(0xffCF9775),fontSize: 45),),
// Padding(padding: EdgeInsets.all(20)),
            Padding(
              padding: const EdgeInsets.all(20),
              child: RichText(
                text: TextSpan(
                  text: "It's Great ",
                  style: TextStyle(color: Colors.black, fontSize: 40),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Day for Coffee',
                        style: TextStyle(color: Color(0xffCF9775))),
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemBuilder: (context, index) {
                    Data data = coffeedata[index];
                    return Container(
                        padding: EdgeInsets.all(15),
                        child: ListTile(
                          leading: SvgPicture.asset(
                            data.Image,
                            width: 40,
                            height: 40,
                          ),
                          title: Text(
                            data.name,
                            style: TextStyle(fontSize: 25),
                          ),
                          trailing: IconButton(
                            icon: Icon(Icons.arrow_forward_ios_outlined),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CoffeeDetails(data)),
                              );
                            },
                          ),
                        ));
                  },
                  itemCount: coffeedata.length),
            ),
          ],
        ));
  }

  Widget bottomNavBar() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(30), topLeft: Radius.circular(30)),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
        child: Container(
          child: BottomNavigationBar(
// currentIndex: _selectedItem,
// onTap: (index) {
// setState(() {
// _selectedItem = index;
// }
// );
// },
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: Container(
                    padding: const EdgeInsets.all(10),
                    child: Icon(Icons.home_outlined)),
                label: 'home',
              ),
              BottomNavigationBarItem(
                icon: Container(
                    padding: const EdgeInsets.all(10),
                    child: Icon(Icons.location_on_outlined)),
                label: 'location',
              ),
              BottomNavigationBarItem(
                icon: Container(
                    padding: const EdgeInsets.all(10),
                    child: Icon(MyFlutterApp.coffee_cup)),
                label: 'cup',
              ),
              BottomNavigationBarItem(
                icon: Container(
                    padding: const EdgeInsets.all(10),
                    child: Icon(Icons.person_outline)),
                label: 'person',
              ),
            ],
            selectedItemColor: Color(0xffCF9775),
            showSelectedLabels: false, showUnselectedLabels: false,
          ),
        ),
      ),
    );
  }
}
