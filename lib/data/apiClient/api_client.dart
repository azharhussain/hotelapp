import 'package:dio/dio.dart';
import 'package:hotelapp/core/app_export.dart';
import 'package:hotelapp/core/utils/progress_dialog_utils.dart';
import 'package:hotelapp/data/models/loginDeviceAuth/post_login_device_auth_resp.dart';
import 'package:hotelapp/data/models/me/get_me_resp.dart';
import 'package:hotelapp/data/models/registerDeviceAuth/post_register_device_auth_resp.dart';

import 'network_interceptor.dart';

class ApiClient {
  factory ApiClient() {
    return _apiClient;
  }

  ApiClient._internal();

  var url = "https://nodedemo.dhiwise.co";

  static final ApiClient _apiClient = ApiClient._internal();

  final _dio = Dio(BaseOptions(
    connectTimeout: const Duration(seconds: 60),
  ))
    ..interceptors.add(NetworkInterceptor());

  ///method can be used for checking internet connection
  ///returns [bool] based on availability of internet
  Future isNetworkConnected() async {
    if (!await NetworkInfo().isConnected()) {
      throw NoInternetException('No Internet Found!');
    }
  }

  /// is `true` when the response status code is between 200 and 299
  ///
  /// user can modify this method with custom logics based on their API response
  bool _isSuccessCall(Response response) {
    if (response.statusCode != null) {
      return response.statusCode! >= 200 && response.statusCode! <= 299;
    }
    return false;
  }

  /// Performs API call for https://nodedemo.dhiwise.co/device/api/v1/user/me
  ///
  /// Sends a GET request to the server's 'https://nodedemo.dhiwise.co/device/api/v1/user/me' endpoint
  /// with the provided headers and request data
  /// Returns a [GetMeResp] object representing the response.
  /// Throws an error if the request fails or an exception occurs.
  Future<GetMeResp> fetchMe({Map<String, String> headers = const {}}) async {
    ProgressDialogUtils.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response = await _dio.get(
        '$url/device/api/v1/user/me',
        options: Options(headers: headers),
      );
      ProgressDialogUtils.hideProgressDialog();
      if (_isSuccessCall(response)) {
        return GetMeResp.fromJson(response.data);
      } else {
        throw response.data != null
            ? GetMeResp.fromJson(response.data)
            : 'Something Went Wrong!';
      }
    } catch (error, stackTrace) {
      ProgressDialogUtils.hideProgressDialog();
      Logger.log(
        error,
        stackTrace: stackTrace,
      );
      rethrow;
    }
  }

  /// Performs API call for https://nodedemo.dhiwise.co/device/auth/login
  ///
  /// Sends a POST request to the server's 'https://nodedemo.dhiwise.co/device/auth/login' endpoint
  /// with the provided headers and request data
  /// Returns a [PostLoginDeviceAuthResp] object representing the response.
  /// Throws an error if the request fails or an exception occurs.
  Future<PostLoginDeviceAuthResp> loginDeviceAuth({
    Map<String, String> headers = const {},
    Map requestData = const {},
  }) async {
    ProgressDialogUtils.showProgressDialog();
    try {
      await isNetworkConnected();
      var response = await _dio.post(
        '$url/device/auth/login',
        data: requestData,
        options: Options(headers: headers),
      );
      ProgressDialogUtils.hideProgressDialog();
      if (_isSuccessCall(response)) {
        return PostLoginDeviceAuthResp.fromJson(response.data);
      } else {
        throw response.data != null
            ? PostLoginDeviceAuthResp.fromJson(response.data)
            : 'Something Went Wrong!';
      }
    } catch (error, stackTrace) {
      ProgressDialogUtils.hideProgressDialog();
      Logger.log(
        error,
        stackTrace: stackTrace,
      );
      rethrow;
    }
  }

  /// Performs API call for https://nodedemo.dhiwise.co/device/auth/register
  ///
  /// Sends a POST request to the server's 'https://nodedemo.dhiwise.co/device/auth/register' endpoint
  /// with the provided headers and request data
  /// Returns a [PostRegisterDeviceAuthResp] object representing the response.
  /// Throws an error if the request fails or an exception occurs.
  Future<PostRegisterDeviceAuthResp> registerDeviceAuth({
    Map<String, String> headers = const {},
    Map requestData = const {},
  }) async {
    ProgressDialogUtils.showProgressDialog();
    try {
      await isNetworkConnected();
      var response = await _dio.post(
        '$url/device/auth/register',
        data: requestData,
        options: Options(headers: headers),
      );
      ProgressDialogUtils.hideProgressDialog();
      if (_isSuccessCall(response)) {
        return PostRegisterDeviceAuthResp.fromJson(response.data);
      } else {
        throw response.data != null
            ? PostRegisterDeviceAuthResp.fromJson(response.data)
            : 'Something Went Wrong!';
      }
    } catch (error, stackTrace) {
      ProgressDialogUtils.hideProgressDialog();
      Logger.log(
        error,
        stackTrace: stackTrace,
      );
      rethrow;
    }
  }
}
