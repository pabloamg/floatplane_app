import 'package:floatplane/data_factory/actions/user.dart';
import 'package:floatplane/data_factory/models/user/user.dart';
import 'package:redux/redux.dart';

User _setUser(User user, action) {
  User newUser = action.user;
  return newUser;
}

Reducer<User> userReducer = combineReducers([
  new TypedReducer<User, SetUser>(_setUser),
]);
