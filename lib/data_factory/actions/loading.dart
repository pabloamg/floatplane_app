class Loading {
  bool isLoading;
  String loadingError;

  Loading({this.isLoading = true, this.loadingError});

  @override
  String toString() {
    return 'Loading{isLoading: $isLoading,loadingError: $loadingError}';
  }
}
