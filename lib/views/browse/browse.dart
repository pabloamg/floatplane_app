import 'package:floatplane/config/ui_data.dart';
import 'package:floatplane/data_factory/app_state.dart';
import 'package:floatplane/data_factory/models/creator/creator.dart';
import 'package:floatplane/views/browse/creator_list.dart';
import 'package:floatplane/views/browse/drawer_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class Browse extends StatelessWidget {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('FloatPlane'),
          elevation: 0.0,
          backgroundColor: UIData.menuColor,
        ),
        backgroundColor: UIData.colorSecondaryBackground,
        drawer: DrawerMenu(),
        body: StoreConnector<AppState, List<Creator>>(
            converter: (store) => store.state.creators,
            builder: (BuildContext context, creators) {
              return CreatorList(creators);
            }));
  }
}
