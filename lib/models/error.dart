class CustomError extends Error {
  String? message;
  String code;
  Map<String, dynamic> data = {};

  CustomError(this.code, {this.message, this.data = const {}});
}