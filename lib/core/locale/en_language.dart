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
      };
}
