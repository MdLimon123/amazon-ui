// @dart=2.9

import 'package:e_sho_ui/pages/account.dart';
import 'package:e_sho_ui/pages/cart.dart';
import 'package:e_sho_ui/pages/dashboard.dart';
import 'package:e_sho_ui/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class AmazonClone extends StatefulWidget {
  const AmazonClone({Key key}) : super(key: key);

  @override
  State<AmazonClone> createState() => _AmazonCloneState();
}

class _AmazonCloneState extends State<AmazonClone> {

  final PageStorageBucket bucket = PageStorageBucket();

  final List<Widget> tabs =[
    const HomePage(), const AccountPage(),const CartPage(),const DashboardPage()
  ];

  Widget _bottomNavigationBar(int selectedIndex)=> SizedBox(
    height: 47.0,
    child: BottomNavigationBar(
      elevation: 2.5,
      type: BottomNavigationBarType.fixed,
      onTap: (int index) => setState(() => _selectedIndex = index ),
      currentIndex: selectedIndex,
      backgroundColor: Colors.white,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white,
      selectedLabelStyle: const TextStyle(fontSize: 0.0),
      unselectedLabelStyle: const TextStyle(fontSize: 0.0),
      items:
        <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon:SizedBox(
                height: 46.0,
                child: Stack(
                  children: [
                   selectedIndex==0? Container(
                      height: 4.8,
                      width: 44.0,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 0.0),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(0.0),
                          bottomLeft: Radius.circular(50.0),
                          topRight: Radius.circular(0.0),
                          bottomRight: Radius.circular(50.0)
                        ),
                        color: Colors.teal
                      ),
                      alignment: Alignment.topCenter,
                    ):Container(width: 44.0,),
                    Container(
                      height: 44.0,
                      padding:const EdgeInsets.only(left: 11.0,top: 7.0),
                      child: SvgPicture.asset('assets/images/home.svg',
                        width: 24, height: 22.5,color:selectedIndex==0? Colors.teal:Colors.black87,
                      ),

                    )
                  ],
                ),
              ),
            label: 'Home'
          ),
          BottomNavigationBarItem(
            icon:SizedBox(
              height: 46.0,
              child: Stack(
                children: [
                selectedIndex==1? Container(
                    height: 4.8,
                    width: 44.0,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 0.0),
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(0.0),
                            bottomLeft: Radius.circular(50.0),
                            topRight: Radius.circular(0.0),
                            bottomRight: Radius.circular(50.0)
                        ),
                        color: Colors.teal
                    ),
                    alignment: Alignment.topCenter,
                  ): Container(width: 44.0,),
                  Container(
                    height: 44.0,
                    padding: const EdgeInsets.only(left: 11.0,top: 6.0),
                    child: SvgPicture.asset('assets/images/user.svg',
                      width: 24, height: 22.5,color:selectedIndex==1? Colors.teal: Colors.black87,),

                  )
                ],
              ),
            ),
            label: 'Account'
          ),
          BottomNavigationBarItem(
            icon:SizedBox(
              height: 46.0,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                 selectedIndex==2? Container(
                    height: 4.8,
                    width: 44.0,
                    margin: const EdgeInsets.only(left: 10.0),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 0.0),
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(0.0),
                            bottomLeft: Radius.circular(50.0),
                            topRight: Radius.circular(0.0),
                            bottomRight: Radius.circular(50.0)
                        ),
                        color: Colors.teal
                    ),
                    alignment: Alignment.topCenter,
                  ):Container(width: 44.0,),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                  Container(
                    height: 44.0,
                    padding: const EdgeInsets.only(left: 11.0,top: 7.0),
                    child: SvgPicture.asset('assets/images/cart.svg',
                      width: 25.0, height: 23.0,color:selectedIndex==0? Colors.teal:Colors.black87,),

                  ),
                   Container(
                     alignment: Alignment.topCenter,
                     padding: const EdgeInsets.only(left: 12.0,top: 13.0),
                     child: Text('4', style: TextStyle
                     (color: selectedIndex==0? Colors.teal:Colors.black87, fontSize: 12.0,fontWeight: FontWeight.bold),),)
                    ],)
                ],
              ),
            ),
            label: 'Cart'
          ),
          BottomNavigationBarItem(
              icon:SizedBox(
                height: 46.0,
                child: Stack(
                  children: [
                 selectedIndex==3? Container(
                      height: 4.8,
                      width: 44.0,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 0.0),
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(0.0),
                              bottomLeft: Radius.circular(50.0),
                              topRight: Radius.circular(0.0),
                              bottomRight: Radius.circular(50.0)
                          ),
                          color: Colors.teal
                      ),
                      alignment: Alignment.topCenter,
                    ):Container(width: 44.0,),
                    Container(
                      height: 44.0,
                      padding:const EdgeInsets.only(left: 10.0,top: 6.0),
                      child: SvgPicture.asset('assets/images/menu.svg',
                        width: 25, height: 22.0,color:selectedIndex==0? Colors.teal: Colors.black87,),

                    )
                  ],
                ),
              ),
              label: 'Dashboard'
          ),
        ],

    ),
  );
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _bottomNavigationBar(_selectedIndex),
      body: PageStorage(
        child: tabs[_selectedIndex],
        bucket: bucket,
      ),
    );
  }
}
