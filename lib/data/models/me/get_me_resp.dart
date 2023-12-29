class GetMeResp {
  String? status;
  String? message;
  Data? data;

  GetMeResp({this.status, this.message, this.data});

  GetMeResp.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (status != null) {
      data['status'] = status;
    }
    if (message != null) {
      data['message'] = message;
    }
    if (this.data != null) {
      data['data'] = this.data?.toJson();
    }
    return data;
  }
}

class Data {
  int? loginRetryLimit;
  String? username;
  String? email;
  String? name;
  String? profile;
  int? role;
  String? createdAt;
  String? updatedAt;
  bool? isDeleted;
  bool? isActive;
  dynamic loginReactiveTime;
  int? userType;
  String? id;

  Data(
      {this.loginRetryLimit,
      this.username,
      this.email,
      this.name,
      this.profile,
      this.role,
      this.createdAt,
      this.updatedAt,
      this.isDeleted,
      this.isActive,
      this.loginReactiveTime,
      this.userType,
      this.id});

  Data.fromJson(Map<String, dynamic> json) {
    loginRetryLimit = json['loginRetryLimit'];
    username = json['username'];
    email = json['email'];
    name = json['name'];
    profile = json['profile'];
    role = json['role'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    isDeleted = json['isDeleted'];
    isActive = json['isActive'];
    loginReactiveTime = json['loginReactiveTime'];
    userType = json['userType'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (loginRetryLimit != null) {
      data['loginRetryLimit'] = loginRetryLimit;
    }
    if (username != null) {
      data['username'] = username;
    }
    if (email != null) {
      data['email'] = email;
    }
    if (name != null) {
      data['name'] = name;
    }
    if (profile != null) {
      data['profile'] = profile;
    }
    if (role != null) {
      data['role'] = role;
    }
    if (createdAt != null) {
      data['createdAt'] = createdAt;
    }
    if (updatedAt != null) {
      data['updatedAt'] = updatedAt;
    }
    if (isDeleted != null) {
      data['isDeleted'] = isDeleted;
    }
    if (isActive != null) {
      data['isActive'] = isActive;
    }
    if (loginReactiveTime != null) {
      data['loginReactiveTime'] = loginReactiveTime;
    }
    if (userType != null) {
      data['userType'] = userType;
    }
    if (id != null) {
      data['id'] = id;
    }
    return data;
  }
}
