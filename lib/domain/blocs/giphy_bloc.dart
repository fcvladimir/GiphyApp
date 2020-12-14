import 'dart:async';

import 'package:giphy_app/data/service/api_response.dart';
import 'package:giphy_app/domain/models/giphy_model.dart';
import 'package:giphy_app/domain/repository/giphy_repository.dart';

class GiphyBloc {
  GiphyRepository _giphyRepository;

  StreamController _giphyListController;

  StreamSink<ApiResponse<List<Giphy>>> get giphyListSink =>
      _giphyListController.sink;

  Stream<ApiResponse<List<Giphy>>> get giphyListStream =>
      _giphyListController.stream;

  GiphyBloc(this._giphyRepository) {
    _giphyListController = StreamController<ApiResponse<List<Giphy>>>();
  }

  fetchGiphyList(String keyword) async {
    giphyListSink.add(ApiResponse.loading('Fetching Giphy'));
    try {
      List<Giphy> giphyList = await _giphyRepository.fetchGiphyList(keyword);
      giphyListSink.add(ApiResponse.completed(giphyList));
    } catch (e) {
      giphyListSink.add(ApiResponse.error(e.toString()));
      print(e);
    }
  }

  dispose() {
    _giphyListController?.close();
  }
}
