sealed class Api {
  static const String baseUrl = "api.thecatapi.com";

  static const apiImages = "v1/images/search";

  static const apiUploadImage = "v1/images/upload2";

  static const Map<String, String> headers = {
    "Content-Type": "application/json; charset=UTF-8",
    "x-api-key":
        "live_dx6OvtqsQKdevkL3PqaQM6TH2P2JVGFN6DPzVwLHfnF2XoXIVK8oOdnNgICHtE9U",
  };

  static const Map<String, String> headersMedia = {
    "Content-Type": "multipart/form-data; charset=UTF-8",
    "x-api-key":
        "live_dx6OvtqsQKdevkL3PqaQM6TH2P2JVGFN6DPzVwLHfnF2XoXIVK8oOdnNgICHtE9U",
  };
}
