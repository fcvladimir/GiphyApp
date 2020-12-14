import 'package:giphy_app/data/api_util.dart';
import 'package:giphy_app/domain/models/giphy_model.dart';
import 'package:giphy_app/domain/repository/giphy_repository.dart';

class GiphyDataRepository extends GiphyRepository {
  final ApiUtil _apiUtil;

  GiphyDataRepository(this._apiUtil);

  @override
  Future<List<Giphy>> fetchGiphyList(String keyword) {
    return _apiUtil.fetchGiphyList(keyword);
  }
}
