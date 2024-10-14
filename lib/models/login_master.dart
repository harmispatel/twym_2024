class LoginMaster {
  bool? _success;
  String? _jwt;
  String? _message;

  LoginMaster({bool? success, String? jwt, String? message}) {
    if (success != null) {
      this._success = success;
    }
    if (jwt != null) {
      this._jwt = jwt;
    }
    if (message != null) {
      this._message = message;
    }
  }

  bool? get success => _success;
  set success(bool? success) => _success = success;
  String? get jwt => _jwt;
  set jwt(String? jwt) => _jwt = jwt;
  String? get message => _message;
  set message(String? message) => _message = message;

  LoginMaster.fromJson(Map<String, dynamic> json) {
    _success = json['success'];
    _jwt = json['jwt'];
    _message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this._success;
    data['jwt'] = this._jwt;
    data['message'] = this._message;
    return data;
  }
}
