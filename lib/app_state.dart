import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _Position =
        prefs.getStringList('ff_Position')?.map(_latLngFromString).toList() ??
            _Position;
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<LatLng> _Position = [
    LatLng(50.4501, 30.5234),
    LatLng(40.7127753, -74.0059728)
  ];
  List<LatLng> get Position => _Position;
  set Position(List<LatLng> _value) {
    _Position = _value;
    prefs.setStringList(
        'ff_Position', _value.map((x) => x.serialize()).toList());
  }

  void addToPosition(LatLng _value) {
    _Position.add(_value);
    prefs.setStringList(
        'ff_Position', _Position.map((x) => x.serialize()).toList());
  }

  void removeFromPosition(LatLng _value) {
    _Position.remove(_value);
    prefs.setStringList(
        'ff_Position', _Position.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromPosition(int _index) {
    _Position.removeAt(_index);
    prefs.setStringList(
        'ff_Position', _Position.map((x) => x.serialize()).toList());
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
