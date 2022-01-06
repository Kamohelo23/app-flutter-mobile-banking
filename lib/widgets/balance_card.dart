import 'package:banking_app/theme/colors.dart';
import 'package:flutter/material.dart';

class BalanceCard extends StatelessWidget {
  const BalanceCard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return  Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  padding: const EdgeInsets.all(30.0),
                  height: 240,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: secondary,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: appBgColor.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 5,
                        offset: Offset(1, 1), // changes position of shadow
                      ),
                    ],
                    image: DecorationImage(
                      //colorFilter: new ColorFilter.mode(secondary.withOpacity(0.2), BlendMode.dstATop),
                      image: AssetImage('assets/images/bgcard.png'),
                    )
                  ),

                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[

                      SizedBox(height: 180,),
                      Text("VISA                ", style: TextStyle(color: Colors.black54, fontSize: 18, fontStyle: FontStyle.italic,  ),),
                      SizedBox(height: 10,),
                      Text("•••• •••• •••• 2634", style: TextStyle(color: primary, fontSize: 18, fontWeight: FontWeight.w600 ,),),
                    ],
                  ),
                ),
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
                //     child: Icon(Icons.arrow_forward_rounded)
                //   )
                // )
            ],
    );
  }
}