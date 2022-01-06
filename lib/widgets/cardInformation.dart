
import 'package:banking_app/theme/colors.dart';
import 'package:flutter/material.dart';
import '../Neuro/Morph/utilities/decorations.dart';
import 'avatar_image.dart';

class CardInformation extends StatelessWidget {
  const CardInformation(this.data, { Key? key, this.onTap}) : super(key: key);
  final data;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(bottom: 8),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: primary1,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: shadowColor.withOpacity(0.6),
              spreadRadius: 2,
              blurRadius: 2,
              offset: Offset(1, 2), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          children: [

            //Text("Card Information", style: TextStyle(fontWeight: FontWeight.w500, color: Colors.white, fontSize: 20),),
            SizedBox(height: 10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                    child:
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          children: <Widget>[
                            Expanded(
                                child: Container(
                                    child: Text("Balance", maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300, color: Colors.white))
                                )
                            ),
                            SizedBox(width: 5),
                            Container(
                                child: Text(data['balance'], maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300, color: Colors.white))
                            )
                          ],
                        ),
                        SizedBox(height: 15),
                        Row(
                          children: <Widget>[
                            Expanded(
                                child: Container(
                                    child: Text("Account Type", maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300, color: Colors.white))
                                )
                            ),
                            SizedBox(width: 5),
                            Container(
                                child: Text(data['type'], maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300, color: Colors.white))
                            )
                          ],
                        ),
                        SizedBox(height: 15),
                        Row(
                          children: <Widget>[
                            Expanded(
                                child: Container(
                                    child: Text("CVV", maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300, color: Colors.white))
                                )
                            ),
                            SizedBox(width: 5),
                            Container(
                                child: Text(data['cvv'], maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300, color: Colors.white))
                            )
                          ],
                        ),
                        SizedBox(height: 15),
                        Row(
                          children: <Widget>[
                            Expanded(
                                child: Container(
                                    child: Text("Expiry Date", maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300, color: Colors.white))
                                )
                            ),
                            SizedBox(width: 5),
                            Container(
                                child: Text(data['date'], maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300, color: Colors.white))
                            )
                          ],
                        ),
                        SizedBox(height: 15),
                        Row(
                          children: <Widget>[
                            Expanded(
                                child: Container(
                                    child: Text("Holder", maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300, color: Colors.white))
                                )
                            ),
                            SizedBox(width: 5),
                            Container(
                                child: Text(data['holder'], maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300, color: Colors.white))
                            )
                          ],
                        ),
                        SizedBox(height: 2),
                      ],
                    )
                ),
              ],
            ),
            SizedBox(height: 10),
            // Container(
            //   margin:
            //   const EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
            //   child: _buildAppNavBar(context),
            // ),
            // Container(
            //   margin:
            //   const EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
            //   child: _buildAppNavBar2(context),
            // ),

          ],
        ),
      ),
    );
  }
  //
  // Row _buildAppNavBar(BuildContext context) => Row(
  //   children: <Widget>[
  //     Text("Transfer card", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.white),),
  //     SizedBox(width: 80,),
  //     InkWell(
  //       child: _buildAppBarButton(context, Icons.credit_card, ),
  //
  //       onTap: () {
  //         Navigator.pop(context);
  //       },
  //     ),
  //   ],
  // );
  //
  // Row _buildAppNavBar2(BuildContext context) => Row(
  //   children: <Widget>[
  //     Text("Receive card", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.white),),
  //     SizedBox(width: 80,),
  //     InkWell(
  //       child: _buildAppBarButton2(context, Icons.credit_card, ),
  //
  //       onTap: () {
  //         Navigator.pop(context);
  //       },
  //     ),
  //   ],
  // );
  //
  // Container _buildAppBarButton(BuildContext context, IconData icon) =>
  //     Container(
  //       width: 80.0,
  //       height: 30.0,
  //       child: Icon(icon, color: Colors.blueGrey[200],),
  //       decoration: getBoxDecoration(context, borderRadius: 8.0),
  //     );
  //
  // Container _buildAppBarButton2(BuildContext context, IconData icon) =>
  //     Container(
  //       width: 80.0,
  //       height: 30.0,
  //       child: Icon(icon, color: Colors.blueGrey[200],),
  //       decoration: getBoxDecoration(context, borderRadius: 8.0),
  //     );

}

