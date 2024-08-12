class LoginResponseModel {
  bool? status;
  String? message;
  String? token;
  Data? data;

  LoginResponseModel({this.status, this.message, this.token, this.data});

  LoginResponseModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    token = json['token'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    data['token'] = this.token;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  int? id;
  String? fullName;
  String? phone;
  String? type;
  String? photo;
  String? email;
  String? optionalPhone;
  String? nidNumber;
  String? shortAddress;
  String? parentPhoneNumber;
  String? height;
  String? weight;
  String? dateOfBirth;
  String? gender;
  String? fathersName;
  String? fathersAge;
  String? mothersName;
  String? mothersAge;
  String? maritalStatus;
  String? presentAddress;
  String? permanentAddress;
  String? schoolName;
  String? sscBoardName;
  String? sscPassingYear;
  Null? collegeName;
  Null? hscDiplomaBoard;
  Null? hscDiplomaPassingYear;
  Null? uploadAllCertificate;
  Null? bnmcBmdc;
  Null? yearOfExperience;
  Null? pastExperience;
  Null? speciality;
  Null? subSpeciality;
  Null? professionalCertificate;
  Null? award;
  Null? packageRange;
  Null? hourlyPackageRange;
  Null? dailyPackageRange;
  Null? weeklyPackageRange;
  Null? monthlyPackageRange;
  String? city;
  String? location;
  Null? preferableLocation;
  Null? queryAbout;
  String? createdAt;
  String? updatedAt;

  Data(
      {this.id,
        this.fullName,
        this.phone,
        this.type,
        this.photo,
        this.email,
        this.optionalPhone,
        this.nidNumber,
        this.shortAddress,
        this.parentPhoneNumber,
        this.height,
        this.weight,
        this.dateOfBirth,
        this.gender,
        this.fathersName,
        this.fathersAge,
        this.mothersName,
        this.mothersAge,
        this.maritalStatus,
        this.presentAddress,
        this.permanentAddress,
        this.schoolName,
        this.sscBoardName,
        this.sscPassingYear,
        this.collegeName,
        this.hscDiplomaBoard,
        this.hscDiplomaPassingYear,
        this.uploadAllCertificate,
        this.bnmcBmdc,
        this.yearOfExperience,
        this.pastExperience,
        this.speciality,
        this.subSpeciality,
        this.professionalCertificate,
        this.award,
        this.packageRange,
        this.hourlyPackageRange,
        this.dailyPackageRange,
        this.weeklyPackageRange,
        this.monthlyPackageRange,
        this.city,
        this.location,
        this.preferableLocation,
        this.queryAbout,
        this.createdAt,
        this.updatedAt});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    fullName = json['full_name'];
    phone = json['phone'];
    type = json['type'];
    photo = json['photo'];
    email = json['email'];
    optionalPhone = json['optional_phone'];
    nidNumber = json['nid_number'];
    shortAddress = json['short_address'];
    parentPhoneNumber = json['parent_phone_number'];
    height = json['height'];
    weight = json['weight'];
    dateOfBirth = json['date_of_birth'];
    gender = json['gender'];
    fathersName = json['fathers_name'];
    fathersAge = json['fathers_age'];
    mothersName = json['mothers_name'];
    mothersAge = json['mothers_age'];
    maritalStatus = json['marital_status'];
    presentAddress = json['present_address'];
    permanentAddress = json['permanent_address'];
    schoolName = json['school_name'];
    sscBoardName = json['ssc_board_name'];
    sscPassingYear = json['ssc_passing_year'];
    collegeName = json['college_name'];
    hscDiplomaBoard = json['hsc_diploma_board'];
    hscDiplomaPassingYear = json['hsc_diploma_passing_year'];
    uploadAllCertificate = json['upload_all_certificate'];
    bnmcBmdc = json['bnmc_bmdc'];
    yearOfExperience = json['year_of_experience'];
    pastExperience = json['past_experience'];
    speciality = json['speciality'];
    subSpeciality = json['sub_speciality'];
    professionalCertificate = json['professional_certificate'];
    award = json['award'];
    packageRange = json['package_range'];
    hourlyPackageRange = json['hourly_package_range'];
    dailyPackageRange = json['daily_package_range'];
    weeklyPackageRange = json['weekly_package_range'];
    monthlyPackageRange = json['monthly_package_range'];
    city = json['city'];
    location = json['location'];
    preferableLocation = json['preferable_location'];
    queryAbout = json['query_about'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['full_name'] = this.fullName;
    data['phone'] = this.phone;
    data['type'] = this.type;
    data['photo'] = this.photo;
    data['email'] = this.email;
    data['optional_phone'] = this.optionalPhone;
    data['nid_number'] = this.nidNumber;
    data['short_address'] = this.shortAddress;
    data['parent_phone_number'] = this.parentPhoneNumber;
    data['height'] = this.height;
    data['weight'] = this.weight;
    data['date_of_birth'] = this.dateOfBirth;
    data['gender'] = this.gender;
    data['fathers_name'] = this.fathersName;
    data['fathers_age'] = this.fathersAge;
    data['mothers_name'] = this.mothersName;
    data['mothers_age'] = this.mothersAge;
    data['marital_status'] = this.maritalStatus;
    data['present_address'] = this.presentAddress;
    data['permanent_address'] = this.permanentAddress;
    data['school_name'] = this.schoolName;
    data['ssc_board_name'] = this.sscBoardName;
    data['ssc_passing_year'] = this.sscPassingYear;
    data['college_name'] = this.collegeName;
    data['hsc_diploma_board'] = this.hscDiplomaBoard;
    data['hsc_diploma_passing_year'] = this.hscDiplomaPassingYear;
    data['upload_all_certificate'] = this.uploadAllCertificate;
    data['bnmc_bmdc'] = this.bnmcBmdc;
    data['year_of_experience'] = this.yearOfExperience;
    data['past_experience'] = this.pastExperience;
    data['speciality'] = this.speciality;
    data['sub_speciality'] = this.subSpeciality;
    data['professional_certificate'] = this.professionalCertificate;
    data['award'] = this.award;
    data['package_range'] = this.packageRange;
    data['hourly_package_range'] = this.hourlyPackageRange;
    data['daily_package_range'] = this.dailyPackageRange;
    data['weekly_package_range'] = this.weeklyPackageRange;
    data['monthly_package_range'] = this.monthlyPackageRange;
    data['city'] = this.city;
    data['location'] = this.location;
    data['preferable_location'] = this.preferableLocation;
    data['query_about'] = this.queryAbout;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}