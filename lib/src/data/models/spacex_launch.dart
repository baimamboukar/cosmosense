class SpaceXlaunch {
  final Fairings? fairings;
  final Links? links;
  final String? staticFireDateUtc;
  final String? rocket;
  final bool? success;
  final List<Failures>? failures;
  final String? details;
  final String? launchpad;
  final int? flightNumber;
  final String? name;
  final String? dateLocal;
  final bool? upcoming;
  const SpaceXlaunch(
      {this.fairings,
      this.links,
      this.staticFireDateUtc,
      this.rocket,
      this.success,
      this.failures,
      this.details,
      this.launchpad,
      this.flightNumber,
      this.name,
      this.dateLocal,
      this.upcoming});
  SpaceXlaunch copyWith(
      {Fairings? fairings,
      Links? links,
      String? staticFireDateUtc,
      String? rocket,
      bool? success,
      List<Failures>? failures,
      String? details,
      String? launchpad,
      int? flightNumber,
      String? name,
      String? dateLocal,
      bool? upcoming}) {
    return SpaceXlaunch(
        fairings: fairings ?? this.fairings,
        links: links ?? this.links,
        staticFireDateUtc: staticFireDateUtc ?? this.staticFireDateUtc,
        rocket: rocket ?? this.rocket,
        success: success ?? this.success,
        failures: failures ?? this.failures,
        details: details ?? this.details,
        launchpad: launchpad ?? this.launchpad,
        flightNumber: flightNumber ?? this.flightNumber,
        name: name ?? this.name,
        dateLocal: dateLocal ?? this.dateLocal,
        upcoming: upcoming ?? this.upcoming);
  }

  Map<String, Object?> toJson() {
    return {
      'fairings': fairings?.toJson(),
      'links': links?.toJson(),
      'staticFireDateUtc': staticFireDateUtc,
      'rocket': rocket,
      'success': success,
      'failures':
          failures?.map<Map<String, dynamic>>((data) => data.toJson()).toList(),
      'details': details,
      'launchpad': launchpad,
      'flightNumber': flightNumber,
      'name': name,
      'dateLocal': dateLocal,
      'upcoming': upcoming
    };
  }

  static SpaceXlaunch fromJson(Map<String, Object?> json) {
    return SpaceXlaunch(
        fairings: json['fairings'] == null
            ? null
            : Fairings.fromJson(json['fairings'] as Map<String, Object?>),
        links: json['links'] == null
            ? null
            : Links.fromJson(json['links'] as Map<String, Object?>),
        staticFireDateUtc: json['static_fire_date_utc'] == null
            ? null
            : json['static_fire_date_utc'] as String,
        rocket: json['rocket'] == null ? null : json['rocket'] as String,
        success: json['success'] == null ? null : json['success'] as bool,
        failures: json['failures'] == null
            ? null
            : (json['failures'] as List)
                .map<Failures>(
                    (data) => Failures.fromJson(data as Map<String, Object?>))
                .toList(),
        details: json['details'] == null ? null : json['details'] as String,
        launchpad:
            json['launchpad'] == null ? null : json['launchpad'] as String,
        flightNumber:
            json['flight_number'] == null ? null : json['flight_number'] as int,
        name: json['name'] == null ? null : json['name'] as String,
        dateLocal:
            json['date_local'] == null ? null : json['date_local'] as String,
        upcoming: json['upcoming'] == null ? null : json['upcoming'] as bool);
  }

  @override
  String toString() {
    return '''SpaceXlaunch(
                fairings:${fairings.toString()},
links:${links.toString()},
staticFireDateUtc:$staticFireDateUtc,
rocket:$rocket,
success:$success,
failures:${failures.toString()},
details:$details,
launchpad:$launchpad,
flightNumber:$flightNumber,
name:$name,
dateLocal:$dateLocal,
upcoming:$upcoming
    ) ''';
  }

  @override
  bool operator ==(Object other) {
    return other is SpaceXlaunch &&
        other.runtimeType == runtimeType &&
        other.fairings == fairings &&
        other.links == links &&
        other.staticFireDateUtc == staticFireDateUtc &&
        other.rocket == rocket &&
        other.success == success &&
        other.failures == failures &&
        other.details == details &&
        other.launchpad == launchpad &&
        other.flightNumber == flightNumber &&
        other.name == name &&
        other.dateLocal == dateLocal &&
        other.upcoming == upcoming;
  }

  @override
  int get hashCode {
    return Object.hash(
        runtimeType,
        fairings,
        links,
        staticFireDateUtc,
        rocket,
        success,
        failures,
        details,
        launchpad,
        flightNumber,
        name,
        dateLocal,
        upcoming);
  }
}

