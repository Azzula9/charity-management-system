class Report {
  String? firstName;
  String? lastName;
  String? email;
  String? phoneNumber;
  String? memberNumber;
  String? date;

  int? userId;
  String? updatedAt;
  String? createdAt;
  int? id;

  Report(
      {this.firstName,
      this.lastName,
      this.email,
      this.phoneNumber,
      this.memberNumber,
      this.date,
      this.userId,
      this.updatedAt,
      this.createdAt,
      this.id});

  Report.fromJson(Map<String, dynamic> json) {
    firstName = json['first_name'];
    lastName = json['last_name'];
    email = json['email'];
    phoneNumber = json['phone_number'];
    memberNumber = json['member_number'];
    date = json['date'];

    userId = json['user_id'];
    updatedAt = json['updated_at'];
    createdAt = json['created_at'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    data['email'] = this.email;
    data['phone_number'] = this.phoneNumber;
    data['member_number'] = this.memberNumber;
    data['date'] = this.date;

    data['user_id'] = this.userId;
    data['updated_at'] = this.updatedAt;
    data['created_at'] = this.createdAt;
    data['id'] = this.id;
    return data;
  }
}
