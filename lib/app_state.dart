import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'flutter_flow/lat_lng.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    secureStorage = FlutterSecureStorage();
    _strainType =
        await secureStorage.getStringList('ff_strainType') ?? _strainType;
    _StampCouponList =
        await secureStorage.getStringList('ff_StampCouponList') ??
            _StampCouponList;
  }

  late FlutterSecureStorage secureStorage;

  List<String> _strainType = ['Sativa', 'Indica', 'Hybrid'];
  List<String> get strainType => _strainType;
  set strainType(List<String> _value) {
    notifyListeners();
    _strainType = _value;
    secureStorage.setStringList('ff_strainType', _value);
  }

  void deleteStrainType() {
    notifyListeners();
    secureStorage.delete(key: 'ff_strainType');
  }

  void addToStrainType(String _value) {
    notifyListeners();
    _strainType.add(_value);
    secureStorage.setStringList('ff_strainType', _strainType);
  }

  void removeFromStrainType(String _value) {
    notifyListeners();
    _strainType.remove(_value);
    secureStorage.setStringList('ff_strainType', _strainType);
  }

  double _radius = 0.0;
  double get radius => _radius;
  set radius(double _value) {
    notifyListeners();
    _radius = _value;
  }

  String _searchKeyword = '';
  String get searchKeyword => _searchKeyword;
  set searchKeyword(String _value) {
    notifyListeners();
    _searchKeyword = _value;
  }

  bool _showListView = false;
  bool get showListView => _showListView;
  set showListView(bool _value) {
    notifyListeners();
    _showListView = _value;
  }

  bool _DarkMode = false;
  bool get DarkMode => _DarkMode;
  set DarkMode(bool _value) {
    notifyListeners();
    _DarkMode = _value;
  }

  bool _ChattingMode = false;
  bool get ChattingMode => _ChattingMode;
  set ChattingMode(bool _value) {
    notifyListeners();
    _ChattingMode = _value;
  }

  List<String> _StampCouponList = [];
  List<String> get StampCouponList => _StampCouponList;
  set StampCouponList(List<String> _value) {
    notifyListeners();
    _StampCouponList = _value;
    secureStorage.setStringList('ff_StampCouponList', _value);
  }

  void deleteStampCouponList() {
    notifyListeners();
    secureStorage.delete(key: 'ff_StampCouponList');
  }

  void addToStampCouponList(String _value) {
    notifyListeners();
    _StampCouponList.add(_value);
    secureStorage.setStringList('ff_StampCouponList', _StampCouponList);
  }

  void removeFromStampCouponList(String _value) {
    notifyListeners();
    _StampCouponList.remove(_value);
    secureStorage.setStringList('ff_StampCouponList', _StampCouponList);
  }

  String _strainByChip = '';
  String get strainByChip => _strainByChip;
  set strainByChip(String _value) {
    notifyListeners();
    _strainByChip = _value;
  }

  List<String> _favoriteStoreList = [];
  List<String> get favoriteStoreList => _favoriteStoreList;
  set favoriteStoreList(List<String> _value) {
    notifyListeners();
    _favoriteStoreList = _value;
  }

  void addToFavoriteStoreList(String _value) {
    notifyListeners();
    _favoriteStoreList.add(_value);
  }

  void removeFromFavoriteStoreList(String _value) {
    notifyListeners();
    _favoriteStoreList.remove(_value);
  }

  String _QRScanResult = '';
  String get QRScanResult => _QRScanResult;
  set QRScanResult(String _value) {
    notifyListeners();
    _QRScanResult = _value;
  }

  int _stampCount = 0;
  int get stampCount => _stampCount;
  set stampCount(int _value) {
    notifyListeners();
    _stampCount = _value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  void remove(String key) => delete(key: key);

  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await write(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await write(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await write(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await write(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await write(key: key, value: ListToCsvConverter().convert([value]));
}
