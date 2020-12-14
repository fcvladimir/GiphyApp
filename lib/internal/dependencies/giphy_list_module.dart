import 'package:giphy_app/domain/blocs/giphy_bloc.dart';
import 'package:giphy_app/internal/dependencies/repository_module.dart';

class GiphyListModule {
  static GiphyBloc giphyListState() {
    return GiphyBloc(
      RepositoryModule.giphyRepository(),
    );
  }
}
