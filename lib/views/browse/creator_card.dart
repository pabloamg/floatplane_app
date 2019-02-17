import 'package:floatplane/data_factory/models/creator/creator.dart';
import 'package:floatplane/views/browse/creator_page.dart';
import 'package:flutter/material.dart';

class CreatorCard extends StatelessWidget {
  final Creator creator;
  CreatorCard(this.creator);
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      padding: EdgeInsets.all(8.0),
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => CreatorPage(
                      creator: creator,
                      plan: creator.subscriptionPlans.first,
                    )));
      },
      child: Container(
        height: 116,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: creator.owner != null &&
                          creator.owner.profileImage != null &&
                          creator.owner.profileImage.childImages.length > 0 &&
                          creator.owner.profileImage.childImages.first.path !=
                              null
                      ? Image.network(
                          creator.owner.profileImage.childImages.first.path,
                          height: 100,
                          width: 100,
                        )
                      : Container(),
                ),
                Expanded(child: Text('')),
                Text(
                  creator.title,
                  style: TextStyle(fontFamily: 'Helvetica', fontSize: 26),
                ),
                Expanded(child: Text(''))
              ],
            )
          ],
        ),
        decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(8.0),
            color: Colors.white,
            boxShadow: <BoxShadow>[
              new BoxShadow(
                  color: Colors.black26,
                  offset: Offset(8.0, 8.0),
                  blurRadius: 6.0)
            ]),
      ),
    );
  }
}
