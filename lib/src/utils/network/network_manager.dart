import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:konquerclub/src/utils/helpers/app_snackbar.dart';
import 'package:konquerclub/src/utils/network/endpoints.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

/// The NetworkManager class provide an API network requests
class NetworkManager {
  static final NetworkManager _apiService = NetworkManager._internal();

  Dio _dio = Dio();

  bool isContentTypeJson = true;
  bool _isHttpRequest = false;
  bool _urlEncode = false;
  bool sendCS = true;
  String baseUrl = Endpoints.baseURL;
  String? appUrl;

  factory NetworkManager() {
    return _apiService;
  }

  NetworkManager._internal();

  Dio getDio({isJsonType = true, isHttpRequest = false, isUrlEncoded = false}) {
    isContentTypeJson = isJsonType;
    _urlEncode = isUrlEncoded;
    _isHttpRequest = isHttpRequest;
    _init();
    return _dio;
  }

  static NetworkManager get instance => _apiService;

  _init() async {
    _dio = Dio();
    _dio.options.baseUrl = baseUrl;
    _dio.options.contentType = Headers.jsonContentType;
    _dio.interceptors.add(LogInterceptor());
    _dio.interceptors.add(PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
      responseBody: true,
      responseHeader: true,
      compact: false,
    ));
    _dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) async {
        options.headers["Authorization"] =
            "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNzA4MTU0ODc4LCJpYXQiOjE2NzY2MTg4NzgsImp0aSI6Ijc5YjY3YTZlN2FlZjQzZTA5ZDAzY2FjYTdhODlhNDAyIiwidXNlcl9pZCI6NTgzMX0.q98N_5jym6uCY9_lgn6xK9qzxw2jSI57Is8pb9uosLk";

        if (isContentTypeJson) {
          options.headers["Content-Type"] = "application/json";
        }

        if (_urlEncode) {
          options.headers["Content-Type"] = "application/x-www-form-urlencoded";
        }

        if (_isHttpRequest) {
          options.headers["X-Requested-With"] = "XMLHttpRequest";
        }
        return handler.next(options); //continue
      },
      onResponse: (response, handler) {
        return handler.next(response); // continue
      },
      onError: (DioException e, handler) async {
        if (!kReleaseMode) {
          AppSnackbar.showSnackbar(
            "API ERROR : ${e.requestOptions.path}",
            e.response.toString(),
            AlertType.internalInfo,
            position: ToastGravity.BOTTOM,
            duration: const Duration(seconds: 10),
          );
        }
        return handler.next(e); //continue
      },
    ));

    _dio.options.receiveTimeout = const Duration(seconds: 30000);
  }
}
