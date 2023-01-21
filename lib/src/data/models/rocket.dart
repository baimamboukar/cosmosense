class Rocket {
  Height? height;
  Diameter? diameter;
  Mass? mass;
  FirstStage? firstStage;
  SecondStage? secondStage;
  Engines? engines;
  LandingLegs? landingLegs;
  List<PayloadWeights>? payloadWeights;
  List<String>? flickrImages;
  String? name;
  String? type;
  bool? active;
  int? stages;
  int? boosters;
  int? costPerLaunch;
  int? successRatePct;
  String? firstFlight;
  String? country;
  String? company;
  String? wikipedia;
  String? description;
  String? id;

  Rocket(
      {this.height,
      this.diameter,
      this.mass,
      this.firstStage,
      this.secondStage,
      this.engines,
      this.landingLegs,
      this.payloadWeights,
      this.flickrImages,
      this.name,
      this.type,
      this.active,
      this.stages,
      this.boosters,
      this.costPerLaunch,
      this.successRatePct,
      this.firstFlight,
      this.country,
      this.company,
      this.wikipedia,
      this.description,
      this.id});

  Rocket.fromJson(Map<String, dynamic> json) {
    height = json["height"] == null ? null : Height.fromJson(json["height"]);
    diameter =
        json["diameter"] == null ? null : Diameter.fromJson(json["diameter"]);
    mass = json["mass"] == null ? null : Mass.fromJson(json["mass"]);
    firstStage = json["first_stage"] == null
        ? null
        : FirstStage.fromJson(json["first_stage"]);
    secondStage = json["second_stage"] == null
        ? null
        : SecondStage.fromJson(json["second_stage"]);
    engines =
        json["engines"] == null ? null : Engines.fromJson(json["engines"]);
    landingLegs = json["landing_legs"] == null
        ? null
        : LandingLegs.fromJson(json["landing_legs"]);
    payloadWeights = json["payload_weights"] == null
        ? null
        : (json["payload_weights"] as List)
            .map((e) => PayloadWeights.fromJson(e))
            .toList();
    flickrImages = json["flickr_images"] == null
        ? null
        : List<String>.from(json["flickr_images"]);
    name = json["name"];
    type = json["type"];
    active = json["active"];
    stages = json["stages"];
    boosters = json["boosters"];
    costPerLaunch = json["cost_per_launch"];
    successRatePct = json["success_rate_pct"];
    firstFlight = json["first_flight"];
    country = json["country"];
    company = json["company"];
    wikipedia = json["wikipedia"];
    description = json["description"];
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (height != null) {
      data["height"] = height?.toJson();
    }
    if (diameter != null) {
      data["diameter"] = diameter?.toJson();
    }
    if (mass != null) {
      data["mass"] = mass?.toJson();
    }
    if (firstStage != null) {
      data["first_stage"] = firstStage?.toJson();
    }
    if (secondStage != null) {
      data["second_stage"] = secondStage?.toJson();
    }
    if (engines != null) {
      data["engines"] = engines?.toJson();
    }
    if (landingLegs != null) {
      data["landing_legs"] = landingLegs?.toJson();
    }
    if (payloadWeights != null) {
      data["payload_weights"] = payloadWeights?.map((e) => e.toJson()).toList();
    }
    if (flickrImages != null) {
      data["flickr_images"] = flickrImages;
    }
    data["name"] = name;
    data["type"] = type;
    data["active"] = active;
    data["stages"] = stages;
    data["boosters"] = boosters;
    data["cost_per_launch"] = costPerLaunch;
    data["success_rate_pct"] = successRatePct;
    data["first_flight"] = firstFlight;
    data["country"] = country;
    data["company"] = company;
    data["wikipedia"] = wikipedia;
    data["description"] = description;
    data["id"] = id;
    return data;
  }
}

class PayloadWeights {
  String? id;
  String? name;
  int? kg;
  int? lb;

  PayloadWeights({this.id, this.name, this.kg, this.lb});

  PayloadWeights.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    name = json["name"];
    kg = json["kg"];
    lb = json["lb"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["id"] = id;
    data["name"] = name;
    data["kg"] = kg;
    data["lb"] = lb;
    return data;
  }
}

class LandingLegs {
  int? number;
  dynamic material;

  LandingLegs({this.number, this.material});

