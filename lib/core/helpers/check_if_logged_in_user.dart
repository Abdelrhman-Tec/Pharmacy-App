import 'package:pharmacy_app/core/helpers/navigation.dart';
import '../constants/shared_pref_help.dart';
import '../constants/shared_pref_keys.dart';

Future<void> checkIfLoggedInUser() async {
  String? userToken =
  await SharedPrefHelper.getSecuredString(SharedPrefKeys.userToken);
  if (!userToken.isNullOrEmpty()) {
    isLoggedInUser = true;
  } else {
    isLoggedInUser = false;
  }
}