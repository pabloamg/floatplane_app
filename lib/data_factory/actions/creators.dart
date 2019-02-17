import 'package:floatplane/data_factory/models/creator/creator.dart';

class GetCreators {
  GetCreators();

  @override
  String toString() {
    return 'GetCreators{}';
  }
}

class SetCreators {
  final List<Creator> creators;
  SetCreators(this.creators);

  @override
  String toString() {
    return 'SetUser{creators:${creators.length}';
  }
}

class ClearCreators {
  ClearCreators();

  @override
  String toString() {
    return 'ClearCreators:{}';
  }
}
