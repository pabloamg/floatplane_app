import 'package:floatplane/data_factory/actions/actions.dart';
import 'package:floatplane/data_factory/app_state.dart';
import 'package:floatplane/data_factory/middleware/creators.dart';
import 'package:floatplane/data_factory/middleware/user.dart';
import 'package:floatplane/data_factory/repositories/creators.dart';
import 'package:floatplane/data_factory/repositories/user.dart';
import 'package:floatplane/data_factory/store.dart';
import 'package:redux/redux.dart';

List<Middleware<AppState>> FPMiddleware(
    UserRepository userRepository, CreatorsRepository creatorsRepository) {
  final initAppMiddleware = (
    Store<AppState> store,
    InitApp action,
    NextDispatcher next,
  ) {
    next(action);
  };

  final List<Middleware<AppState>> middleware = [
    new TypedMiddleware<AppState, InitApp>(initAppMiddleware),
    persistor.createMiddleware()
  ];
  middleware..addAll(userMiddleware(userRepository));
  middleware..addAll(creatorsMiddleware(creatorsRepository));
  return middleware;
}
