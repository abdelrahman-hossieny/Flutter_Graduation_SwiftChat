class UserModel {
  String? id;
  String? name;
  String? email;
  String? profileImage;
  String? phoneNumber;
  String? about;
  DateTime? createdAt;
  DateTime? lastOnline;
  String? status; // online, offline, away, busy
  //about
  //created at
  //lastOnLineStatus
  //status
  UserModel({
    this.id,
    this.name,
    this.email,
    this.profileImage,
    this.phoneNumber,
    this.about,
    this.createdAt,
    this.lastOnline,
    this.status,
  });

  // Factory constructor to create UserModel from JSON
  UserModel.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    name = json["name"];
    email = json["email"];
    profileImage = json["profileImage"];
    phoneNumber = json["phoneNumber"];
    about = json["about"];
    createdAt = json["createdAt"] != null
        ? DateTime.parse(json["createdAt"])
        : null;
    lastOnline = json["lastOnline"] != null
        ? DateTime.parse(json["lastOnline"])  
        : null;
    status = json["status"];

  }

  // Method to convert UserModel to JSON
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["id"] = id;
    data["name"] = name;
    data["email"] = email;
    data["profileImage"] = profileImage;
    data["phoneNumber"] = phoneNumber;
    data["about"] = about;
    data["createdAt"] = createdAt?.toIso8601String();
    data["lastOnline"] = lastOnline?.toIso8601String();
    data["status"] = status;
    return data;
  }
}