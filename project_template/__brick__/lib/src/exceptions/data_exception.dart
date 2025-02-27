import 'package:dio/dio.dart';

class ApiDataException implements Exception {
  ApiDataException({required this.message, this.code});

  ApiDataException.fromDioError(DioError dioError) {
    switch (dioError.type) {
      case DioErrorType.cancel:
        message = "Request to API server was cancelled";
        break;

      case DioErrorType.connectionTimeout:
        message = "Connection timeout with API server";
        break;

      case DioErrorType.receiveTimeout:
        message = "Receive timeout in connection with API server";
        break;

      case DioErrorType.connectionError:
        message = "Connection error with API server";
        break;

      case DioErrorType.sendTimeout:
        message = "Send timeout in connection with API server";
        break;

      case DioErrorType.badResponse:
        message = _handleError(dioError.response!);
        break;

      case DioErrorType.unknown:
        if (dioError.response == null) {
          message = "Failed to connect to API server";
        } else {
          message = "Something went wrong";
        }
        break;
      default:
        message = "Something went wrong";
        break;
    }
  }

  String message = "";

  int? code = 201;

  String _handleError(Response response) {
    switch (response.statusCode) {
      case 400:
      case 404:
      case 429:
      case 401:
        code = response.statusCode;

        String? errorMessage = response.data;
        if (errorMessage != null) {
          try {
            message = errorMessage;
          } catch (e) {
            message = errorMessage;
          }
        } else {
          message = 'Something went wrong';
        }
        // Map<String, dynamic> messageArray = response.data;
        // if (messageArray.isNotEmpty) {
        //   try {
        //     message = messageArray["message"];
        //   } catch (e) {
        //     final list = messageArray["message"] as List;
        //     message = list[0];
        //   }
        // } else {
        //   message = 'Something went wrong';
        // }

        return message;
      case 500:
        code = 500;
        return "Internal server error";
      default:
        return "";
    }
  }

  @override
  String toString() => message.toString();
}
