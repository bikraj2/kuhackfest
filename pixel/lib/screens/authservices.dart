import 'package:dio/dio.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AuthService {
  Dio diio = new Dio();
  login(name, password) async {
    try {
      var value = await diio.post("http://localhost:3000/authenticate",
          data: {"username": name, "password": password},
          options: Options(contentType: Headers.formUrlEncodedContentType));
      print(value);
      return value;
    } on DioError catch (e) {
      Fluttertoast.showToast(
        msg: e.response!.data['msg'],
      );
    }
  }
  addUser(
    fullname,
    email,
    phone,
    username,
    password,
  ) async {
    try {
      var value = await diio.post("http://localhost:3000/register",
          data: {
            "fullName": fullname,
            "email": email,
            "phone": phone,
            "username": username,
            "password": password
          },
          options: Options(contentType: Headers.formUrlEncodedContentType));
      print("I am here");
      return value;
    } on DioError catch (e) {
      Fluttertoast.showToast(
        msg: e.response!.data['msg'],
      );
    }
  }

  getimage() async {
    try {
      var value = await diio.get("http://localhost:3000/image");
      return value;
    } on DioError catch (e) {
      Fluttertoast.showToast(msg: e.response!.data);
    }
  }
}
