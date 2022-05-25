import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'models/data.dart';
import 'my_flutter_app_icons.dart';

class CoffeeDetails extends StatefulWidget {
  final Data data;

  CoffeeDetails(this.data);

  @override
  State<CoffeeDetails> createState() => _CoffeeDetailsState(data);
}

class _CoffeeDetailsState extends State<CoffeeDetails> {
  int selected = 0;
  int selected2 = 0;
  Widget customRadio(IconData icon, int index, double size) {
    return OutlineButton(
      onPressed: () {
        setState(() {
          selected = index;
        });
        // if (index==1){
        //
        // }
      },
      child: Icon(icon,
          size: size,
          color: (selected == index) ? Color(0xffCF9775) : Colors.grey),
      borderSide: BorderSide(
          color: (selected == index) ? Colors.white : Colors.white, width: 0),
    );
  }

  Widget customRadio2(IconData icon, int index, double size) {
    return OutlineButton(
      onPressed: () {
        setState(() {
          selected2 = index;
        });
        // if (index==1){
        //
        // }
      },
      child: Icon(icon,
          size: size,
          color: (selected2 == index) ? Color(0xffCF9775) : Colors.grey),
      borderSide: BorderSide(
          color: (selected2 == index) ? Colors.white : Colors.white, width: 0),
    );
  }

  final Data data;
  int count = 0;
  _CoffeeDetailsState(this.data);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(
          data.name,
          style: TextStyle(fontSize: 40, color: Colors.black),
        ),
        centerTitle: true,
        leading: BackButton(color: Colors.black),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Color(0xffFAF4EE),
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(50),
                      bottomLeft: Radius.circular(50)),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50.0),
                    bottomRight: Radius.circular(50.0),
                  ),

                  child: Image.asset('assets/images/Mask_Group_11.png',
                      fit: BoxFit.cover, width: double.infinity, height: 350),

                  //color: Color(0xffFAF4EE),
                ),
              ),
              Positioned(
                  child: SvgPicture.asset(data.Image),
                  top: 160,
                  left: 150,
                  height: 120,
                  width: 120)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                data.name,
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
              Row(
                children: [
                  IconButton(
                    icon: SvgPicture.asset('assets/images/Component_63_1.svg'),
                    iconSize: 10,
                    onPressed: () {
                      setState(() {
                        if (count > 0) {
                          count--;
                        }
                      });
                    },
                  ),
                  Text(count.toString()),
                  IconButton(
                      icon:
                          SvgPicture.asset('assets/images/Component_62_1.svg'),
                      iconSize: 10,
                      onPressed: () {
                        setState(() {
                          count++;
                        });
                      }),
                ],
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 45, bottom: 50),
            child: Text(
              '\u{20B9}${data.price}',
              style: TextStyle(
                  fontSize: 25,
                  color: Color(0xffCF9775),
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 45, bottom: 20),
            child: Text(
              "Size",
              style: TextStyle(fontSize: 25),
            ),
          ),
          Row(
            children: [
              customRadio(MyFlutterApp.coffee_cup, 1, 30),
              customRadio(MyFlutterApp.coffee_cup, 2, 40),
              customRadio(MyFlutterApp.coffee_cup, 3, 50),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25, left: 45, bottom: 20),
            child: RichText(
              text: TextSpan(
                text: "Sugar ",
                style: TextStyle(color: Colors.black, fontSize: 25),
                children: <TextSpan>[
                  TextSpan(
                      text: '(in Cubes)',
                      style: TextStyle(color: Colors.grey, fontSize: 20)),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Row(
              children: [
                customRadio2(MyFlutterApp.signal_cellular_no_sim, 1, 25),
                customRadio2(MyFlutterApp.fill_9, 2, 20),
                customRadio2(MyFlutterApp.group_19, 3, 20),
                customRadio2(MyFlutterApp.cube, 4, 35),
              ],
            ),
          ),
          Center(
            child: Container(
              height: 60,
              width: 200,
              decoration: BoxDecoration(
                  color: Color(0xffCF9775),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(25.0),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xffCF9775).withOpacity(0.5),
                      spreadRadius: 4,
                      blurRadius: 10,
                      offset: Offset(0, 3),
                    )
                  ]),
              child: Center(
                child: GestureDetector(
                  onTap: () {},
                  child: Text(
                    'Add to Cart',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),

              // padding: EdgeInsets.only(top: 20),
              // alignment: Alignment.center,
              // child: SizedBox(
              //
              //   width: 220,
              //   child: RaisedButton(
              //
              //     onPressed: () {},
              //     shape: RoundedRectangleBorder(
              //         borderRadius: BorderRadius.circular(40)),
              //     padding: EdgeInsets.all(20),
              //     child: Text(
              //       "Add to Cart",
              //       style: TextStyle(
              //           color: Colors.white,
              //           fontSize: 20),
              //     ),
              //     //(0xff07da5f)
              //     color: Color(0xffCF9775),
              //   ),
              // ),
            ),
          ),
        ],
      ),
    );
  }
}
