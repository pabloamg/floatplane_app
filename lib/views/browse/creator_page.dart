import 'package:cached_network_image/cached_network_image.dart';
import 'package:floatplane/config/ui_data.dart';
import 'package:floatplane/data_factory/models/creator/creator.dart';
import 'package:flutter/material.dart';
import 'package:floatplane/data_factory/models/creator/subscription_plans.dart';
import 'package:palette_generator/palette_generator.dart';

class CreatorPage extends StatelessWidget {
  final Creator creator;
  final SubscriptionPlans plan;

  CreatorPage({Key key, @required this.creator, @required this.plan})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UIData.colorPrimaryBackground,
      bottomNavigationBar: BottomAppBar(
        color: UIData.colorDark,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.arrow_back),
              color: Colors.white,
              onPressed: () => Navigator.pop(context),
            )
          ],
        ),
      ),
      body: ListView(children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
              height: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: CachedNetworkImageProvider(creator.cover.path),
                      fit: BoxFit.cover)),
            ),
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 172.5),
                height: 55,
                width: 55,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.white),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 200),
              height: 30,
              decoration: BoxDecoration(color: Colors.white),
            ),
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 175),
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    image: creator.owner != null &&
                            creator.owner.profileImage != null &&
                            creator.owner.profileImage.childImages.length > 0 &&
                            creator.owner.profileImage.childImages.first.path !=
                                null
                        ? DecorationImage(
                            image:
                                NetworkImage(creator.owner.profileImage.path),
                            fit: BoxFit.fill)
                        : null),
              ),
            )
          ],
        ),
        Container(
          height: 50,
          decoration: BoxDecoration(color: Colors.white),
          child: Padding(
            padding: const EdgeInsets.all(9.0),
            child: Center(
              child: FutureBuilder<PaletteGenerator>(
                  future: PaletteGenerator.fromImageProvider(NetworkImage(
                      creator.owner.profileImage.childImages.first.path)),
                  builder: (BuildContext context, AsyncSnapshot snaphost) {
                    if (snaphost.hasData) {
                      PaletteGenerator generator = snaphost.data;
                      return Text(
                        creator.title,
                        style: TextStyle(
                            color: generator.vibrantColor != null
                                ? generator.vibrantColor.color
                                : generator.dominantColor.color),
                      );
                    }
                    return Text(
                      creator.title,
                      style: TextStyle(fontFamily: 'Helvetica', fontSize: 20),
                      textAlign: TextAlign.center,
                    );
                  }),
            ),
          ),
        ),
        Container(
          height: 100,
          margin: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.white,
              borderRadius: BorderRadius.circular(8.0),
              boxShadow: <BoxShadow>[
                BoxShadow(
                    color: Colors.black26,
                    blurRadius: 5,
                    offset: Offset(8.0, 8.0))
              ]),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '"' + plan.title + '" Plan',
                  style: TextStyle(fontFamily: 'Helvetica', fontSize: 18),
                ),
              ),
              Container(
                height: 1.5,
                width: 40,
                margin: EdgeInsets.only(left: 10),
                color: Colors.black12,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  plan.description,
                  style: TextStyle(fontFamily: 'Helvetica'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  plan.price,
                ),
              )
            ],
          ),
        )
      ]),
    );
  }
}
