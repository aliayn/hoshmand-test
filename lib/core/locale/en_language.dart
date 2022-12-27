import 'package:hoshmand_test/core/locale/locale_keys.dart';

class EnglishLanguage {
  static Map<String, String> get language => {
        LocaleKeys.customerTitle: 'Flutter CRUD Test',
        LocaleKeys.customerSubmit: 'Submit',
        LocaleKeys.customerCancel: 'Cancel',
        LocaleKeys.customerDelete: 'customerDelete',
        LocaleKeys.customerAdd: 'Add Customer',
        LocaleKeys.customerFirstName: 'First Name',
        LocaleKeys.customerLastName: 'Last Name',
        LocaleKeys.customerBirthday: 'Birthday',
        LocaleKeys.customerEmail: 'E-mail',
        LocaleKeys.customerPhone: 'Phone Number',
        LocaleKeys.customerBankAccount: 'Bank Account',
        LocaleKeys.errorFieldIsEmpty: 'Filed can not be empty',
        LocaleKeys.errorInvalidPhone: 'Phone is not valid!',
        LocaleKeys.errorEmptyCustomerList: 'No Customer Found!',
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
