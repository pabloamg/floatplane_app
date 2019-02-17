import 'package:floatplane/data_factory/actions/creators.dart';
import 'package:floatplane/data_factory/app_state.dart';
import 'package:floatplane/data_factory/repositories/creators.dart';
import 'package:redux/redux.dart';

List<Middleware<AppState>> creatorsMiddleware(
    CreatorsRepository creatorsRepository) {
  _getCreators(CreatorsRepository creatorsRepository) {
    return (Store<AppState> store, GetCreators action, next) {
      creatorsRepository.getCreators().then((creators) {
        print(creators.length);
        store.dispatch(SetCreators(creators));
      });
      next(action);
    };
  }

  return [
    TypedMiddleware<AppState, GetCreators>(
      _getCreators(creatorsRepository),
    ),
  ];
}
