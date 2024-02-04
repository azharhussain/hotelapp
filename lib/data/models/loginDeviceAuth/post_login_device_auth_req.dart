class PostLoginDeviceAuthReq {
  String? username;
  String? password;

  PostLoginDeviceAuthReq({this.username, this.password});

  PostLoginDeviceAuthReq.fromJson(Map<String, dynamic> json) {
    username = json['username'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (username != null) {
      data['username'] = username;
    }
    if (password != null) {
      data['password'] = password;
    }
    return data;
  }
}
