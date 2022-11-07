import 'package:matjar/core/class/crud.dart';
import 'package:matjar/link_api.dart';

class LoginData {
  Crud crud;
  LoginData(this.crud);
  postData(String email, String password) async {
    var response = await crud
        .postData(AppLinkApi.login, {"email": email, "password": password});
    return response.fold((l) => l, (r) => r);
  }
}
