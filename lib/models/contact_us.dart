import 'services.dart';

class ContactUs {
  int id;
  String date;
  String dateGmt;
  Guid guid;
  String modified;
  String modifiedGmt;
  String slug;
  String status;
  String type;
  String link;
  Guid title;
  String template;
  ContactUsAcf acf;
  Links lLinks;

  ContactUs(
      {this.id,
        this.date,
        this.dateGmt,
        this.guid,
        this.modified,
        this.modifiedGmt,
        this.slug,
        this.status,
        this.type,
        this.link,
        this.title,
        this.template,
        this.acf,
        this.lLinks});

  ContactUs.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    date = json['date'];
    dateGmt = json['date_gmt'];
    guid = json['guid'] != null ? new Guid.fromJson(json['guid']) : null;
    modified = json['modified'];
    modifiedGmt = json['modified_gmt'];
    slug = json['slug'];
    status = json['status'];
    type = json['type'];
    link = json['link'];
    title = json['title'] != null ? new Guid.fromJson(json['title']) : null;
    template = json['template'];
    acf = json['acf'] != null ? new ContactUsAcf.fromJson(json['acf']) : null;
    lLinks = json['_links'] != null ? new Links.fromJson(json['_links']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['date'] = this.date;
    data['date_gmt'] = this.dateGmt;
    if (this.guid != null) {
      data['guid'] = this.guid.toJson();
    }
    data['modified'] = this.modified;
    data['modified_gmt'] = this.modifiedGmt;
    data['slug'] = this.slug;
    data['status'] = this.status;
    data['type'] = this.type;
    data['link'] = this.link;
    if (this.title != null) {
      data['title'] = this.title.toJson();
    }
    data['template'] = this.template;
    if (this.acf != null) {
      data['acf'] = this.acf.toJson();
    }
    if (this.lLinks != null) {
      data['_links'] = this.lLinks.toJson();
    }
    return data;
  }
}


class ContactUsAcf {
  String mobile;
  String email;
  String linkedin;
  String officeLocation;
  String officeLongitude;
  String officeLatitude;
  String stockLocation;
  String stockLongitude;
  String stockLatitude;

  ContactUsAcf({this.mobile, this.email, this.linkedin, this.officeLocation});

  ContactUsAcf.fromJson(Map<String, dynamic> json) {
    mobile = json['mobile'];
    email = json['email'];
    linkedin = json['linkedin'];
    officeLocation = json['location'];
    officeLongitude = json['longitude-office'];
    officeLatitude = json['latitude-office'];
    stockLocation = json['location_stock'];
    stockLongitude = json['longitude-stock'];
    stockLatitude = json['latitude-stock'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['mobile'] = this.mobile;
    data['email'] = this.email;
    data['linkedin'] = this.linkedin;
    data['location'] = this.officeLocation;
    data['longitude-office'] = this.officeLongitude;
    data['latitude-office'] = this.officeLatitude;
    data['location_stock'] = this.stockLocation;
    data['longitude-stock'] = this.stockLongitude;
    data['latitude-stock'] = this.stockLatitude;
    return data;
  }
}

