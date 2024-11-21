import 'package:e_commerce_app/appLink.dart';

import '../../../../core/class/crud.dart';

class LoginRemote {
  Curd curd;
  LoginRemote(this.curd);
  postData(
    String email,
    String password,
  ) async {
    var response = await curd.postData(
        Applink.login,
        {
          "email": email,
          "password": password,
        },
        Applink.headers);
    print(Applink.token);

    return response.fold((l) => l, (r) => r);
  }
}
