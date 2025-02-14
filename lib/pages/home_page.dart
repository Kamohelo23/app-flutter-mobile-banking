
import 'package:badges/badges.dart';
import 'package:banking_app/data/json.dart';
import 'package:banking_app/theme/colors.dart';
import 'package:banking_app/widgets/action_box.dart';
import 'package:banking_app/widgets/avatar_image.dart';
import 'package:banking_app/widgets/balance_card.dart';
import 'package:banking_app/widgets/transaction_item.dart';
import 'package:banking_app/widgets/user_box.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
     return 
      Scaffold(
        backgroundColor: appBgColor,
        // appBar: getAppBar(),
        body: getBody(),
      );
  }

  getAppBar(){
    return
      Container(
            height: 110,
            padding: EdgeInsets.only(left: 1, right: 20, top: 55),
            decoration: BoxDecoration(
              color: appBgColor,
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(1), bottomRight: Radius.circular(1)),
              boxShadow: [
                // BoxShadow(
                //   color: shadowColor.withOpacity(0.5),
                //   blurRadius: .1,
                //   spreadRadius: .5,
                //   offset: Offset(0, 2)
                // )
              ]
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(9),
                  // decoration: BoxDecoration(
                  //   color: Colors.white,
                  //   shape: BoxShape.circle,
                  //   boxShadow: [
                  //     BoxShadow(
                  //       color: Colors.grey.withOpacity(0.2),
                  //       spreadRadius: 1,
                  //       blurRadius: 1,
                  //       offset: Offset(1, 1), // changes position of shadow
                  //     ),
                  //   ],
                  // ),
                  // child: Icon(Icons.notifications_rounded)



                      child: Icon(Icons.shield_outlined, color: iconCol
                      ,size: 35,),

                ),
                SizedBox(width: 100,),
                AvatarImage(profile, isSVG: false, width: 45, height: 45),
                SizedBox(width: 100,),
                // Expanded(
                //   child: Container(
                //     alignment: Alignment.centerLeft,
                //     // color: Colors.red,
                //     child: Column(
                //       mainAxisAlignment: MainAxisAlignment.center,
                //       crossAxisAlignment: CrossAxisAlignment.start,
                //       children: [
                //         Text("Hello Kamohelo,", style: TextStyle(color: Colors.black, fontSize: 13),),
                //         SizedBox(height: 5,),
                //         Text("Welcome Back!", style: TextStyle(color: Colors.black54, fontWeight: FontWeight.w600, fontSize: 17),),
                //       ],
                //     ),
                //   )
                // ),
                Container(
                  padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 1,
                        blurRadius: 1,
                        offset: Offset(1, 1), // changes position of shadow
                      ),
                    ],
                  ),
                  // child: Icon(Icons.notifications_rounded)
                  child: Badge(
                    padding: EdgeInsets.all(3),
                    position: BadgePosition.topEnd(top: -5, end: 2),
                    badgeContent: Text('', style: TextStyle(color: Colors.white),),
                    child: Icon(Icons.notifications_rounded, color: iconCol,size: 25,)
                  ),
                ),
              ],
            ),
          );
  }

  getBody(){
    return
    SingleChildScrollView(
      child: Column(
        children: [
          getAppBar(),

          SizedBox(height: 29,),
          Container(
              padding: EdgeInsets.only(left: 20, right: 15),
              alignment: Alignment.centerLeft,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Card Vault", style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600, color: Colors.white),),
                ],
              )
          ),
          SizedBox(height: 5,),

          Container(
              padding: EdgeInsets.only(left: 20, right: 15),
              alignment: Alignment.centerLeft,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Welcome back, Kamohelo.", style: TextStyle(fontSize: 12, color: Colors.white, fontWeight: FontWeight.w300,),),
                ],
              )
          ),
          SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Stack(

              clipBehavior: Clip.none,
              children: [
                BalanceCard(),
                // Positioned(
                //   top: 100,
                //   left: 0, right: 0,
                //   child: Container(
                //     padding: EdgeInsets.all(5),
                //     decoration: BoxDecoration(
                //       color: secondary,
                //       shape: BoxShape.circle,
                //       border: Border.all()
                //     ),
                //     child: Icon(Icons.add)
                //   )
                // )
            ],
            )
          ),
          // Positioned(
          //     top: 100,
          //     left: 0, right: 100,
          //
          //     child: Container(
          //         padding: EdgeInsets.all(5),
          //         decoration: BoxDecoration(
          //             color: secondary,
          //             shape: BoxShape.circle,
          //             border: Border.all()
          //         ),
          //         child: Icon(Icons.arrow_forward)
          //     )
          // ),
          SizedBox(height: 35,),
          //getActions(),
          //SizedBox(height: 25,),
          // Container(
          //   padding: EdgeInsets.only(left: 20),
          //   alignment: Alignment.centerLeft,
          //   child: Text("Send Again",
          //   style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),)
          // ),
          // SizedBox(height: 15,),
          // Padding(padding: EdgeInsets.only(left: 15),
          //   child: getRecentUsers(),
          // ),
          // SizedBox(height: 25,),
          Container(
            padding: EdgeInsets.only(left: 20, right: 15),
            alignment: Alignment.centerLeft,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("History", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.white),),
                // Expanded(
                //   child: Container(
                //     alignment: Alignment.centerRight,
                //     child: Text("Today", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),))
                // ),
                // Icon(Icons.expand_more_rounded),
              ],
            )
          ),
          SizedBox(height: 15,),
          Padding(padding: EdgeInsets.only(left: 15),
            child: getTransanctions(),
          ),

        ],
      ),
    );
  }

  getActions(){
    return
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(width: 15,),
          Expanded(
            child: ActionBox(title: "Send", icon: Icons.send_rounded, bgColor: green,)
          ),
          SizedBox(width: 15,),
          Expanded(
            child: ActionBox(title: "Request", icon: Icons.arrow_circle_down_rounded, bgColor: yellow)
          ),
          SizedBox(width: 15,),
          Expanded(
            child: ActionBox(title: "More", icon: Icons.widgets_rounded, bgColor: purple)
          ),
          SizedBox(width: 15,),
        ],
      );
  }

  getRecentUsers(){
    return
      SingleChildScrollView(
        padding: EdgeInsets.only(bottom: 5),
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(recentUsers.length, (index) => 
            index == 0 ?
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 15),
                  child: getSearchBox(),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 15),
                  child: UserBox(user: recentUsers[index])
                ) 
              ],
            )
            : 
            Container(
              margin: const EdgeInsets.only(right: 15),
              child: UserBox(user: recentUsers[index])
            ) 
          )
        ),
      );
  }

  getSearchBox(){
    return
      Column(
      children: [
        Container(
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
            shape: BoxShape.circle
          ),
          child: Icon(Icons.search_rounded),
        ),
        SizedBox(height: 8,),
        Text("Search", style: TextStyle(fontWeight: FontWeight.w500),)
      ],
    );
  }

  getTransanctions(){
    return
      Column(
        children: List.generate(transactions.length, (index) => 
          Container(
            margin: const EdgeInsets.only(right: 15),
            child: TransactionItem(transactions[index])
          ) 
        )
      );
  }
}