import 'package:cosmosense/src/utils/palette.dart';
import 'package:flutter/material.dart' show Color;

class Planet {
  final String name;
  final String image;
  final String history;
  final Color color;
  final Map<String, dynamic> details;

  Planet({
    required this.details,
    required this.name,
    required this.color,
    required this.image,
    required this.history,
  });
}

final planets = [
  Planet(
    image: "assets/images/mars.png",
    name: "MARS",
    color: Palette.mars,
    history:
        "Mars has been known to humans for thousands of years; it was observed alongside other planets with the naked eye from ancient times. It was long thought to be richly inhabited with intelligent life forms until 1877 when an Italian astronomer named Giovanni Schiaparelli noted canals on Mars which led some to suggest certain intelligent beings were responsible for them — this was later disproven and the canals were revealed to be an optical illusion. In 1965 NASA's Mariner 4 probe made history by becoming the first successful mission to send pictures back from another planet — showing just how barren Mars actually is!",
    details: details.firstWhere(
        (details) => details['name'].toString().toUpperCase() == "MARS"),
  ),
  Planet(
    image: "assets/images/jupiter.png",
    color: Palette.jupiter,
    name: "JUPITER",
    history:
        "Jupiter has been known since ancient times; it's one of five bright planets visible in the night sky without a telescope. The Greeks dubbed it Zeus after their chief god while others referred to it as Jove or Jovepiter because they believed it was their own version of Jupiter, Roman god of lightning and thunder. In 1610 Galileo famously became one observation telescopic objects in deep space when he noticed 4 large moons revolving around Jupiter - now known as Io , Europa, Ganymede & Callisto — confirming his belief that not all celestial objects revolve around Earth . ",
    details: details.firstWhere(
        (details) => details['name'].toString().toUpperCase() == "JUPITER"),
  ),
  Planet(
    image: "assets/images/earth.png",
    name: "EARTH",
    color: Palette.earth,
    history:
        "Earth is the third planet from the Sun and the only planet known to harbor life. It is the largest of the terrestrial planets and the only planet in our solar system not to be named after a Greek or Roman deity. Earth formed around 4.54 billion years ago and is the densest planet in the Solar System. It is the fifth largest of the Solar System's planets, with a mass of about 5.97 × 10^24 kg, and about 81% of Earth's volume is covered with water. Earth's gravity interacts with other objects in space, especially the Sun and the Moon, Earth's only natural satellite. Earth orbits around the Sun in 365.26 days, a period known as an Earth year. During this time, Earth rotates about its axis about 366.26 times.",
    details: details.firstWhere(
        (details) => details['name'].toString().toUpperCase() == "EARTH"),
  ),
  Planet(
    image: "assets/images/venus.png",
    name: "VENUS",
    color: Palette.venus,
    history:
        "Venus is Earth’s closest planetary neighbor and sometimes called “Earth’s Twin Sister” due to their similar sizes. While Earth's atmosphere consists mostly of nitrogen and oxygen, Venus' atmosphere is composed mostly of carbon dioxide and sulfuric acid. During the 1990s, scientists believe that Venus could have had liquid water on its surface before an intense greenhouse effect created by its dense atmosphere boiled away all traces of it.",
    details: details.firstWhere(
        (details) => details['name'].toString().toUpperCase() == "VENUS"),
  ),
  Planet(
    image: "assets/images/earth_moon.png",
    name: "MOON",
    color: Palette.moon,
    history:
        "The Moon is the only natural satellite of Earth, and it has held a special fascination for mankind since prehistoric times. It is the second-brightest visible celestial object in Earth's night sky after the Sun—although some planets and stars are brighter—and sometimes appears reddish when observed during eclipses. The Moon was likely formed nearly 4.5 billion years ago, not long after Earth. Its gravitational influence produces tides on Earth, while its regular cycle of phases has helped to define calendars, providing humans with a sense of time and seasonal change.  The full moon is associated with nighttime races, romantic trysts, and other nocturnal events that have inspired countless myths and legends throughout history",
    details: details.firstWhere(
        (details) => details['name'].toString().toUpperCase() == "MOON"),
  ),
  Planet(
    image: "assets/images/mercury.png",
    name: "MERCURY",
    color: Palette.mercury,
    history:
        "Mercury is the smallest and innermost planet in the Solar System. It was the first planet to be visited by a spacecraft, Mariner 10, which flew past it three times between 1974 and 1975. One of its most interesting features is that it has almost no atmosphere – instead, its surface is heavily cratered like the Moon. In addition, since Mercury has a slow rotation period of 59 days, one day on Mercury is as long as two of its years.",
    details: details.firstWhere(
        (details) => details['name'].toString().toUpperCase() == "MERCURY"),
  ),
  Planet(
    image: "assets/images/uranus.png",
    name: "URANUS",
    color: Palette.uranus,
    history:
        " Uranus holds claim to being the seventh planet discovered going outward from our Sun but ironically enough ,all other planets beyond Earth had already been documented observably since ancient times sans Uranus', discovery nearly four centuries ago in 1781by German-born British astronomer named Wilhelm Herschel .Oddly steady every 84 years rivaling Neptune’s orbital pattern at 165 terrestrial years , Uranus also showcases two regions consisting both axial tilt and rotation making substantially distant from any neighboring celestial body from within system (besides Pluto) enchaining offbeat seasonal changes throughout unpredictable climate cycles shared archaically between east-west hemisphereal orientation rotations",
    details: details.firstWhere(
        (details) => details['name'].toString().toUpperCase() == "URANUS"),
  ),
  Planet(
    image: "assets/images/neptune.png",
    name: "NEPTUNE",
    color: Palette.neptune,
    history:
        "Neptune is seemingly quite aloof compared to most other planets boasting lukewarm temperatures measurably falling far below freezing levels despite sourcing heat largely generated organically through what would seem an unusual possible nuclear fusion process releasing immense pressure via external manipulation control clouds parting either northern/ southern polar locations exposing degrees per se relative regional zones substantially marked primarily warm equatorial belts orienting otherwise exterior radially cold far outreaching collars radiating temperatures comparable solidary lands within icy cradle bracing vast atmospheric swirls streaming mere yards away via metropolitan meteorology monitored closely yet cautiously beyond reach man excursions thus humbly serving tenfold patient witness opportunities respectively reflecting souls must admittedly humble wisdom coexistence eternally brought forth dynamically somewhat diversified yet forever reassuring universal peace never forsaking nature presence undoubtedly rewarding afforded gravity lasting longevity interpreted spiritually reflection prior beginning beginnings",
    details: details.firstWhere(
        (details) => details['name'].toString().toUpperCase() == "NEPTUNE"),
  ),
  Planet(
    image: "assets/images/saturn.png",
    name: "SATURN",
    color: Palette.saturn,
    history:
        "Saturn has been renowned throughout history for its amazing rings - discovered in 1610 by Galileo Galilei—and is still often referred to as 'The Lord of Kings.' The Roman god Saturnus was associated with abundance, agriculture and harvest periods so this planetary distinction naturally lent itself well in early literature where Saturn became linked with such benevolent characteristics . It wasn't until 1895 that American astronomer Asaph Hall realized this giant gas giant was encircled by a belt composed mostly of chunks ice & dirt - leading him dubbing them 'dark-rings' - soon replaced by modern nomenclature which we now know as Saturn's ‘rings’ ",
    details: details.firstWhere(
        (details) => details['name'].toString().toUpperCase() == "SATURN"),
  ),
];

