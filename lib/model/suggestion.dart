class Sugg {
  String? value;
  int? userId;
  String? date;
  String? updatedAt;
  String? createdAt;
  int? id;

  Sugg(
      {this.value,
      this.userId,
      this.date,
      this.updatedAt,
      this.createdAt,
      this.id});

  Sugg.fromJson(Map<String, dynamic> json) {
    value = json['value'];
    userId = json['user_id'];
    date = json['date'];
    updatedAt = json['updated_at'];
    createdAt = json['created_at'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['value'] = this.value;
    data['user_id'] = this.userId;
    data['date'] = this.date;
    data['updated_at'] = this.updatedAt;
    data['created_at'] = this.createdAt;
    data['id'] = this.id;
    return data;
  }
}
