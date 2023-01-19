class APOD {
  final String? copyright;
  final String? date;
  final String? explanation;
  final String? hdurl;
  final String? mediaType;
  final String? serviceVersion;
  final String? title;
  final String? url;
  const APOD(
      {this.copyright,
      this.date,
      this.explanation,
      this.hdurl,
      this.mediaType,
      this.serviceVersion,
      this.title,
      this.url});
  APOD copyWith(
      {String? copyright,
      String? date,
      String? explanation,
      String? hdurl,
      String? mediaType,
      String? serviceVersion,
      String? title,
      String? url}) {
    return APOD(
        copyright: copyright ?? this.copyright,
        date: date ?? this.date,
        explanation: explanation ?? this.explanation,
        hdurl: hdurl ?? this.hdurl,
        mediaType: mediaType ?? this.mediaType,
        serviceVersion: serviceVersion ?? this.serviceVersion,
        title: title ?? this.title,
        url: url ?? this.url);
  }

  Map<String, Object?> toJson() {
    return {
      'copyright': copyright,
      'date': date,
      'explanation': explanation,
      'hdurl': hdurl,
      'mediaType': mediaType,
      'serviceVersion': serviceVersion,
      'title': title,
      'url': url
    };
  }

  static APOD fromJson(Map<String, Object?> json) {
    return APOD(
        copyright:
            json['copyright'] == null ? null : json['copyright'] as String,
        date: json['date'] == null ? null : json['date'] as String,
        explanation:
            json['explanation'] == null ? null : json['explanation'] as String,
        hdurl: json['hdurl'] == null ? null : json['hdurl'] as String,
        mediaType:
            json['mediaType'] == null ? null : json['mediaType'] as String,
        serviceVersion: json['serviceVersion'] == null
            ? null
            : json['serviceVersion'] as String,
        title: json['title'] == null ? null : json['title'] as String,
        url: json['url'] == null ? null : json['url'] as String);
  }

  @override
  String toString() {
    return '''APOD(
                copyright:$copyright,
date:$date,
explanation:$explanation,
hdurl:$hdurl,
mediaType:$mediaType,
serviceVersion:$serviceVersion,
title:$title,
url:$url
    ) ''';
  }

  @override
  bool operator ==(Object other) {
    return other is APOD &&
        other.runtimeType == runtimeType &&
        other.copyright == copyright &&
        other.date == date &&
        other.explanation == explanation &&
        other.hdurl == hdurl &&
        other.mediaType == mediaType &&
        other.serviceVersion == serviceVersion &&
        other.title == title &&
        other.url == url;
  }

  @override
  int get hashCode {
    return Object.hash(runtimeType, copyright, date, explanation, hdurl,
        mediaType, serviceVersion, title, url);
  }
}