  LandingLegs.fromJson(Map<String, dynamic> json) {
    number = json["number"];
    material = json["material"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["number"] = number;
    data["material"] = material;
    return data;
  }
}

class Engines {
  Isp? isp;
  ThrustSeaLevel1? thrustSeaLevel;
  ThrustVacuum1? thrustVacuum;
  int? number;
  String? type;
  String? version;
  String? layout;
  int? engineLossMax;
  String? propellant1;
  String? propellant2;
  int? thrustToWeight;

  Engines(
      {this.isp,
      this.thrustSeaLevel,
      this.thrustVacuum,
      this.number,
      this.type,
      this.version,
      this.layout,
      this.engineLossMax,
      this.propellant1,
      this.propellant2,
      this.thrustToWeight});

  Engines.fromJson(Map<String, dynamic> json) {
    isp = json["isp"] == null ? null : Isp.fromJson(json["isp"]);
    thrustSeaLevel = json["thrust_sea_level"] == null
        ? null
        : ThrustSeaLevel1.fromJson(json["thrust_sea_level"]);
    thrustVacuum = json["thrust_vacuum"] == null
        ? null
        : ThrustVacuum1.fromJson(json["thrust_vacuum"]);
    number = json["number"];
    type = json["type"];
    version = json["version"];
    layout = json["layout"];
    engineLossMax = json["engine_loss_max"];
    propellant1 = json["propellant_1"];
    propellant2 = json["propellant_2"];
    thrustToWeight = json["thrust_to_weight"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (isp != null) {
      data["isp"] = isp?.toJson();
    }
    if (thrustSeaLevel != null) {
      data["thrust_sea_level"] = thrustSeaLevel?.toJson();
    }
    if (thrustVacuum != null) {
      data["thrust_vacuum"] = thrustVacuum?.toJson();
    }
    data["number"] = number;
    data["type"] = type;
    data["version"] = version;
    data["layout"] = layout;
    data["engine_loss_max"] = engineLossMax;
    data["propellant_1"] = propellant1;
    data["propellant_2"] = propellant2;
    data["thrust_to_weight"] = thrustToWeight;
    return data;
  }
}

class ThrustVacuum1 {
  int? kN;
  int? lbf;

  ThrustVacuum1({this.kN, this.lbf});

  ThrustVacuum1.fromJson(Map<String, dynamic> json) {
    kN = json["kN"];
    lbf = json["lbf"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["kN"] = kN;
    data["lbf"] = lbf;
    return data;
  }
}

class ThrustSeaLevel1 {
  int? kN;
  int? lbf;

  ThrustSeaLevel1({this.kN, this.lbf});

  ThrustSeaLevel1.fromJson(Map<String, dynamic> json) {
    kN = json["kN"];
    lbf = json["lbf"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["kN"] = kN;
    data["lbf"] = lbf;
    return data;
  }
}

class Isp {
  int? seaLevel;
  int? vacuum;

  Isp({this.seaLevel, this.vacuum});

  Isp.fromJson(Map<String, dynamic> json) {
    seaLevel = json["sea_level"];
    vacuum = json["vacuum"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["sea_level"] = seaLevel;
    data["vacuum"] = vacuum;
    return data;
  }
}

class SecondStage {
  Thrust? thrust;
  Payloads? payloads;
  bool? reusable;
  int? engines;
  double? fuelAmountTons;
  int? burnTimeSec;

  SecondStage(
      {this.thrust,
      this.payloads,
      this.reusable,
      this.engines,
      this.fuelAmountTons,
      this.burnTimeSec});

  SecondStage.fromJson(Map<String, dynamic> json) {
    thrust = json["thrust"] == null ? null : Thrust.fromJson(json["thrust"]);
    payloads =
        json["payloads"] == null ? null : Payloads.fromJson(json["payloads"]);
    reusable = json["reusable"];
    engines = json["engines"];
    fuelAmountTons = json["fuel_amount_tons"];
    burnTimeSec = json["burn_time_sec"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (thrust != null) {
      data["thrust"] = thrust?.toJson();
    }
    if (payloads != null) {
      data["payloads"] = payloads?.toJson();
    }
    data["reusable"] = reusable;
    data["engines"] = engines;
    data["fuel_amount_tons"] = fuelAmountTons;
    data["burn_time_sec"] = burnTimeSec;
    return data;
  }
}

class Payloads {
  CompositeFairing? compositeFairing;
  String? option1;

  Payloads({this.compositeFairing, this.option1});

  Payloads.fromJson(Map<String, dynamic> json) {
    compositeFairing = json["composite_fairing"] == null
        ? null
        : CompositeFairing.fromJson(json["composite_fairing"]);
    option1 = json["option_1"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (compositeFairing != null) {
      data["composite_fairing"] = compositeFairing?.toJson();
    }
    data["option_1"] = option1;
    return data;
  }
}

class CompositeFairing {
  Height1? height;
  Diameter1? diameter;

