class SpaceXlaunch {
  final Fairings? fairings;
  final Links? links;
  final String? staticFireDateUtc;
  final int? staticFireDateUnix;
  final String? rocket;
  final bool? success;
  final List<Failures>? failures;
  final String? details;
  final List<String>? payloads;
  final String? launchpad;
  final int? flightNumber;
  final String? name;
  final String? dateLocal;
  final bool? upcoming;
  final List<Cores>? cores;
  final bool? autoUpdate;
  const SpaceXlaunch(
      {this.fairings,
      this.links,
      this.staticFireDateUtc,
      this.staticFireDateUnix,
      this.rocket,
      this.success,
      this.failures,
      this.details,
      this.payloads,
      this.launchpad,
      this.flightNumber,
      this.name,
      this.dateLocal,
      this.upcoming,
      this.cores,
      this.autoUpdate});
  SpaceXlaunch copyWith(
      {Fairings? fairings,
      Links? links,
      String? staticFireDateUtc,
      int? staticFireDateUnix,
      String? rocket,
      bool? success,
      List<Failures>? failures,
      String? details,
      List<String>? payloads,
      String? launchpad,
      int? flightNumber,
      String? name,
      String? dateLocal,
      bool? upcoming,
      List<Cores>? cores,
      bool? autoUpdate}) {
    return SpaceXlaunch(
        fairings: fairings ?? this.fairings,
        links: links ?? this.links,
        staticFireDateUtc: staticFireDateUtc ?? this.staticFireDateUtc,
        staticFireDateUnix: staticFireDateUnix ?? this.staticFireDateUnix,
        rocket: rocket ?? this.rocket,
        success: success ?? this.success,
        failures: failures ?? this.failures,
        details: details ?? this.details,
        payloads: payloads ?? this.payloads,
        launchpad: launchpad ?? this.launchpad,
        flightNumber: flightNumber ?? this.flightNumber,
        name: name ?? this.name,
        dateLocal: dateLocal ?? this.dateLocal,
        upcoming: upcoming ?? this.upcoming,
        cores: cores ?? this.cores,
        autoUpdate: autoUpdate ?? this.autoUpdate);
  }

  Map<String, Object?> toJson() {
    return {
      'fairings': fairings?.toJson(),
      'links': links?.toJson(),
      'staticFireDateUtc': staticFireDateUtc,
      'staticFireDateUnix': staticFireDateUnix,
      'rocket': rocket,
      'success': success,
      'failures':
          failures?.map<Map<String, dynamic>>((data) => data.toJson()).toList(),
      'details': details,
      'payloads': payloads,
      'launchpad': launchpad,
      'flightNumber': flightNumber,
      'name': name,
      'dateLocal': dateLocal,
      'upcoming': upcoming,
      'cores':
          cores?.map<Map<String, dynamic>>((data) => data.toJson()).toList(),
      'autoUpdate': autoUpdate
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
        staticFireDateUtc: json['staticFireDateUtc'] == null
            ? null
            : json['staticFireDateUtc'] as String,
        staticFireDateUnix: json['staticFireDateUnix'] == null
            ? null
            : json['staticFireDateUnix'] as int,
        rocket: json['rocket'] == null ? null : json['rocket'] as String,
        success: json['success'] == null ? null : json['success'] as bool,
        failures: json['failures'] == null
            ? null
            : (json['failures'] as List)
                .map<Failures>(
                    (data) => Failures.fromJson(data as Map<String, Object?>))
                .toList(),
        details: json['details'] == null ? null : json['details'] as String,
        payloads:
            json['payloads'] == null ? null : json['payloads'] as List<String>,
        launchpad:
            json['launchpad'] == null ? null : json['launchpad'] as String,
        flightNumber:
            json['flightNumber'] == null ? null : json['flightNumber'] as int,
        name: json['name'] == null ? null : json['name'] as String,
        dateLocal:
            json['dateLocal'] == null ? null : json['dateLocal'] as String,
        upcoming: json['upcoming'] == null ? null : json['upcoming'] as bool,
        cores: json['cores'] == null
            ? null
            : (json['cores'] as List)
                .map<Cores>(
                    (data) => Cores.fromJson(data as Map<String, Object?>))
                .toList(),
        autoUpdate:
            json['autoUpdate'] == null ? null : json['autoUpdate'] as bool);
  }

  @override
  String toString() {
    return '''SpaceXlaunch(
                fairings:${fairings.toString()},
links:${links.toString()},
staticFireDateUtc:$staticFireDateUtc,
staticFireDateUnix:$staticFireDateUnix,
rocket:$rocket,
success:$success,
failures:${failures.toString()},
details:$details,
payloads:$payloads,
launchpad:$launchpad,
flightNumber:$flightNumber,
name:$name,
dateLocal:$dateLocal,
upcoming:$upcoming,
cores:${cores.toString()},
autoUpdate:$autoUpdate
    ) ''';
  }

  @override
  bool operator ==(Object other) {
    return other is SpaceXlaunch &&
        other.runtimeType == runtimeType &&
        other.fairings == fairings &&
        other.links == links &&
        other.staticFireDateUtc == staticFireDateUtc &&
        other.staticFireDateUnix == staticFireDateUnix &&
        other.rocket == rocket &&
        other.success == success &&
        other.failures == failures &&
        other.details == details &&
        other.payloads == payloads &&
        other.launchpad == launchpad &&
        other.flightNumber == flightNumber &&
        other.name == name &&
        other.dateLocal == dateLocal &&
        other.upcoming == upcoming &&
        other.cores == cores &&
        other.autoUpdate == autoUpdate;
  }

