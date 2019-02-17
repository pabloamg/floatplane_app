import 'package:floatplane/data_factory/app_state.dart';
import 'user.dart';
import 'creators.dart';

AppState FPReducer(AppState state, action) {
  return AppState(
      user: userReducer(state.user, action),
      creators: creatorsReducer(state.creators, action));
}
