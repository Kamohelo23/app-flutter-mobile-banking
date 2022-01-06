import 'package:badges/badges.dart';
import 'package:banking_app/pages/home.dart';
import 'package:banking_app/widgets/balance_card.dart';
import 'package:banking_app/widgets/cardInformation.dart';
import 'package:flutter/material.dart';

import '../../../theme/analytics_view.dart';
import '../../../theme/decorations.dart';
import '../../../theme/expenses_view.dart';
import '../data/json.dart';
import '../theme/colors.dart';
import '../widgets/transaction_item.dart';

class AnalyticsScreenz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBgColor,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              margin:
              const EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
              child: _buildAppNavBar(context),
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
                  ],
                )
            ),


            //ExpensesView(),
            //
            // SizedBox(height: 15,),
            // Padding(padding: EdgeInsets.only(left: 15),
            //   child: getCardDetails(),
            SizedBox(height: 29,),

            Container(
                padding: EdgeInsets.only(left: 20, right: 15),
                alignment: Alignment.centerLeft,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Card Information", style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600, color: Colors.white),),
                  ],
                )
            ),
      SizedBox(height: 20,),
      Padding(padding: EdgeInsets.only(left: 15),
        child: getCardDetails(),
      ),
            Container(
              padding: EdgeInsets.all(19.0),
              height: 100,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 100,
                      child: FloatingActionButton.extended(
                        label: Text('Transfer card'), // <-- Text
                        backgroundColor: primary1,
                        icon: Icon( // <-- Icon
                          Icons.upload,
                          size: 24.0,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(left: 8.0),
                      height: 100,
                      child: FloatingActionButton.extended(
                        label: Text('Receive card'), // <-- Text
                        backgroundColor: primary1,
                        icon: Icon( // <-- Icon
                          Icons.download,
                          size: 24.0,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Row _buildAppNavBar(BuildContext context) => Row(
    children: <Widget>[
      InkWell(
        child: _buildAppBarButton(context, Icons.arrow_back_ios),
        onTap: () {
          Navigator.pop(context, MaterialPageRoute(builder: (context) => Home()));
        },
      ),
      SizedBox(width: 100,),
      Text("Card", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.white),),
      SizedBox(width: 100,),
    ],
  );


  Container _buildAppBarButton(BuildContext context, IconData icon) =>
      Container(
        width: 40.0,
        height: 40.0,
        child: Icon(icon, color: Colors.blueGrey[200],),
        //decoration: getBoxDecoration(context, borderRadius: 8.0),
      );
}

getCardDetails(){
  return
    Column(
        children: List.generate(cardInfo.length, (index) =>
            Container(
                margin: const EdgeInsets.only(right: 15),
                child: CardInformation(cardInfo[index])
            )
        )
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
