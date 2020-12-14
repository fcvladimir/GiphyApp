class GiphyResponse {
  List<GiphyDataResponse> dataResponse;
  MetaResponse metaResponse;
  PaginationResponse paginationResponse;

  GiphyResponse(
      {this.dataResponse, this.metaResponse, this.paginationResponse});

  factory GiphyResponse.fromJson(Map<String, dynamic> json) {
    var list = json['data'] as List;
    return GiphyResponse(
        dataResponse: list.map((i) => GiphyDataResponse.fromJson(i)).toList(),
        metaResponse: MetaResponse.fromJson(json['meta']),
        paginationResponse: PaginationResponse.fromJson(json['pagination']));
  }

// List<GiphyOriginal> getGiphyImages() {
//   return dataResponse.map((e) => e.giphyDataImagesResponse.giphy);
// }
}

class GiphyDataResponse {
  String type;
  GiphyDataImagesOriginalResponse giphyDataImagesResponse;

  GiphyDataResponse({this.type, this.giphyDataImagesResponse});

  factory GiphyDataResponse.fromJson(Map<String, dynamic> json) {
    return GiphyDataResponse(
      type: json["type"],
      giphyDataImagesResponse:
          new GiphyDataImagesOriginalResponse.fromJson((json["images"])),
    );
  }
}

class GiphyDataImagesOriginalResponse {
  GiphyOriginal giphy;

  GiphyDataImagesOriginalResponse({this.giphy});

  factory GiphyDataImagesOriginalResponse.fromJson(Map<String, dynamic> json) {
    return GiphyDataImagesOriginalResponse(
        giphy: GiphyOriginal.fromJson(json["original"]));
  }
}

class GiphyOriginal {
  String url;

  GiphyOriginal({this.url});

  factory GiphyOriginal.fromJson(Map<String, dynamic> json) {
    return GiphyOriginal(url: json["url"]);
  }
}

class PaginationResponse {
  int totalCount;
  int count;
  int offset;

  PaginationResponse({this.totalCount, this.count, this.offset});

  factory PaginationResponse.fromJson(Map<String, dynamic> json) {
    return PaginationResponse(
        totalCount: json['total_count'],
        count: json['count'],
        offset: json['offset']);
  }
}

class MetaResponse {
  int width;
  String msg;
  String responseId;

  MetaResponse({this.width, this.msg, this.responseId});

  factory MetaResponse.fromJson(Map<String, dynamic> json) {
    return MetaResponse(
        width: json['status'],
        msg: json['msg'],
        responseId: json['response_id']);
  }
}