  @override
  int get hashCode {
    return Object.hash(
        runtimeType,
        fairings,
        links,
        staticFireDateUtc,
        staticFireDateUnix,
        rocket,
        success,
        failures,
        details,
        payloads,
        launchpad,
        flightNumber,
        name,
        dateLocal,
        upcoming,
        cores,
        autoUpdate);
  }
}

class Cores {
  final String? core;
  final int? flight;
  final bool? gridfins;
  final bool? legs;
  final bool? reused;
  final bool? landingAttempt;
  final dynamic landingSuccess;
  final dynamic landingType;
  final dynamic landpad;
  const Cores(
      {this.core,
      this.flight,
      this.gridfins,
      this.legs,
      this.reused,
      this.landingAttempt,
      this.landingSuccess,
      this.landingType,
      this.landpad});
  Cores copyWith(
      {String? core,
      int? flight,
      bool? gridfins,
      bool? legs,
      bool? reused,
      bool? landingAttempt,
      dynamic? landingSuccess,
      dynamic? landingType,
      dynamic? landpad}) {
    return Cores(
        core: core ?? this.core,
        flight: flight ?? this.flight,
        gridfins: gridfins ?? this.gridfins,
        legs: legs ?? this.legs,
        reused: reused ?? this.reused,
        landingAttempt: landingAttempt ?? this.landingAttempt,
        landingSuccess: landingSuccess ?? this.landingSuccess,
        landingType: landingType ?? this.landingType,
        landpad: landpad ?? this.landpad);
  }

  Map<String, Object?> toJson() {
    return {
      'core': core,
      'flight': flight,
      'gridfins': gridfins,
      'legs': legs,
      'reused': reused,
      'landingAttempt': landingAttempt,
      'landingSuccess': landingSuccess,
      'landingType': landingType,
      'landpad': landpad
    };
  }

  static Cores fromJson(Map<String, Object?> json) {
    return Cores(
        core: json['core'] == null ? null : json['core'] as String,
        flight: json['flight'] == null ? null : json['flight'] as int,
        gridfins: json['gridfins'] == null ? null : json['gridfins'] as bool,
        legs: json['legs'] == null ? null : json['legs'] as bool,
        reused: json['reused'] == null ? null : json['reused'] as bool,
        landingAttempt: json['landingAttempt'] == null
            ? null
            : json['landingAttempt'] as bool,
        landingSuccess: json['landingSuccess'] as dynamic,
        landingType: json['landingType'] as dynamic,
        landpad: json['landpad'] as dynamic);
  }

  @override
  String toString() {
    return '''Cores(
                core:$core,
flight:$flight,
gridfins:$gridfins,
legs:$legs,
reused:$reused,
landingAttempt:$landingAttempt,
landingSuccess:$landingSuccess,
landingType:$landingType,
landpad:$landpad
    ) ''';
  }

  @override
  bool operator ==(Object other) {
    return other is Cores &&
        other.runtimeType == runtimeType &&
        other.core == core &&
        other.flight == flight &&
        other.gridfins == gridfins &&
        other.legs == legs &&
        other.reused == reused &&
        other.landingAttempt == landingAttempt &&
        other.landingSuccess == landingSuccess &&
        other.landingType == landingType &&
        other.landpad == landpad;
  }

  @override
  int get hashCode {
    return Object.hash(runtimeType, core, flight, gridfins, legs, reused,
        landingAttempt, landingSuccess, landingType, landpad);
  }
}

class Failures {
  final int? time;
  final dynamic altitude;
  final String? reason;
  const Failures({this.time, this.altitude, this.reason});
  Failures copyWith({int? time, dynamic? altitude, String? reason}) {
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
  final dynamic presskit;
  final String? webcast;
  final String? youtubeId;
  final String? article;
  final String? wikipedia;
  const Links(
      {this.patch,
      this.reddit,
      this.flickr,
      this.presskit,
      this.webcast,
      this.youtubeId,
      this.article,
      this.wikipedia});
  Links copyWith(
      {Patch? patch,
      Reddit? reddit,
      Flickr? flickr,
      dynamic? presskit,
      String? webcast,
      String? youtubeId,
      String? article,
      String? wikipedia}) {
    return Links(
        patch: patch ?? this.patch,
        reddit: reddit ?? this.reddit,
        flickr: flickr ?? this.flickr,
        presskit: presskit ?? this.presskit,
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
      'presskit': presskit,
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
        presskit: json['presskit'] as dynamic,
        webcast: json['webcast'] == null ? null : json['webcast'] as String,
        youtubeId:
            json['youtubeId'] == null ? null : json['youtubeId'] as String,
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
presskit:$presskit,
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
        other.presskit == presskit &&
        other.webcast == webcast &&
        other.youtubeId == youtubeId &&
        other.article == article &&
        other.wikipedia == wikipedia;
  }

  @override
  int get hashCode {
    return Object.hash(runtimeType, patch, reddit, flickr, presskit, webcast,
        youtubeId, article, wikipedia);
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
  final dynamic campaign;
  final dynamic launch;
  final dynamic media;
  final dynamic recovery;
  const Reddit({this.campaign, this.launch, this.media, this.recovery});
  Reddit copyWith(
      {dynamic? campaign, dynamic? launch, dynamic? media, dynamic? recovery}) {
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
        campaign: json['campaign'] as dynamic,
        launch: json['launch'] as dynamic,
        media: json['media'] as dynamic,
        recovery: json['recovery'] as dynamic);
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
        recoveryAttempt: json['recoveryAttempt'] == null
            ? null
            : json['recoveryAttempt'] as bool,
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
