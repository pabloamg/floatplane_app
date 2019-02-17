import 'package:floatplane/data_factory/actions/loading.dart';
import 'package:floatplane/data_factory/models/models.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

@immutable
class AppState {
  final User user;
  final Loading loadingState;
  final List<Creator> creators;
  AppState({this.user, this.loadingState, this.creators = const []});

  AppState copyWith({
    User user,
    Loading loadingState,
  }) {
    return new AppState(
      user: user ?? this.user,
      creators: creators ?? this.creators,
      loadingState: loadingState ?? this.loadingState,
    );
  }

  @override
  int get hashCode => loadingState.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AppState && runtimeType == other.runtimeType;

  @override
  String toString() {
    return 'AppState{user:${user.toJson()}}';
  }

  static AppState fromJson(jsonData) {
    if (jsonData != null && jsonData.containsKey('user')) {
      //return new AppState(user: User.fromJson(jsonData['user']));
    }
    return new AppState();
  }

  Map<String, dynamic> toJson() {
    if (user == null) {
      return {};
    }
    Map<String, dynamic> state = {'user': user.toJson()};
    //print(state);
    return state;
  }
}
