import 'package:floatplane/config/locale/locales.dart';
import 'package:floatplane/data_factory/actions/actions.dart';
import 'package:floatplane/data_factory/app_state.dart';
import 'package:floatplane/data_factory/repositories/injector.dart';
import 'package:floatplane/data_factory/store.dart';
import 'package:floatplane/views/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

Iterable<LocalizationsDelegate> localizationsDelegates = [
  AppLocalizationsDelegate(),
  GlobalMaterialLocalizations.delegate,
  GlobalWidgetsLocalizations.delegate,
];

bool get isInDebugMode {
  bool inDebugMode = false;
  assert(inDebugMode = true);
  return inDebugMode;
}

void main() async {
  if (isInDebugMode) {
    Injector.configure(RepoType.MOCK);
  }
  injectorBuilder();
  final initialState = await persistor.load();
  store = storeBuilder(initialState.user);

  store.dispatch(InitApp());
  runApp(StoreProvider<AppState>(
    store: store,
    child: FPApp(
      localizationsDelegates,
    ),
  ));
}
