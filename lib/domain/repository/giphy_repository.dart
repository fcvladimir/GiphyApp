import 'package:giphy_app/domain/models/giphy_model.dart';

abstract class GiphyRepository {
  Future<List<Giphy>> fetchGiphyList(String keyword);
}
