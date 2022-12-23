import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/auth_util.dart';

LatLng getUserLocation(LatLng? userLocation) {
  if (userLocation == null ||
      (userLocation.latitude == 0 && userLocation.longitude == 0)) {
    return LatLng(13.7422141, 100.5562342);
  }
  return userLocation;
}

double distanceGeo(
  LatLng latlon1,
  LatLng latlon2,
) {
  double lat1 = latlon1.latitude;
  double lon1 = latlon1.longitude;
  double lat2 = latlon2.latitude;
  double lon2 = latlon2.longitude;
  var p = 0.017453292519943295;
  var c = math.cos;
  var a = 0.5 -
      c((lat2 - lat1) * p) / 2 +
      c(lat1 * p) * c(lat2 * p) * (1 - c((lon2 - lon1) * p)) / 2;
  // Returns distance in Kilo-meters
  var d = (12742 * math.asin(math.sqrt(a)));
  String inString = d.toStringAsFixed(2); // '2.35'
  double inDouble = double.parse(inString);
  return inDouble;
}

DateTimeRange? timeGapCalculation(
  DateTime? initialTime,
  DateTime? currentTime,
) {
  // get timestamp range between initial time and current time
  if (initialTime == null || currentTime == null) return null;
  if (initialTime.isAfter(currentTime)) {
    return DateTimeRange(
      start: currentTime,
      end: initialTime,
    );
  } else {
    return DateTimeRange(
      start: initialTime,
      end: currentTime,
    );
  }
}
