class Result<T> {
  Result._();

  factory Result.success(T data) = Success<T>;
  factory Result.failure(
    String message, {
    int? statusCode,
    Object? error,
    StackTrace? stackTrace,
  }) = Failure<T>;

  bool get isSuccess => this is Success<T>;
  bool get isFailure => this is Failure<T>;

  T get data => (this as Success<T>).value;
  Failure<T> get failure => this as Failure<T>;
}

class Success<T> extends Result<T> {
  Success(this.value) : super._();
  final T value;
}

class Failure<T> extends Result<T> {
  Failure(this.message, {this.statusCode, this.error, this.stackTrace})
    : super._();
  final String message;
  final int? statusCode;
  final Object? error;
  final StackTrace? stackTrace;
}
