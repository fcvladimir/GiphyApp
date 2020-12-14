import 'package:giphy_app/data/repository/giphy_data_repository.dart';
import 'package:giphy_app/domain/repository/giphy_repository.dart';

import 'api_module.dart';

class RepositoryModule {
  static GiphyRepository _giphyRepository;

  static GiphyRepository giphyRepository() {
    if (_giphyRepository == null) {
      _giphyRepository = GiphyDataRepository(
        ApiModule.apiUtil(),
      );
    }
    return _giphyRepository;
  }
}
