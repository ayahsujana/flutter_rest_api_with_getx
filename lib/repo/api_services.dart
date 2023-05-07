import 'package:http/http.dart' as http;
import '../model/detail_model.dart';
import '../model/latest_model.dart';
import '../network/api.dart';

class ApiServices {

  Future<List<Videos>> getHome() async {
    try {
      final res = await http.get(Uri.parse(ApiUrl.latestVideos));
      if (res.statusCode == 200) {
        return videoListFromJson(res.body);
      } else {
        return Future.error(res.statusCode);
      }
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<List<DetailModel>> getDetail(String id) async {
    try {
      final res = await http.get(Uri.parse('${ApiUrl.detailVideos}$id'));
      if (res.statusCode == 200) {
        return detailListFromJson(res.body);
      } else {
        return Future.error(res.statusCode);
      }
    } catch (e) {
      return Future.error(e.toString());
    }
  }
}
