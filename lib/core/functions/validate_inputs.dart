import 'package:get/get.dart';

validateInput(String val, int min, int max, String type) {
  if (type == 'username') {
    if (!GetUtils.isUsername(val)) {
      return 'username_form'.tr;
    }
  }

  if (type == 'email') {
    if (!GetUtils.isEmail(val)) {
      return 'email_form'.tr;
    }
  }

  if (type == 'phone') {
    if (!GetUtils.isPhoneNumber(val)) {
      return 'phone_form'.tr;
    }
  }
    

  if (val.isEmpty) {
    return "cantbeempty_form".tr;
  }
  if(val.length<min){
    return "cantbelessthan_form".tr+'$min';
  }
   if (val.length > max) {
    return "cantbelargerthan_form".tr+"$max";
  }
}
