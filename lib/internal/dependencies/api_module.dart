import 'package:giphy_app/data/api_util.dart';
import 'package:giphy_app/data/service/giphy_service.dart';

class ApiModule {
  static ApiUtil _apiUtil;

  static ApiUtil apiUtil() {
    if (_apiUtil == null) {
      _apiUtil = ApiUtil(GiphyService());
    }
    return _apiUtil;
  }
}
