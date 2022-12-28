import 'package:hoshmand_test/core/locale/locale_keys.dart';

class EnglishLanguage {
  static Map<String, String> get language => {
        LocaleKeys.postHeader: 'Posts',
        LocaleKeys.postTitle: 'Title :',
        LocaleKeys.postBody: 'Body :',
        LocaleKeys.postNoTitle: 'No Title',
        LocaleKeys.postNoBody: 'No Body',
        LocaleKeys.postRetry: 'Retry',
        LocaleKeys.errorRequestCancelled: "Request to API server was cancelled",
        LocaleKeys.errorConnectionTimeout: "Connection timeout with API server",
        LocaleKeys.errorInternetConnection: "Connection to API server failed due to internet connection",
        LocaleKeys.errorReceiveTimeout: "Receive timeout in connection with API server",
        LocaleKeys.errorSendTimeout: "Send timeout in connection with API server",
        LocaleKeys.errorBadRequest: "Bad request",
        LocaleKeys.errorForbidden: "You have not permission for this case",
        LocaleKeys.errorRequestNotFound: "The requested resource was not found",
        LocaleKeys.errorInternalServer: "Internal server error",
        LocaleKeys.errorSomethingWentWrong: "Something went wrong",
      };
}
