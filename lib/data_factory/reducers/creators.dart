import 'package:floatplane/data_factory/actions/creators.dart';
import 'package:floatplane/data_factory/models/creator/creator.dart';
import 'package:redux/redux.dart';

List<Creator> _setCreators(List<Creator> creators, SetCreators action) {
  List<Creator> creators = action.creators;
  return creators;
}

Reducer<List<Creator>> creatorsReducer = combineReducers([
  new TypedReducer<List<Creator>, SetCreators>(_setCreators),
]);
