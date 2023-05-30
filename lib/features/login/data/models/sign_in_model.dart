///
/// Code generated by jsonToDartModel https://ashamp.github.io/jsonToDartModel/
///
const String _jsonKeySignInBodyEmail = 'email';
const String _jsonKeySignInBodyPassword = 'password';
class SignInBody {
/*
{
  "email": "shimaa.refaat@ibm.com",
  "password": "123456"
}
*/

  String? email;
  String? password;

  SignInBody({
    this.email,
    this.password,
  });
  SignInBody.fromJson(Map<String, dynamic> json) {
    email = json[_jsonKeySignInBodyEmail]?.toString();
    password = json[_jsonKeySignInBodyPassword]?.toString();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data[_jsonKeySignInBodyEmail] = email;
    data[_jsonKeySignInBodyPassword] = password;
    return data;
  }
}
