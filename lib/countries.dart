class CountriesModel {
  String? flag;
  String? country;
  String? code;

  CountriesModel({this.flag, this.country, this.code});

  CountriesModel.fromJson(Map<dynamic, dynamic> json) {
    flag = json['flag'];
    country = json['country'];
    code = json['code'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['flag'] = this.flag;
    data['country'] = this.country;
    data['code'] = this.code;
    return data;
  }
}
