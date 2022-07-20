

class BaseResponse {
  String message ="";
  bool status = false;
  String statusCode = "";
  BaseResponse();

  BaseResponse.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    status = json['status'];
  }
}

