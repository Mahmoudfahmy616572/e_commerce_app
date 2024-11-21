import 'package:e_commerce_app/appLink.dart';

import '../../../../core/class/crud.dart';

class RegisterRemote {
  Curd curd;
  RegisterRemote(this.curd);
  postData(
      String firstName,
      String lastName,
      String email,
      String password,
      String phone,
      String confirmPassword,
      String code,
      String gender,
      String address) async {
    var response = await curd.postData(
        Applink.register,
        {
          "first_name": firstName,
          "last_name": lastName,
          "email": email,
          "phone_number": phone,
          "password": password,
          "password_confirmation": confirmPassword,
          "address": address,
          "gender": gender,
          "code": code
        },
        Applink.headers);
    print(Applink.token);

    return response.fold((l) => l, (r) => r);
  }
}
