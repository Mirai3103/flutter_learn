
class Result<T> {
  final T? data;
  final String? error;

  const Result._({this.data, this.error});

  factory Result.ok(T data) {
    return Result._(data: data);
  }

  factory Result.fail(String error) {
    return Result._(error: error);
  }

  bool get isSuccess => error == null;
  bool get isFailure => error != null;
}
