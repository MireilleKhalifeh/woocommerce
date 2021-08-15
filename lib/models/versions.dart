import 'dart:convert';

class Versions {
  Versions({
    this.acf,
  });

  VersionAcf acf;

  factory Versions.fromJson(String str) => Versions.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Versions.fromMap(Map<String, dynamic> json) => Versions(
    acf: json["acf"] == null ? null : VersionAcf.fromMap(json["acf"]),
  );

  Map<String, dynamic> toMap() => {
    "acf": acf == null ? null : acf.toMap(),
  };
}

class VersionAcf {
  VersionAcf({
    this.iOSVersion,
    this.androidVersion,
  });

  String iOSVersion;
  String androidVersion;

  factory VersionAcf.fromJson(String str) => VersionAcf.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory VersionAcf.fromMap(Map<String, dynamic> json) => VersionAcf(
    iOSVersion: json["versionios"] == null ? null : json["versionios"],
    androidVersion: json["versionandroid"] == null ? null : json["versionandroid"],
  );

  Map<String, dynamic> toMap() => {
    "versionios": iOSVersion == null ? null : iOSVersion,
    "versionandroid": androidVersion == null ? null : androidVersion,
  };
}
