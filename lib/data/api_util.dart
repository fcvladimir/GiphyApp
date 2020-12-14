import 'package:giphy_app/data/mapper/giphy_mapper.dart';
import 'package:giphy_app/data/models/giphy_response.dart';
import 'package:giphy_app/domain/models/giphy_model.dart';

import 'service/giphy_service.dart';

class ApiUtil {
  final GiphyService _giphyService;

  ApiUtil(this._giphyService);

  Future<List<Giphy>> fetchGiphyList(String keyword) async {
    final result = await _giphyService.fetchGiphyList(keyword);
    List<GiphyDataResponse> dataResponseList = result.dataResponse;
    List<GiphyOriginal> list = new List<GiphyOriginal>();
    dataResponseList.forEach((element) {
      list.add(element.giphyDataImagesResponse.giphy);
    });
    return GiphyMapper.fromGiphyOriginalList(list);
  }
}
