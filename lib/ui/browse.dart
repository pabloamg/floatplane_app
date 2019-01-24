import 'package:flutter/material.dart';
import 'package:floatplane_app/style/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:floatplane_app/data/creator.dart';
import 'package:floatplane_app/ui/public.dart';
import 'package:floatplane_app/data/profile.dart';

class BrowsePage extends StatefulWidget {
  @override
  BrowsePageState createState() => new BrowsePageState();
}

class BrowsePageState extends State<BrowsePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: SvgPicture.asset(
                'assets/logos/floatplane.svg',
                color: Colors.white,
                semanticsLabel: 'Floatplane Logo',
              ),
              decoration: BoxDecoration(
                color: colorDark
              ),
            ),
            ListTile(
              selected: true,
              title: Text(
                'Browse Creators',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  color: colorDarkerIcon
                ),
              ),
              leading: Container(
                child: Icon(
                  Icons.view_carousel,
                  color: colorDarkerIcon,
                ),
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: colorDarker
                ),
              )
            ),
            ListTile(
              leading: Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                      'https://pbs.floatplanecdn.com/profile_images/5ae3c0781f0a11686a16a36e/103761500654340_1524875606051_100x100.jpeg'
                    ),
                  ),
                  color: colorDarker
                ),
              ),
              title: Text(
                'JoeZwet',
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    color: Colors.white
                ),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(
                    builder: (context) => ProfilePage(
                      profile: Profile(
                          'JoeZwet',
                          'https://pbs.floatplanecdn.com/profile_images/5ae3c0781f0a11686a16a36e/103761500654340_1524875606051_100x100.jpeg',
                          null,
                          null,
                          null
                      )
                    )
                  )
                );
              },
              trailing: IconButton(
                icon: Icon(Icons.settings),
                color: Colors.white,
                onPressed: () => Navigator.pushNamed(context, '/user/settings'),
              ),
            )
          ],
        ),
      ),
      backgroundColor: colorPrimaryBackground,
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            FlatButton(
              padding: EdgeInsets.all(8.0),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => BrowseCreatorPage(
                        creator: Creator(
                            'LinusTechTips',
                            'https://pbs.floatplanecdn.com/profile_images/59f94c0bdd241b70349eb723/013264939123424_1535577174346_250x250.jpeg',
                            'https://pbs.floatplanecdn.com/cover_images/59f94c0bdd241b70349eb72b/696951209272749_1521668313867_1245x325.jpeg'
                        ),
                      plan: Plan(
                          'Linus Tech Tips',
                          '\$3.00 USD / month',
                          'Basic package for LinusTechTips'
                      ),
                    )
                ));
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
                          child: Image.network(
                            'https://pbs.floatplanecdn.com/profile_images/59f94c0bdd241b70349eb723/013264939123424_1535577174346_250x250.jpeg',
                            height: 100,
                            width: 100,
                          ),
                        ),
                        Expanded(child: Text('')),
                        Text(
                          'Linus Tech Tips',
                          style: TextStyle(
                              fontFamily: 'Helvetica',
                              fontSize: 26
                          ),
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
                    boxShadow: <BoxShadow> [
                      new BoxShadow(
                          color: Colors.black26,
                          offset: Offset(8.0, 8.0),
                          blurRadius: 6.0
                      )
                    ]
                ),
              ),
            ),
            FlatButton(
              padding: EdgeInsets.all(8.0),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => BrowseCreatorPage(
                      creator: Creator(
                          'BitWit Ultra',
                          'https://pbs.floatplanecdn.com/profile_images/59fa582d89a08f5945427b6c/419116403081333_1509579298028_250x250.jpeg',
                          'https://pbs.floatplanecdn.com/cover_images/5ae3b26e255e90164cca5758/628069566553424_1524871790220_1245x325.jpeg'
                      ),
                      plan: Plan(
                          'BitWit Ultra',
                          '\$3.00 USD / month',
                          'Basic package for BitWit Ultra'
                      ),
                    )
                ));
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
                          child: Image.network(
                            'https://pbs.floatplanecdn.com/profile_images/59fa582d89a08f5945427b6c/419116403081333_1509579298028_250x250.jpeg',
                            height: 100,
                            width: 100,
                          ),
                        ),
                        Expanded(child: Text('')),
                        Text(
                          'BitWit Ultra',
                          style: TextStyle(
                              fontFamily: 'Helvetica',
                              fontSize: 26
                          ),
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
                    boxShadow: <BoxShadow> [
                      new BoxShadow(
                          color: Colors.black26,
                          offset: Offset(8.0, 8.0),
                          blurRadius: 6.0
                      )
                    ]
                ),
              ),
            ),
            FlatButton(
              padding: EdgeInsets.all(8.0),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => BrowseCreatorPage(
                      creator: Creator(
                          'Tech Deals',
                          'https://pbs.floatplanecdn.com/profile_images/5ae0f8114336369a2c3619b4/157311547152421_1524693009973_250x250.jpeg',
                          'https://pbs.floatplanecdn.com/cover_images/5ae0f8114336369a2c3619b6/930464370189081_1524693009971_1245x325.jpeg'
                      ),
                      plan: Plan(
                          'Tech Deals',
                          '\$3.00 USD / month',
                          'Basic package for Tech Deals'
                      ),
                    )
                ));
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
                          child: Image.network(
                            'https://pbs.floatplanecdn.com/profile_images/5ae0f8114336369a2c3619b4/157311547152421_1524693009973_250x250.jpeg',
                            height: 100,
                            width: 100,
                          ),
                        ),
                        Expanded(child: Text('')),
                        Text(
                          'Tech Deals',
                          style: TextStyle(
                              fontFamily: 'Helvetica',
                              fontSize: 26
                          ),
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
                    boxShadow: <BoxShadow> [
                      new BoxShadow(
                          color: Colors.black26,
                          offset: Offset(8.0, 8.0),
                          blurRadius: 6.0
                      )
                    ]
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BrowseCreatorPage extends StatelessWidget {
  final Creator creator;
  final Plan plan;
  BrowseCreatorPage({Key key, @required this.creator, @required this.plan}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorPrimaryBackground,
      bottomNavigationBar: BottomAppBar(
        color: colorDark,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.arrow_back),
              color: colorDarkerIcon,
              onPressed: () => Navigator.pop(context),
            )
          ],
        ),
      ),
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(creator.banner),
                    fit: BoxFit.cover
                  )
                ),
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: 172.5),
                  height: 55,
                  width: 55,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 200),
                height: 30,
                decoration: BoxDecoration(
                  color: Colors.white
                ),
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: 175),
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    image: DecorationImage(
                      image: NetworkImage(creator.avatar),
                      fit: BoxFit.fill
                    )
                  ),
                ),
              )
            ],
          ),
          Container(
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white
            ),
            child: Padding(
              padding: const EdgeInsets.all(9.0),
              child: Text(
                creator.username,
                style: TextStyle(
                  fontFamily: 'Helvetica',
                  fontSize: 20
                ),
                textAlign: TextAlign.center,
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
              boxShadow: <BoxShadow> [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 5,
                  offset: Offset(8.0, 8.0)
                )
              ]
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    '"'+plan.name+'" Plan',
                    style: TextStyle(
                      fontFamily: 'Helvetica',
                      fontSize: 18
                    ),
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
                    style: TextStyle(
                      fontFamily: 'Helvetica'
                    ),
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
        ]
      ),
    );
  }
}