  CompositeFairing({this.height, this.diameter});

  CompositeFairing.fromJson(Map<String, dynamic> json) {
    height = json["height"] == null ? null : Height1.fromJson(json["height"]);
    diameter =
        json["diameter"] == null ? null : Diameter1.fromJson(json["diameter"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (height != null) {
      data["height"] = height?.toJson();
    }
    if (diameter != null) {
      data["diameter"] = diameter?.toJson();
    }
    return data;
  }
}

class Diameter1 {
  double? meters;
  double? feet;

  Diameter1({this.meters, this.feet});

  Diameter1.fromJson(Map<String, dynamic> json) {
    meters = json["meters"];
    feet = json["feet"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["meters"] = meters;
    data["feet"] = feet;
    return data;
  }
}

class Height1 {
  double? meters;
  double? feet;

  Height1({this.meters, this.feet});

  Height1.fromJson(Map<String, dynamic> json) {
    meters = json["meters"];
    feet = json["feet"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["meters"] = meters;
    data["feet"] = feet;
    return data;
  }
}

class Thrust {
  int? kN;
  int? lbf;

  Thrust({this.kN, this.lbf});

  Thrust.fromJson(Map<String, dynamic> json) {
    kN = json["kN"];
    lbf = json["lbf"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["kN"] = kN;
    data["lbf"] = lbf;
    return data;
  }
}

class FirstStage {
  ThrustSeaLevel? thrustSeaLevel;
  ThrustVacuum? thrustVacuum;
  bool? reusable;
  int? engines;
  double? fuelAmountTons;
  int? burnTimeSec;

  FirstStage(
      {this.thrustSeaLevel,
      this.thrustVacuum,
      this.reusable,
      this.engines,
      this.fuelAmountTons,
      this.burnTimeSec});

  FirstStage.fromJson(Map<String, dynamic> json) {
    thrustSeaLevel = json["thrust_sea_level"] == null
        ? null
        : ThrustSeaLevel.fromJson(json["thrust_sea_level"]);
    thrustVacuum = json["thrust_vacuum"] == null
        ? null
        : ThrustVacuum.fromJson(json["thrust_vacuum"]);
    reusable = json["reusable"];
    engines = json["engines"];
    fuelAmountTons = json["fuel_amount_tons"];
    burnTimeSec = json["burn_time_sec"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (thrustSeaLevel != null) {
      data["thrust_sea_level"] = thrustSeaLevel?.toJson();
    }
    if (thrustVacuum != null) {
      data["thrust_vacuum"] = thrustVacuum?.toJson();
    }
    data["reusable"] = reusable;
    data["engines"] = engines;
    data["fuel_amount_tons"] = fuelAmountTons;
    data["burn_time_sec"] = burnTimeSec;
    return data;
  }
}

class ThrustVacuum {
  int? kN;
  int? lbf;

  ThrustVacuum({this.kN, this.lbf});

  ThrustVacuum.fromJson(Map<String, dynamic> json) {
    kN = json["kN"];
    lbf = json["lbf"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["kN"] = kN;
    data["lbf"] = lbf;
    return data;
  }
}

class ThrustSeaLevel {
  int? kN;
  int? lbf;

  ThrustSeaLevel({this.kN, this.lbf});

  ThrustSeaLevel.fromJson(Map<String, dynamic> json) {
    kN = json["kN"];
    lbf = json["lbf"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["kN"] = kN;
    data["lbf"] = lbf;
    return data;
  }
}

class Mass {
  int? kg;
  int? lb;

  Mass({this.kg, this.lb});

  Mass.fromJson(Map<String, dynamic> json) {
    kg = json["kg"];
    lb = json["lb"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["kg"] = kg;
    data["lb"] = lb;
    return data;
  }
}

class Diameter {
  double? meters;
  double? feet;

  Diameter({this.meters, this.feet});

  Diameter.fromJson(Map<String, dynamic> json) {
    meters = json["meters"];
    feet = json["feet"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["meters"] = meters;
    data["feet"] = feet;
    return data;
  }
}

class Height {
  double? meters;
  int? feet;

  Height({this.meters, this.feet});

  Height.fromJson(Map<String, dynamic> json) {
    meters = json["meters"] as double;
    feet = json["feet"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["meters"] = meters;
    data["feet"] = feet;
    return data;
  }
}
