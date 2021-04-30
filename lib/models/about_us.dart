import 'services.dart';
class AboutUs {
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

  AboutUs(
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

  AboutUs.fromJson(Map<String, dynamic> json) {
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

class Acf {
  Employee ceo;
  Employee sales;
  Employee purchase;
  Employee transport;
  Employee finance;

  Acf({this.ceo, this.sales, this.purchase, this.transport, this.finance});

  Acf.fromJson(Map<String, dynamic> json) {
    ceo = json['ceo'] != null ? new Employee.fromJson(json['ceo']) : null;
    sales = json['sales'] != null ? new Employee.fromJson(json['sales']) : null;
    purchase =
    json['purchase'] != null ? new Employee.fromJson(json['purchase']) : null;
    transport =
    json['transport'] != null ? new Employee.fromJson(json['transport']) : null;
    finance =
    json['finance'] != null ? new Employee.fromJson(json['finance']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.ceo != null) {
      data['ceo'] = this.ceo.toJson();
    }
    if (this.sales != null) {
      data['sales'] = this.sales.toJson();
    }
    if (this.purchase != null) {
      data['purchase'] = this.purchase.toJson();
    }
    if (this.transport != null) {
      data['transport'] = this.transport.toJson();
    }
    if (this.finance != null) {
      data['finance'] = this.finance.toJson();
    }
    return data;
  }
}

class Employee {
  int iD;
  int id;
  String title;
  String filename;
  int filesize;
  String url;
  String link;
  String alt;
  String author;
  String description;
  String caption;
  String name;
  String status;
  int uploadedTo;
  String date;
  String modified;
  int menuOrder;
  String mimeType;
  String type;
  String subtype;
  String icon;
  int width;
  int height;
  Sizes sizes;

  Employee(
      {this.iD,
        this.id,
        this.title,
        this.filename,
        this.filesize,
        this.url,
        this.link,
        this.alt,
        this.author,
        this.description,
        this.caption,
        this.name,
        this.status,
        this.uploadedTo,
        this.date,
        this.modified,
        this.menuOrder,
        this.mimeType,
        this.type,
        this.subtype,
        this.icon,
        this.width,
        this.height,
        this.sizes});

  Employee.fromJson(Map<String, dynamic> json) {
    iD = json['ID'];
    id = json['id'];
    title = json['title'];
    filename = json['filename'];
    filesize = json['filesize'];
    url = json['url'];
    link = json['link'];
    alt = json['alt'];
    author = json['author'];
    description = json['description'];
    caption = json['caption'];
    name = json['name'];
    status = json['status'];
    uploadedTo = json['uploaded_to'];
    date = json['date'];
    modified = json['modified'];
    menuOrder = json['menu_order'];
    mimeType = json['mime_type'];
    type = json['type'];
    subtype = json['subtype'];
    icon = json['icon'];
    width = json['width'];
    height = json['height'];
    sizes = json['sizes'] != null ? new Sizes.fromJson(json['sizes']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ID'] = this.iD;
    data['id'] = this.id;
    data['title'] = this.title;
    data['filename'] = this.filename;
    data['filesize'] = this.filesize;
    data['url'] = this.url;
    data['link'] = this.link;
    data['alt'] = this.alt;
    data['author'] = this.author;
    data['description'] = this.description;
    data['caption'] = this.caption;
    data['name'] = this.name;
    data['status'] = this.status;
    data['uploaded_to'] = this.uploadedTo;
    data['date'] = this.date;
    data['modified'] = this.modified;
    data['menu_order'] = this.menuOrder;
    data['mime_type'] = this.mimeType;
    data['type'] = this.type;
    data['subtype'] = this.subtype;
    data['icon'] = this.icon;
    data['width'] = this.width;
    data['height'] = this.height;
    if (this.sizes != null) {
      data['sizes'] = this.sizes.toJson();
    }
    return data;
  }
}

class Sizes {
  String thumbnail;
  int thumbnailWidth;
  int thumbnailHeight;
  String medium;
  int mediumWidth;
  int mediumHeight;
  String mediumLarge;
  int mediumLargeWidth;
  int mediumLargeHeight;
  String large;
  int largeWidth;
  int largeHeight;
  String s1536x1536;
  int i1536x1536Width;
  int i1536x1536Height;
  String s2048x2048;
  int i2048x2048Width;
  int i2048x2048Height;
  String etPbPostMainImage;
  int etPbPostMainImageWidth;
  int etPbPostMainImageHeight;
  String etPbPostMainImageFullwidth;
  int etPbPostMainImageFullwidthWidth;
  int etPbPostMainImageFullwidthHeight;
  String etPbPortfolioImage;
  int etPbPortfolioImageWidth;
  int etPbPortfolioImageHeight;
  String etPbPortfolioModuleImage;
  int etPbPortfolioModuleImageWidth;
  int etPbPortfolioModuleImageHeight;
  String etPbPortfolioImageSingle;
  int etPbPortfolioImageSingleWidth;
  int etPbPortfolioImageSingleHeight;
  String etPbGalleryModuleImagePortrait;
  int etPbGalleryModuleImagePortraitWidth;
  int etPbGalleryModuleImagePortraitHeight;
  String etPbPostMainImageFullwidthLarge;
  int etPbPostMainImageFullwidthLargeWidth;
  int etPbPostMainImageFullwidthLargeHeight;
  String etPbImageResponsiveDesktop;
  int etPbImageResponsiveDesktopWidth;
  int etPbImageResponsiveDesktopHeight;
  String etPbImageResponsiveTablet;
  int etPbImageResponsiveTabletWidth;
  int etPbImageResponsiveTabletHeight;
  String etPbImageResponsivePhone;
  int etPbImageResponsivePhoneWidth;
  int etPbImageResponsivePhoneHeight;
  String woocommerceThumbnail;
  int woocommerceThumbnailWidth;
  int woocommerceThumbnailHeight;
  String woocommerceSingle;
  int woocommerceSingleWidth;
  int woocommerceSingleHeight;
  String woocommerceGalleryThumbnail;
  int woocommerceGalleryThumbnailWidth;
  int woocommerceGalleryThumbnailHeight;
  String shopCatalog;
  int shopCatalogWidth;
  int shopCatalogHeight;
  String shopSingle;
  int shopSingleWidth;
  int shopSingleHeight;
  String shopThumbnail;
  int shopThumbnailWidth;
  int shopThumbnailHeight;

  Sizes(
      {this.thumbnail,
        this.thumbnailWidth,
        this.thumbnailHeight,
        this.medium,
        this.mediumWidth,
        this.mediumHeight,
        this.mediumLarge,
        this.mediumLargeWidth,
        this.mediumLargeHeight,
        this.large,
        this.largeWidth,
        this.largeHeight,
        this.s1536x1536,
        this.i1536x1536Width,
        this.i1536x1536Height,
        this.s2048x2048,
        this.i2048x2048Width,
        this.i2048x2048Height,
        this.etPbPostMainImage,
        this.etPbPostMainImageWidth,
        this.etPbPostMainImageHeight,
        this.etPbPostMainImageFullwidth,
        this.etPbPostMainImageFullwidthWidth,
        this.etPbPostMainImageFullwidthHeight,
        this.etPbPortfolioImage,
        this.etPbPortfolioImageWidth,
        this.etPbPortfolioImageHeight,
        this.etPbPortfolioModuleImage,
        this.etPbPortfolioModuleImageWidth,
        this.etPbPortfolioModuleImageHeight,
        this.etPbPortfolioImageSingle,
        this.etPbPortfolioImageSingleWidth,
        this.etPbPortfolioImageSingleHeight,
        this.etPbGalleryModuleImagePortrait,
        this.etPbGalleryModuleImagePortraitWidth,
        this.etPbGalleryModuleImagePortraitHeight,
        this.etPbPostMainImageFullwidthLarge,
        this.etPbPostMainImageFullwidthLargeWidth,
        this.etPbPostMainImageFullwidthLargeHeight,
        this.etPbImageResponsiveDesktop,
        this.etPbImageResponsiveDesktopWidth,
        this.etPbImageResponsiveDesktopHeight,
        this.etPbImageResponsiveTablet,
        this.etPbImageResponsiveTabletWidth,
        this.etPbImageResponsiveTabletHeight,
        this.etPbImageResponsivePhone,
        this.etPbImageResponsivePhoneWidth,
        this.etPbImageResponsivePhoneHeight,
        this.woocommerceThumbnail,
        this.woocommerceThumbnailWidth,
        this.woocommerceThumbnailHeight,
        this.woocommerceSingle,
        this.woocommerceSingleWidth,
        this.woocommerceSingleHeight,
        this.woocommerceGalleryThumbnail,
        this.woocommerceGalleryThumbnailWidth,
        this.woocommerceGalleryThumbnailHeight,
        this.shopCatalog,
        this.shopCatalogWidth,
        this.shopCatalogHeight,
        this.shopSingle,
        this.shopSingleWidth,
        this.shopSingleHeight,
        this.shopThumbnail,
        this.shopThumbnailWidth,
        this.shopThumbnailHeight});

  Sizes.fromJson(Map<String, dynamic> json) {
    thumbnail = json['thumbnail'];
    thumbnailWidth = json['thumbnail-width'];
    thumbnailHeight = json['thumbnail-height'];
    medium = json['medium'];
    mediumWidth = json['medium-width'];
    mediumHeight = json['medium-height'];
    mediumLarge = json['medium_large'];
    mediumLargeWidth = json['medium_large-width'];
    mediumLargeHeight = json['medium_large-height'];
    large = json['large'];
    largeWidth = json['large-width'];
    largeHeight = json['large-height'];
    s1536x1536 = json['1536x1536'];
    i1536x1536Width = json['1536x1536-width'];
    i1536x1536Height = json['1536x1536-height'];
    s2048x2048 = json['2048x2048'];
    i2048x2048Width = json['2048x2048-width'];
    i2048x2048Height = json['2048x2048-height'];
    etPbPostMainImage = json['et-pb-post-main-image'];
    etPbPostMainImageWidth = json['et-pb-post-main-image-width'];
    etPbPostMainImageHeight = json['et-pb-post-main-image-height'];
    etPbPostMainImageFullwidth = json['et-pb-post-main-image-fullwidth'];
    etPbPostMainImageFullwidthWidth =
    json['et-pb-post-main-image-fullwidth-width'];
    etPbPostMainImageFullwidthHeight =
    json['et-pb-post-main-image-fullwidth-height'];
    etPbPortfolioImage = json['et-pb-portfolio-image'];
    etPbPortfolioImageWidth = json['et-pb-portfolio-image-width'];
    etPbPortfolioImageHeight = json['et-pb-portfolio-image-height'];
    etPbPortfolioModuleImage = json['et-pb-portfolio-module-image'];
    etPbPortfolioModuleImageWidth = json['et-pb-portfolio-module-image-width'];
    etPbPortfolioModuleImageHeight =
    json['et-pb-portfolio-module-image-height'];
    etPbPortfolioImageSingle = json['et-pb-portfolio-image-single'];
    etPbPortfolioImageSingleWidth = json['et-pb-portfolio-image-single-width'];
    etPbPortfolioImageSingleHeight =
    json['et-pb-portfolio-image-single-height'];
    etPbGalleryModuleImagePortrait =
    json['et-pb-gallery-module-image-portrait'];
    etPbGalleryModuleImagePortraitWidth =
    json['et-pb-gallery-module-image-portrait-width'];
    etPbGalleryModuleImagePortraitHeight =
    json['et-pb-gallery-module-image-portrait-height'];
    etPbPostMainImageFullwidthLarge =
    json['et-pb-post-main-image-fullwidth-large'];
    etPbPostMainImageFullwidthLargeWidth =
    json['et-pb-post-main-image-fullwidth-large-width'];
    etPbPostMainImageFullwidthLargeHeight =
    json['et-pb-post-main-image-fullwidth-large-height'];
    etPbImageResponsiveDesktop = json['et-pb-image--responsive--desktop'];
    etPbImageResponsiveDesktopWidth =
    json['et-pb-image--responsive--desktop-width'];
    etPbImageResponsiveDesktopHeight =
    json['et-pb-image--responsive--desktop-height'];
    etPbImageResponsiveTablet = json['et-pb-image--responsive--tablet'];
    etPbImageResponsiveTabletWidth =
    json['et-pb-image--responsive--tablet-width'];
    etPbImageResponsiveTabletHeight =
    json['et-pb-image--responsive--tablet-height'];
    etPbImageResponsivePhone = json['et-pb-image--responsive--phone'];
    etPbImageResponsivePhoneWidth =
    json['et-pb-image--responsive--phone-width'];
    etPbImageResponsivePhoneHeight =
    json['et-pb-image--responsive--phone-height'];
    woocommerceThumbnail = json['woocommerce_thumbnail'];
    woocommerceThumbnailWidth = json['woocommerce_thumbnail-width'];
    woocommerceThumbnailHeight = json['woocommerce_thumbnail-height'];
    woocommerceSingle = json['woocommerce_single'];
    woocommerceSingleWidth = json['woocommerce_single-width'];
    woocommerceSingleHeight = json['woocommerce_single-height'];
    woocommerceGalleryThumbnail = json['woocommerce_gallery_thumbnail'];
    woocommerceGalleryThumbnailWidth =
    json['woocommerce_gallery_thumbnail-width'];
    woocommerceGalleryThumbnailHeight =
    json['woocommerce_gallery_thumbnail-height'];
    shopCatalog = json['shop_catalog'];
    shopCatalogWidth = json['shop_catalog-width'];
    shopCatalogHeight = json['shop_catalog-height'];
    shopSingle = json['shop_single'];
    shopSingleWidth = json['shop_single-width'];
    shopSingleHeight = json['shop_single-height'];
    shopThumbnail = json['shop_thumbnail'];
    shopThumbnailWidth = json['shop_thumbnail-width'];
    shopThumbnailHeight = json['shop_thumbnail-height'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['thumbnail'] = this.thumbnail;
    data['thumbnail-width'] = this.thumbnailWidth;
    data['thumbnail-height'] = this.thumbnailHeight;
    data['medium'] = this.medium;
    data['medium-width'] = this.mediumWidth;
    data['medium-height'] = this.mediumHeight;
    data['medium_large'] = this.mediumLarge;
    data['medium_large-width'] = this.mediumLargeWidth;
    data['medium_large-height'] = this.mediumLargeHeight;
    data['large'] = this.large;
    data['large-width'] = this.largeWidth;
    data['large-height'] = this.largeHeight;
    data['1536x1536'] = this.s1536x1536;
    data['1536x1536-width'] = this.i1536x1536Width;
    data['1536x1536-height'] = this.i1536x1536Height;
    data['2048x2048'] = this.s2048x2048;
    data['2048x2048-width'] = this.i2048x2048Width;
    data['2048x2048-height'] = this.i2048x2048Height;
    data['et-pb-post-main-image'] = this.etPbPostMainImage;
    data['et-pb-post-main-image-width'] = this.etPbPostMainImageWidth;
    data['et-pb-post-main-image-height'] = this.etPbPostMainImageHeight;
    data['et-pb-post-main-image-fullwidth'] = this.etPbPostMainImageFullwidth;
    data['et-pb-post-main-image-fullwidth-width'] =
        this.etPbPostMainImageFullwidthWidth;
    data['et-pb-post-main-image-fullwidth-height'] =
        this.etPbPostMainImageFullwidthHeight;
    data['et-pb-portfolio-image'] = this.etPbPortfolioImage;
    data['et-pb-portfolio-image-width'] = this.etPbPortfolioImageWidth;
    data['et-pb-portfolio-image-height'] = this.etPbPortfolioImageHeight;
    data['et-pb-portfolio-module-image'] = this.etPbPortfolioModuleImage;
    data['et-pb-portfolio-module-image-width'] =
        this.etPbPortfolioModuleImageWidth;
    data['et-pb-portfolio-module-image-height'] =
        this.etPbPortfolioModuleImageHeight;
    data['et-pb-portfolio-image-single'] = this.etPbPortfolioImageSingle;
    data['et-pb-portfolio-image-single-width'] =
        this.etPbPortfolioImageSingleWidth;
    data['et-pb-portfolio-image-single-height'] =
        this.etPbPortfolioImageSingleHeight;
    data['et-pb-gallery-module-image-portrait'] =
        this.etPbGalleryModuleImagePortrait;
    data['et-pb-gallery-module-image-portrait-width'] =
        this.etPbGalleryModuleImagePortraitWidth;
    data['et-pb-gallery-module-image-portrait-height'] =
        this.etPbGalleryModuleImagePortraitHeight;
    data['et-pb-post-main-image-fullwidth-large'] =
        this.etPbPostMainImageFullwidthLarge;
    data['et-pb-post-main-image-fullwidth-large-width'] =
        this.etPbPostMainImageFullwidthLargeWidth;
    data['et-pb-post-main-image-fullwidth-large-height'] =
        this.etPbPostMainImageFullwidthLargeHeight;
    data['et-pb-image--responsive--desktop'] = this.etPbImageResponsiveDesktop;
    data['et-pb-image--responsive--desktop-width'] =
        this.etPbImageResponsiveDesktopWidth;
    data['et-pb-image--responsive--desktop-height'] =
        this.etPbImageResponsiveDesktopHeight;
    data['et-pb-image--responsive--tablet'] = this.etPbImageResponsiveTablet;
    data['et-pb-image--responsive--tablet-width'] =
        this.etPbImageResponsiveTabletWidth;
    data['et-pb-image--responsive--tablet-height'] =
        this.etPbImageResponsiveTabletHeight;
    data['et-pb-image--responsive--phone'] = this.etPbImageResponsivePhone;
    data['et-pb-image--responsive--phone-width'] =
        this.etPbImageResponsivePhoneWidth;
    data['et-pb-image--responsive--phone-height'] =
        this.etPbImageResponsivePhoneHeight;
    data['woocommerce_thumbnail'] = this.woocommerceThumbnail;
    data['woocommerce_thumbnail-width'] = this.woocommerceThumbnailWidth;
    data['woocommerce_thumbnail-height'] = this.woocommerceThumbnailHeight;
    data['woocommerce_single'] = this.woocommerceSingle;
    data['woocommerce_single-width'] = this.woocommerceSingleWidth;
    data['woocommerce_single-height'] = this.woocommerceSingleHeight;
    data['woocommerce_gallery_thumbnail'] = this.woocommerceGalleryThumbnail;
    data['woocommerce_gallery_thumbnail-width'] =
        this.woocommerceGalleryThumbnailWidth;
    data['woocommerce_gallery_thumbnail-height'] =
        this.woocommerceGalleryThumbnailHeight;
    data['shop_catalog'] = this.shopCatalog;
    data['shop_catalog-width'] = this.shopCatalogWidth;
    data['shop_catalog-height'] = this.shopCatalogHeight;
    data['shop_single'] = this.shopSingle;
    data['shop_single-width'] = this.shopSingleWidth;
    data['shop_single-height'] = this.shopSingleHeight;
    data['shop_thumbnail'] = this.shopThumbnail;
    data['shop_thumbnail-width'] = this.shopThumbnailWidth;
    data['shop_thumbnail-height'] = this.shopThumbnailHeight;
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
        collection.add(Self.fromJson(v));
      });
    }
    if (json['about'] != null) {
      about = [];
      json['about'].forEach((v) {
        about.add(Self.fromJson(v));
      });
    }
    if (json['wp:attachment'] != null) {
      wpAttachment = [];
      json['wp:attachment'].forEach((v) {
        wpAttachment.add(Self.fromJson(v));
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
