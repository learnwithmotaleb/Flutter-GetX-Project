import 'package:get/get.dart';
import 'package:getxfluttertutorial/01Practices/mvvm_practices/view_model/controller/login/login_model_response.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UsersPreference extends GetxController {
  Future<bool> saveUser(LoginResponseModel responseModel) async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.setString("token", responseModel.token.toString());
    return true;
  }

  Future<LoginResponseModel> getUser() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    String? token = sp.getString("token");
    return LoginResponseModel(token: token);
  }

  Future<bool> clearUser() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.clear();
    return true;
  }
}
