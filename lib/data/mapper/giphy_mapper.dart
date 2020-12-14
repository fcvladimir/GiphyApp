import 'package:giphy_app/data/models/giphy_response.dart';
import 'package:giphy_app/domain/models/giphy_model.dart';

class GiphyMapper {
  static List<Giphy> fromGiphyOriginalList(
      List<GiphyOriginal> giphyOriginalList) {
    List<Giphy> giphyList = List<Giphy>();
    giphyOriginalList.forEach((element) {
      giphyList.add(fromGiphyOriginal(element));
    });
    return giphyList;
  }

  static Giphy fromGiphyOriginal(GiphyOriginal giphyOriginal) {
    return Giphy(
      url: giphyOriginal.url,
    );
  }
}
