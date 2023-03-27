GoogleResponse googleResponseFromJson(Map<String, dynamic> str) =>
    GoogleResponse.fromJson(str);

class GoogleResponse {
  GoogleResponse({
    required this.imagesResults,
  });

  List<ImagesResult> imagesResults;

  factory GoogleResponse.fromJson(Map<String, dynamic> json) => GoogleResponse(
        imagesResults: List<ImagesResult>.from(
            json["images_results"].map((x) => ImagesResult.fromJson(x))),
      );
}

class ImagesResult {
  ImagesResult({
    required this.thumbnail,
    required this.original,
  });

  String thumbnail;

  String original;

  factory ImagesResult.fromJson(Map<String, dynamic> json) => ImagesResult(
        thumbnail: json["thumbnail"],
        original: json["original"],
      );
}
