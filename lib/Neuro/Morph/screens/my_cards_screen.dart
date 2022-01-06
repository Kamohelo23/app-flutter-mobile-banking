import 'package:flutter/material.dart';

import '../../../pages/card.dart';
import '../../../theme/decorations.dart';
import '../../../widgets/myCard.dart';
import '../components/recent_transaction_view.dart';
import 'analytics_screen.dart';
class MyCardsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            // Container(
            //   margin:
            //       const EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
            //   child: _buildAppNavBar(context),
            // ),
            Expanded(
              flex: 0,
              child: InkWell(
                child: getAppBar(),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => AnalyticsScreen()));
                },
              ),
            ),Expanded(
              flex: 1,
              child: InkWell(
                child: MyCardsView(),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => AnalyticsScreen()));
                },
              ),
            ),
            Expanded(
              flex: 1,
              child: RecentTransaction(),
            ),
          ],
        ),
      ),
    );
  }

  Row _buildAppNavBar(BuildContext context) => Row(
        children: <Widget>[
          _buildAppBarButton(context, Icons.arrow_back_ios),
          Spacer(),
          _buildAppBarButton(context, Icons.menu),
        ],
      );

  Container _buildAppBarButton(BuildContext context, IconData icon) =>
      Container(
        width: 40.0,
        height: 40.0,
        child: Icon(icon, color: Colors.blueGrey[200],),
        decoration: getBoxDecoration(context, borderRadius: 8.0),
      );
}

getAppBar(){
  return
    Container(
      height: 100,
      padding: EdgeInsets.only(left: 10, right: 20, top: 10),
      decoration: BoxDecoration(
          color: Colors.white,
          //borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40), bottomRight: Radius.circular(40)),
          boxShadow: [
            BoxShadow(
                color: Colors.pink.withOpacity(0.5),
                blurRadius: .9,
                spreadRadius: .5,
                offset: Offset(0, 5)
            // )
            )]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //AvatarImage(profile, isSVG: false, width: 35, height: 35),
          SizedBox(width: 15,),
          Expanded(
              child: Container(
                alignment: Alignment.centerLeft,
                // color: Colors.red,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Hello Kamoheloss", style: TextStyle(color: Colors.black, fontSize: 13),),
                    SizedBox(height: 5,),
                    Text("Welcome Back!", style: TextStyle(color: Colors.black54, fontWeight: FontWeight.w600, fontSize: 17),),
                  ],
                ),
              )
          ),
          SizedBox(width: 15,),
          Container(
            padding: EdgeInsets.all(5),
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
            // child: Badge(
            //     padding: EdgeInsets.all(3),
            //     position: BadgePosition.topEnd(top: -5, end: 2),
            //     badgeContent: Text('', style: TextStyle(color: Colors.white),),
            //     child: Icon(Icons.notifications_rounded)
            // ),
          ),
        ],
      ),
    );
}
