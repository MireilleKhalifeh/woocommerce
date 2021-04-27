import 'dart:collection';
class Service {
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
  Acf acf;
  Links lLinks;

  Service(
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

  Service.fromJson(Map<String, dynamic> json) {
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
    acf = json['acf'] != null ? new Acf.fromJson(json['acf']) : null;
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

class Guid {
  String rendered;

  Guid({this.rendered});

  Guid.fromJson(Map<String, dynamic> json) {
    rendered = json['rendered'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['rendered'] = this.rendered;
    return data;
  }
}

class Acf {
  String purchaseEmail1;
  String purchaseEmail2;
  String purchaseMobile;
  String rentalEmail1;
  String rentalEmail2;
  String rentalMobile;
  String serviceEmail1;
  String serviceEmail2;
  String serviceMobile;

  Acf(
      {this.purchaseEmail1,
        this.purchaseEmail2,
        this.purchaseMobile,
        this.rentalEmail1,
        this.rentalEmail2,
        this.rentalMobile,
        this.serviceEmail1,
        this.serviceEmail2,
        this.serviceMobile});

  Acf.fromJson(Map<String, dynamic> json) {
    purchaseEmail1 = json['purchase-email-1'];
    purchaseEmail2 = json['purchase-email-2'];
    purchaseMobile = json['purchase-mobile'];
    rentalEmail1 = json['rental-email_1'];
    rentalEmail2 = json['rental-email-2'];
    rentalMobile = json['rental-mobile'];
    serviceEmail1 = json['service-email-1'];
    serviceEmail2 = json['service-email-2'];
    serviceMobile = json['service-mobile'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['purchase-email-1'] = this.purchaseEmail1;
    data['purchase-email-2'] = this.purchaseEmail2;
    data['purchase-mobile'] = this.purchaseMobile;
    data['rental-email_1'] = this.rentalEmail1;
    data['rental-email-2'] = this.rentalEmail2;
    data['rental-mobile'] = this.rentalMobile;
    data['service-email-1'] = this.serviceEmail1;
    data['service-email-2'] = this.serviceEmail2;
    data['service-mobile'] = this.serviceMobile;
    return data;
  }
}

class Links {
  List<Self> self;
  List<Self> collection;
  List<Self> about;
  List<Self> wpAttachment;
  List<Curies> curies;

  Links(
      {this.self, this.collection, this.about, this.wpAttachment, this.curies});

  Links.fromJson(Map<String, dynamic> json) {
    if (json['self'] != null) {
      self = [];
      json['self'].forEach((v) {
        self.add(new Self.fromJson(v));
      });
    }
    if (json['collection'] != null) {
      collection = [];
      json['collection'].forEach((v) {
        collection.add(new Self.fromJson(v));
      });
    }
    if (json['about'] != null) {
      about = [];
      json['about'].forEach((v) {
        about.add(new Self.fromJson(v));
      });
    }
    if (json['wp:attachment'] != null) {
      wpAttachment = [];
      json['wp:attachment'].forEach((v) {
        wpAttachment.add(new Self.fromJson(v));
      });
    }
    if (json['curies'] != null) {
      curies = [];
      json['curies'].forEach((v) {
        curies.add(new Curies.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.self != null) {
      data['self'] = this.self.map((v) => v.toJson()).toList();
    }
    if (this.collection != null) {
      data['collection'] = this.collection.map((v) => v.toJson()).toList();
    }
    if (this.about != null) {
      data['about'] = this.about.map((v) => v.toJson()).toList();
    }
    if (this.wpAttachment != null) {
      data['wp:attachment'] = this.wpAttachment.map((v) => v.toJson()).toList();
    }
    if (this.curies != null) {
      data['curies'] = this.curies.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Self {
  String href;

  Self({this.href});

  Self.fromJson(Map<String, dynamic> json) {
    href = json['href'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['href'] = this.href;
    return data;
  }
}

class Curies {
  String name;
  String href;
  bool templated;

  Curies({this.name, this.href, this.templated});

  Curies.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    href = json['href'];
    templated = json['templated'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['href'] = this.href;
    data['templated'] = this.templated;
    return data;

  }
}