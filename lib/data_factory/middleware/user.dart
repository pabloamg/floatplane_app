import 'package:floatplane/config/global_keys.dart';
import 'package:floatplane/config/ui_data.dart';
import 'package:floatplane/data_factory/actions/creators.dart';
import 'package:floatplane/data_factory/actions/loading.dart';
import 'package:floatplane/data_factory/actions/user.dart';
import 'package:floatplane/data_factory/app_state.dart';
import 'package:floatplane/data_factory/models/user/user.dart';
import 'package:floatplane/data_factory/repositories/user.dart';
import 'package:redux/redux.dart';

List<Middleware<AppState>> userMiddleware(UserRepository userRepository) {
  final _setUser = (
    UserRepository repository,
  ) {
    return (
      Store<AppState> store,
      SetUser action,
      NextDispatcher next,
    ) {
      store.dispatch(GetCreators());
      next(action);
    };
  };

  final _login = (
    UserRepository repository,
  ) {
    return (Store<AppState> store, Login action, next) {
      repository.signIn(action.username, action.password).then((User user) {
        store.dispatch(SetUser(user));
        store.dispatch(Loading(isLoading: false));
        action.completer.complete();
        mainNavigatorKey.currentState.pushNamed(UIData.browseRoute);
      }).catchError((e) {
        print(e.toString());
        store.dispatch(Loading(isLoading: false, loadingError: e.toString()));
        //action.completer.complete();
      });
      next(action);
    };
  };

  final _signUp = (
    UserRepository repository,
  ) {
    return (Store<AppState> store, SignUp action, next) {
      repository
          .signUp(action.username, action.password, action.fullName)
          .then((User user) {
        repository
            .signUp(action.username, action.password, action.fullName)
            .then((User user) {
          store.dispatch(SetUser(user));
          store.dispatch(Loading(isLoading: false));
          action.completer.complete();

          mainNavigatorKey.currentState.pushNamed(UIData.browseRoute);
        });
      }).catchError((e) {
        store.dispatch(Loading(isLoading: false, loadingError: e.toString()));
        action.completer.complete();
      });
      next(action);
    };
  };

  final _logout = (
    UserRepository repository,
  ) {
    return (Store<AppState> store, Logout action, next) {
      store.dispatch(SetUser(null));
      mainNavigatorKey.currentState.pushNamed(UIData.loginRoute);
      next(action);
    };
  };
  return [
    TypedMiddleware<AppState, SetUser>(
      _setUser(userRepository),
    ),
    TypedMiddleware<AppState, Login>(
      _login(userRepository),
    ),
    TypedMiddleware<AppState, SignUp>(
      _signUp(userRepository),
    ),
    TypedMiddleware<AppState, Logout>(
      _logout(userRepository),
    ),
  ];
}
