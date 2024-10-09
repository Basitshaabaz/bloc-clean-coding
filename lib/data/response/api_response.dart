import 'package:bloc_clean_coding/data/response/status.dart';

class ApiResponse<T> {
  T? data;
  String? message;
  Status? status;

  ApiResponse({this.data, this.message, this.status});

  ApiResponse.loading() : status = Status.loading;

  ApiResponse.success(this.data) : status = Status.success;

  ApiResponse.error(this.message) : status = Status.error;

  @override
  String toString() {
    return "Status : $status \n Message : $message \n Data : $data";
  }
}
