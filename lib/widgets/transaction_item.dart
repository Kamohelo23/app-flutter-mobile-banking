
import 'package:banking_app/theme/colors.dart';
import 'package:flutter/material.dart';
import 'avatar_image.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem(this.data, { Key? key, this.onTap}) : super(key: key);
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
              color: shadowColor.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 2,
              offset: Offset(1, 1), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          children: [
            SizedBox(height: 2),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AvatarImage(
                  data['image'], 
                  isSVG: false,
                  width: 35, height:35,
                  radius: 50,
                ),
                SizedBox(width: 20),
                Expanded(
                  child: 
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              child: Text(data['name'], maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500, color: Colors.white))
                            )
                          ),
                          SizedBox(width: 5),
                          Container(
                            child: Text(data['date'], maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 10, fontWeight: FontWeight.w400, color: Colors.white))
                          )
                        ],
                      ),
                      SizedBox(height: 1),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            child: Text(data['price'], maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 12, color: Colors.grey))
                          ),
                          Container(
                            child: data['type'] == 1 ?
                               Icon(Icons.download, color: iconCol,)
                               :
                               Icon(Icons.upload, color: iconCol,)
                          ),
                        ],
                      ),
                    ],
                  )
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}