import 'package:shared_preferences/shared_preferences.dart';

class NilaiLatihan {
  Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  Future getNilai(String key) async {
    final SharedPreferences local = await _prefs;
    final int score = local.getInt(key) ?? 0;
    return score;
  }

  Future setNilai(String key, int nilai) async {
    final SharedPreferences prefs = await _prefs;
    var status = await prefs.setInt(key, nilai);
    return status;
  }
}
