import 'package:floatplane/data_factory/actions/loading.dart';
import 'package:floatplane/data_factory/app_state.dart';
import 'package:floatplane/data_factory/middleware/middleware.dart';
import 'package:floatplane/data_factory/repositories/injector.dart';
import 'package:redux_persist/redux_persist.dart';
import 'package:redux_persist_flutter/redux_persist_flutter.dart';
import 'package:redux/redux.dart';
import 'reducers/reducers.dart';

final persistor = Persistor<AppState>(
  storage: FlutterStorage(), // Or use other engines
  serializer: JsonSerializer<AppState>(AppState.fromJson),
);

Store<AppState> store;

storeBuilder(user) {
  return Store<AppState>(
    FPReducer,
    initialState: AppState(
      user: user ?? null,
      loadingState: Loading(isLoading: false),
    ),
    middleware:
        FPMiddleware(injector.userRepository, injector.creatorsRepository),
  );
}
