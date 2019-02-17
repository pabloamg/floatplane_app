import 'package:floatplane/data_factory/models/creator/creator.dart';
import 'package:floatplane/views/browse/creator_card.dart';
import 'package:flutter/material.dart';

class CreatorList extends StatelessWidget {
  final List<Creator> creators;
  CreatorList(this.creators);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: creators != null ? creators.length : 0,
      itemBuilder: (BuildContext context, item) {
        Creator creator = creators[item];
        return CreatorCard(creator);
      },
    );
  }
}