class Failures {
  final int? time;
  final dynamic altitude;
  final String? reason;
  const Failures({this.time, this.altitude, this.reason});
  Failures copyWith({int? time, dynamic altitude, String? reason}) {
    return Failures(
        time: time ?? this.time,
        altitude: altitude ?? this.altitude,
        reason: reason ?? this.reason);
  }

  Map<String, Object?> toJson() {
    return {'time': time, 'altitude': altitude, 'reason': reason};
  }

  static Failures fromJson(Map<String, Object?> json) {
    return Failures(
        time: json['time'] == null ? null : json['time'] as int,
        altitude: json['altitude'] as dynamic,
        reason: json['reason'] == null ? null : json['reason'] as String);
  }

  @override
  String toString() {
    return '''Failures(
                time:$time,
altitude:$altitude,
reason:$reason
    ) ''';
  }

  @override
  bool operator ==(Object other) {
    return other is Failures &&
        other.runtimeType == runtimeType &&
        other.time == time &&
        other.altitude == altitude &&
        other.reason == reason;
  }

  @override
  int get hashCode {
    return Object.hash(runtimeType, time, altitude, reason);
  }
}

class Links {
  final Patch? patch;
  final Reddit? reddit;
  final Flickr? flickr;
  final String? webcast;
  final String? youtubeId;
  final String? article;
  final String? wikipedia;
  const Links(
      {this.patch,
      this.reddit,
      this.flickr,
      this.webcast,
      this.youtubeId,
      this.article,
      this.wikipedia});
  Links copyWith(
      {Patch? patch,
      Reddit? reddit,
      Flickr? flickr,
      String? webcast,
      String? youtubeId,
      String? article,
      String? wikipedia}) {
    return Links(
        patch: patch ?? this.patch,
        reddit: reddit ?? this.reddit,
        flickr: flickr ?? this.flickr,
        webcast: webcast ?? this.webcast,
        youtubeId: youtubeId ?? this.youtubeId,
        article: article ?? this.article,
        wikipedia: wikipedia ?? this.wikipedia);
  }

  Map<String, Object?> toJson() {
    return {
      'patch': patch?.toJson(),
      'reddit': reddit?.toJson(),
      'flickr': flickr?.toJson(),
      'webcast': webcast,
      'youtubeId': youtubeId,
      'article': article,
      'wikipedia': wikipedia
    };
  }

  static Links fromJson(Map<String, Object?> json) {
    return Links(
        patch: json['patch'] == null
            ? null
            : Patch.fromJson(json['patch'] as Map<String, Object?>),
        reddit: json['reddit'] == null
            ? null
            : Reddit.fromJson(json['reddit'] as Map<String, Object?>),
        flickr: json['flickr'] == null
            ? null
            : Flickr.fromJson(json['flickr'] as Map<String, Object?>),
        webcast: json['webcast'] == null ? null : json['webcast'] as String,
        youtubeId:
            json['youtube_id'] == null ? null : json['youtube_id'] as String,
        article: json['article'] == null ? null : json['article'] as String,
        wikipedia:
            json['wikipedia'] == null ? null : json['wikipedia'] as String);
  }

  @override
  String toString() {
    return '''Links(
                patch:${patch.toString()},
reddit:${reddit.toString()},
flickr:${flickr.toString()},
webcast:$webcast,
youtubeId:$youtubeId,
article:$article,
wikipedia:$wikipedia
    ) ''';
  }

  @override
  bool operator ==(Object other) {
    return other is Links &&
        other.runtimeType == runtimeType &&
        other.patch == patch &&
        other.reddit == reddit &&
        other.flickr == flickr &&
        other.webcast == webcast &&
        other.youtubeId == youtubeId &&
        other.article == article &&
        other.wikipedia == wikipedia;
  }

  @override
  int get hashCode {
    return Object.hash(runtimeType, patch, reddit, flickr, webcast, youtubeId,
        article, wikipedia);
  }
}

class Flickr {
  final List<dynamic>? small;
  final List<dynamic>? original;
  const Flickr({this.small, this.original});
  Flickr copyWith({List<dynamic>? small, List<dynamic>? original}) {
    return Flickr(
        small: small ?? this.small, original: original ?? this.original);
  }

  Map<String, Object?> toJson() {
    return {'small': small, 'original': original};
  }

