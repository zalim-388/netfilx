class ApiException {
  final statusCode;
  final Message;

  ApiException(this.statusCode, this.Message);
  @override
  String toString() {
    return Message;
  }
}
