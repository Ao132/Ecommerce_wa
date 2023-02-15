import 'package:get/get.dart';

class Translation extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'ar': {
          // language screen
          'choose_language': 'اختر اللغة',

          //onboarding screen
          'title1_onB': 'اختر المنتج',
          'body_onB': 'لدينا منتج 100k ، اختر \n منتجك من متجر التجارة الإلكترونية \n الخاص بنا',
          'title2_onB': 'دفع سهل وآمن',
          'title3_onB': 'تتبع طلبك',
          'continue_onB': 'التالي',

          //signin screen
          'welcome_message': 'اهلا بعودتك',
          'subtitle_signin': 'سجل الدخول باستخدام الايميل و الباسورد او اكمل باستخدام التواصل الاجتماعي',
          'forgetpassword_signin': 'هل نسيت كلمة المرور ؟',
          'donthaveaccount_signin': 'ليس لديك حساب مسجل ؟',

          //signup screen
          'signup': 'انشاء حساب جديد',
          'subtitle_signup': 'انشئ حساب  باستخدام الايميل و الباسورد او اكمل باستخدام التواصل الاجتماعي ',
          'usernamelabel_signup': 'اسم المستخدم',
          'usernamehint_signup': 'ادخل اسم المستخدم',
          'phonelabel_signup': 'رقم الهاتف',
          'phonehint_signup': 'ادخل رقم الهاتف',
          'haveaccount_signup': 'لديك حساب مسجل ؟',

          //check email signup screen
          'checksignuptitle_checkemailsignup': 'تم إنشاء الحساب بنجاح',
          'subtitle_checkemailsignup': 'خطوة واحدة أخري ، من فضلك ادخل البريد الإلكتروني لإرسال رمز التحقق',

          //success signup screen
          'successtitle_signup':'تم إنشاء الحساب بنجاح',


//
          //shared between signin screen/signup/reset/forget/success signup/success signin

          //sign/signup/reset
          'labelemail': 'البريد الإلكتروني',
          'hintemail': 'ادخل بريدك الإلكتروني',

          'labelpassword': 'كلمة المرور',
          'hintpassword': 'ادخل كلمة المرور',

          //signin/success signup/success signin
          'signin': 'تسجيل الدخول',

          //forget/check email signup
          'checkbutton': 'تحقق',

          //verify signup/verify reset
          'checkcodetitle_verify': 'التحقق من الرمز',
          'subtitle_verify': 'من فضلك ارسل رمز التحقق المرسل علي ',


//

          //forget screen
          'forgetpasswordtitle_forget': 'هل نسيت كلمة المرور',
          'checkemailtitle_forget': 'تحقق من البريد الإلكتروني ',
          'subtitle_forget': 'من فضلك ادخل البريد الإلكتروني لإرسال رمز التحقق',

          //verify reset screen
          //shared


          //reset screen
          'resettitle_reset': 'إعادة تعين كلمة المرور',
          'subtitle_reset': 'ادخل كلمة مرور جديدة',
          'hintpassword_reset': 'اعد ادخال كلمة المرور',
          'savebutton_reset': 'حفظ',

          //success reset screen
          'successtitle_reset':'تم إعادة تعين كلمة المرور بنجاح',


          //form field
          'username_form':'اسم مستخدم غير صالح',
          'email_form':'بريد إلكتروني غير صالح',
          'phone_form':'رقم هاتف غير صالح',
          'cantbeempty_form':"لا يمكن ان يكون فارغ",
          'cantbelessthan_form':"لا يمكن ان يكون اقل من ",
          'cantbelargerthan_form':"لا يمكن ان يكون اكبر من ",

        },
        'en': {
          // language screen
          'choose_language': 'Choose Language',

          //onboarding screen
          'title1_onB': 'Choose Product',
          'body_onB': 'We Have a 100k Product , Choose \n Your Product From  Our \n E-commerce Shop',
          'title2_onB': 'Easy And Safe Payment',
          'title3_onB': 'Track Your Order',
          'continue_onB': 'Continue',

          //signin screen
          'welcome_message': 'Welcom Back',
          'subtitle_signin': 'Sign In With Your Email And Password OR Continue With Social Media',
          'forgetpassword_signin': 'Forget Password ?',
          'donthaveaccount_signin': 'Don\'t have an account ? ',

          //signup screen
          'signup': 'Sign Up',
          'subtitle_signup': 'Sign Up With Your Email And Password OR Continue With Social Media',
          'usernamelabel_signup': 'UserName',
          'usernamehint_signup': 'Enter Your UserName',
          'phonelabel_signup': 'Phone',
          'phonehint_signup': 'Enter Your Phone',
          'haveaccount_signup': 'have an account ? ',

          //check email signup screen
          'checksignuptitle_checkemailsignup': 'Success Sign Up',
          'subtitle_checkemailsignup': 'One Step Remaining , Please Enter Your Email Address To Send A Verification Code ',

          //success signup screen
          'successtitle_signup':'successfully registered',

//
          //shared between signin screen/signup/reset/forget/success signup/success signin/verify signup/verify reset
        
         //signin/signup/reset
          'labelemail': 'Email',
          'hintemail': 'Enter Your Email',

          'labelpassword': 'Password',
          'hintpassword': 'Enter Your Password',

          //signin/success signup/success signin
          'signin': 'Sign In',

          //forget/check email signup
          'checkbutton': 'Check',

          //verify signup/verify reset
          'checkcodetitle_verify': 'Check Code',
          'subtitle_verify': 'Please Enter The Digit Code which Sent To ahmed@gmail.com',


//

          //forget screen
          'forgetpasswordtitle_forget': 'Forget Password',
          'checkemailtitle_forget': 'Check Email',
          'subtitle_forget': 'Please Enter Your Email Address To Send A Verification Code',

          //verify reset screen
          //shared


          //reset screen
          'resettitle_reset': 'Reset Password',
          'subtitle_reset': 'Enter New Password',
          'hintpassword_reset': 'Re Enter Your Password',
          'savebutton_reset': 'Save',

          //success reset screen
          'successtitle_reset':'Password has been reset successfully',

          //form field
          'username_form':'Not Valid UserName',
          'email_form':'Not Valid Email',
          'phone_form':'Not Valid Phone',
          'cantbeempty_form':"Can't Be Empty",
          'cantbelessthan_form':"Can't Be Less Than",
          'cantbelargerthan_form':"Can't Be Larger Than",

        },
      };
}