  static Flickr fromJson(Map<String, Object?> json) {
    return Flickr(
        small: json['small'] == null ? null : json['small'] as List<dynamic>,
        original: json['original'] == null
            ? null
            : json['original'] as List<dynamic>);
  }

  @override
  String toString() {
    return '''Flickr(
                small:$small,
original:$original
    ) ''';
  }

  @override
  bool operator ==(Object other) {
    return other is Flickr &&
        other.runtimeType == runtimeType &&
        other.small == small &&
        other.original == original;
  }

  @override
  int get hashCode {
    return Object.hash(runtimeType, small, original);
  }
}

class Reddit {
  final String? campaign;
  final String? launch;
  final String? media;
  final String? recovery;
  const Reddit({this.campaign, this.launch, this.media, this.recovery});
  Reddit copyWith(
      {String? campaign, String? launch, String? media, String? recovery}) {
    return Reddit(
        campaign: campaign ?? this.campaign,
        launch: launch ?? this.launch,
        media: media ?? this.media,
        recovery: recovery ?? this.recovery);
  }

  Map<String, Object?> toJson() {
    return {
      'campaign': campaign,
      'launch': launch,
      'media': media,
      'recovery': recovery
    };
  }

  static Reddit fromJson(Map<String, Object?> json) {
    return Reddit(
        campaign: json['campaign'] == null ? null : json['campaign'] as String,
        launch: json['launch'] == null ? null : json['launch'] as String,
        media: json['media'] == null ? null : json['media'] as String,
        recovery: json['recovery'] == null ? null : json['recovery'] as String);
  }

  @override
  String toString() {
    return '''Reddit(
                campaign:$campaign,
launch:$launch,
media:$media,
recovery:$recovery
    ) ''';
  }

  @override
  bool operator ==(Object other) {
    return other is Reddit &&
        other.runtimeType == runtimeType &&
        other.campaign == campaign &&
        other.launch == launch &&
        other.media == media &&
        other.recovery == recovery;
  }

  @override
  int get hashCode {
    return Object.hash(runtimeType, campaign, launch, media, recovery);
  }
}

class Patch {
  final String? small;
  final String? large;
  const Patch({this.small, this.large});
  Patch copyWith({String? small, String? large}) {
    return Patch(small: small ?? this.small, large: large ?? this.large);
  }

  Map<String, Object?> toJson() {
    return {'small': small, 'large': large};
  }

  static Patch fromJson(Map<String, Object?> json) {
    return Patch(
        small: json['small'] == null ? null : json['small'] as String,
        large: json['large'] == null ? null : json['large'] as String);
  }

  @override
  String toString() {
    return '''Patch(
                small:$small,
large:$large
    ) ''';
  }

  @override
  bool operator ==(Object other) {
    return other is Patch &&
        other.runtimeType == runtimeType &&
        other.small == small &&
        other.large == large;
  }

  @override
  int get hashCode {
    return Object.hash(runtimeType, small, large);
  }
}

class Fairings {
  final bool? reused;
  final bool? recoveryAttempt;
  final bool? recovered;
  const Fairings({this.reused, this.recoveryAttempt, this.recovered});
  Fairings copyWith({bool? reused, bool? recoveryAttempt, bool? recovered}) {
    return Fairings(
        reused: reused ?? this.reused,
        recoveryAttempt: recoveryAttempt ?? this.recoveryAttempt,
        recovered: recovered ?? this.recovered);
  }

  Map<String, Object?> toJson() {
    return {
      'reused': reused,
      'recoveryAttempt': recoveryAttempt,
      'recovered': recovered
    };
  }

  static Fairings fromJson(Map<String, Object?> json) {
    return Fairings(
        reused: json['reused'] == null ? null : json['reused'] as bool,
        recoveryAttempt: json['recovery_attempt'] == null
            ? null
            : json['recovery_attempt'] as bool,
        recovered:
            json['recovered'] == null ? null : json['recovered'] as bool);
  }

  @override
  String toString() {
    return '''Fairings(
                reused:$reused,
recoveryAttempt:$recoveryAttempt,
recovered:$recovered
    ) ''';
  }

  @override
  bool operator ==(Object other) {
    return other is Fairings &&
        other.runtimeType == runtimeType &&
        other.reused == reused &&
        other.recoveryAttempt == recoveryAttempt &&
        other.recovered == recovered;
  }

  @override
  int get hashCode {
    return Object.hash(runtimeType, reused, recoveryAttempt, recovered);
  }
}