final List<Map<String, dynamic>> details = [
  {
    "name": "Mercury",
    "nickname": "SWIFT PLANET",
    "mass": "3.30 x 10^23 kg",
    "diameter": "4,879 km",
    "distance_from_sun": "57.91 million km",
    "number_of_moons": "0",
    "weather": {
      "temperature": "330-730°K",
      "atmosphere": "thin, composed primarily of helium and sodium",
      "wind_speed": "unknown"
    }
  },
  {
    "name": "Uranus",
    "nickname": "ICE GIANT",
    "mass": "4.87 x 10^24 kg",
    "diameter": "12,104 km",
    "distance_from_sun": "108.2 million km",
    "number_of_moons": "0",
    "weather": {
      "temperature": "730°K",
      "atmosphere": "thick, composed primarily of carbon dioxide and nitrogen",
      "wind_speed": "unknown"
    }
  },
  {
    "name": "Venus",
    "nickname": "MORNING STAR",
    "mass": "4.87 x 10^24 kg",
    "diameter": "12,104 km",
    "distance_from_sun": "108.2 million km",
    "number_of_moons": "0",
    "weather": {
      "temperature": "730°K",
      "atmosphere": "thick, composed primarily of carbon dioxide and nitrogen",
      "wind_speed": "unknown"
    }
  },
  {
    "name": "Moon",
    "nickname": "DEEPBLOW",
    "mass": "4.87 x 10^24 kg",
    "diameter": "12,104 km",
    "distance_from_sun": "108.2 million km",
    "number_of_moons": "0",
    "weather": {
      "temperature": "730°K",
      "atmosphere": "thick, composed primarily of carbon dioxide and nitrogen",
      "wind_speed": "unknown"
    }
  },
  {
    "name": "Earth",
    "nickname": "BLUE PLANET",
    "mass": "5.97 x 10^24 kg",
    "diameter": "12,742 km",
    "distance_from_sun": "149.6 million km",
    "number_of_moons": "1",
    "weather": {
      "temperature": "290-310°K",
      "atmosphere": "composed primarily of nitrogen and oxygen",
      "wind_speed": "varies"
    }
  },
  {
    "name": "Neptune",
    "nickname": "BIG BLUE PLANET",
    "mass": "4.87 x 10^24 kg",
    "diameter": "12,104 km",
    "distance_from_sun": "108.2 million km",
    "number_of_moons": "0",
    "weather": {
      "temperature": "730°K",
      "atmosphere": "thick, composed primarily of carbon dioxide and nitrogen",
      "wind_speed": "unknown"
    }
  },
  {
    "name": "Mars",
    "nickname": "RED PLANET",
    "mass": "6.42 x 10^23 kg",
    "diameter": "6,779 km",
    "distance_from_sun": "227.9 million km",
    "number_of_moons": "2",
    "weather": {
      "temperature": "210-350°K",
      "atmosphere": "thin, composed primarily of carbon dioxide",
      "wind_speed": "varies"
    }
  },
  {
    "name": "Jupiter",
    "nickname": "GIANT PLANET",
    "mass": "1.90 x 10^27 kg",
    "diameter": "139,822 km",
    "distance_from_sun": "778.5 million km",
    "number_of_moons": "79",
    "weather": {
      "temperature": "50-150°K",
      "atmosphere": "composed primarily of hydrogen and helium",
      "wind_speed": "unknown"
    }
  },
  {
    "name": "Saturn",
    "nickname": "RINGED PLANET",
    "mass": "5.68 x 10^26 kg",
    "diameter": "116,460 km",
    "distance_from_sun": "1.4 billion km",
    "number_of_moons": "82",
    "weather": {
      "temperature": "50-150°K",
      "atmosphere": "composed primarily of hydrogen and helium",
      "wind_speed": "unknown"
    }
  }
];
