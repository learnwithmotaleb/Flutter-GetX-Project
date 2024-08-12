import '../../../resources/app_urls/app_urls.dart';
import '../../network/network_api_services.dart';

class LoginReporsitory {
  final _apiServices = NetworkApiServices();

  Future<dynamic> loginApi(var data) async {

    dynamic response = _apiServices.postApi(data, AppUrls.loginUrl);
    return response;
  }
}
