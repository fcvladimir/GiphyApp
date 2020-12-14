import 'package:giphy_app/apiKey.dart';
import 'package:giphy_app/data/models/giphy_response.dart';
import 'package:giphy_app/data/service/api_base_helper.dart';

class GiphyService {
  final String _apiKey = apiKey;

  ApiBaseHelper _helper = ApiBaseHelper();

  Future<GiphyResponse> fetchGiphyList(String _keyword) async {
    final response =
        await _helper.get("gifs/search?api_key=$_apiKey&q=$_keyword");
    return GiphyResponse.fromJson(response);
  }
}
