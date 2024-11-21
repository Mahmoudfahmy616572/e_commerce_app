import 'package:get/get.dart';

class MyLanguages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'ar': {
          "Choose Language": "اختر اللغة ",
          "ar": "العربيه",
          "en": "الانجليزيه",
          "title": "اللغات",
          //Auth screen
          "titleLogin": "مرحبًا بعودتك",
          "TextBodyLogin":
              "قم بتسجيل الدخول باستخدام بريدك الإلكتروني\n  وكلمة المرور أو تابع باستخدام وسائل\n  التواصل الاجتماعي",
          "titleSignUp": " تسجيل حساب",
          "TextBodySignUp":
              "أكمل بياناتك أو تابع\n عبر وسائل التواصل الاجتماعي",
          "hintName": " أدخل اسمك",
          "hintGender": " أدخل نوعك",
          "hintAddress": " أدخل عنوانك",
          "hintCode": " أدخل رمز المحافظه",
          "hintEmail": "أدخل بريدك الإلكتروني",
          "hintPassowrd": "أدخل كلمة المرور الخاصة بك",
          "hintphone": "أدخل رقم هاتفك",
          "labelFirstName": "اسم المستخدم",
          "labelLastName": "اسم العائلة",
          "labelEmail": "بريد إلكتروني",
          "labelPassowrd": "كلمة المرور",
          "labelconfirmpassword": "تأكيد كلمة المرور",
          "labelCode": "رمز العلامة",
          "labelgender": "النوع",
          "labelAddress": "عنوان",

          "labelphone": "هاتف",
          "Forgot Password": "هل نسيت كلمة السر",
          "SignInBTN": "تسجيل الدخول",
          "SignUpBTN": "اشتراك",
          "Don't have an account?": "ليس لديك حساب؟",
          //forgot password screen
          "titleForgotPassword": "هل نسيت كلمة السر",
          "TextBodyForgotPassword":
              "الرجاء إدخال بريدك الإلكتروني وسنرسل\n لك رابطًا لإرجاع حسابك",
          "forgotBTN": " ارسل ",
          "Email Send": "إرسال البريد الإلكتروني",
          "Email Link send to reset your password":
              "إرسال رابط البريد الإلكتروني لإعادة تعيين كلمة المرور الخاصة بك",
          "not Valid": "غير صالح",
          "The Proccess in Progress.....": "العملية جارية.....",

          //onboarding screen
          "titleOnboarding 1": "اختر المنتج",
          "titleOnboarding 2": "الدفع السهل والآمن",
          "titleOnboarding 3": "تتبع طلبك",
          "textBodyOnboarding 1":
              "يمكنك تعديل خريطة طريق المنتج بسهولة\n لتبسيط عملك",
          "textBodyOnboarding 2":
              "قم ببناء تطوير منتجات شركتك\n لتصبح أفضل بسهولة",
          "textBodyOnboarding 3":
              "بعد اكتمال تطوير منتج الشركة \nواستعداده للإطلاق",
          "headBodyOnboarding 1": "حدد خريطة \nطريق المنتج",
          "headBodyOnboarding 2": "تطوير \nمنتجات البناء",
          "headBodyOnboarding 3": "إطلاق المنتج",
          "Next": "التالي",
          //OTP
          "title otp": "كلمة مرور لمرة واحدة",
          "Headline otp": "التحقق من الكود",
          "TextLine otp":
              " الرجاء إدخال رمز الرقم أرسل إلى \nاسم البريد الإلكتروني",
          //reset password
          "Title reset password": "إعادة تعيين كلمة المرور",
          "HeadLine reset password": "إعادة تعيين كلمة المرور",
          "Textline reset password":
              "الرجاء إدخال كلمة المرور الجديدة\n في حقل النص",
          "HitText reset password": "الرجاء إدخال كلمة المرور الجديدة",
          "labelNewPassowrd reset password": " كلمة المرور الجديدة",
          "HitRewritePassowrd reset password": "أعد كتابة كلمة المرور الجديدة",
          "labelrewritePassowrd reset password": "أعد كتابة كلمة المرور",
          //success Screens
          "textbodySuccess": "الاستمرار في التواصل لتصبح من مجتمعنا  ",
          "titleSeccess": "لقد تم إعادة تعيين كلمة المرور بنجاح ",
          "Continue": "استمر",
          "textbodysignupSuccess": "شكرا لك على مشاركة بياناتك ",
          "titlesignupSeccess": "لقد تم تسجيلك بنجاح ",
          "Go to Login": "انتقل إلى تسجيل الدخول",
          "Success ": "نجح التسجيل",
          "Skip": "تخطى",
          "Start": "أبدأ",
          //verify screen
          "Verify Email": "التحقق من البريد الإلكتروني",
          "TextBodyVerifyEmailSignUp":
              "الرجاء إدخال بريدك الإلكتروني \nلإرسال رمز رقمي إليك",
          //validation
          'valid 1': "هذا ليس اسم مستخدم صالح",
          'valid 2': "هذا ليس بريد إلكتروني صالح",
          'valid 3': "هذا ليس هاتف صالح",
          'valid 4': "القيمة لا يمكن أن تكون أقل من",
          'valid 5': "القيمة لا يمكن أن تكون أكبر من",
          'valid 6': "القيمة لا يمكن أن تكون فارغة",
          //pop up alert
          "popUpAlert 1": "احترس",
          "popUpAlert 2": "هل أنت متأكد أنك تريد إغلاق التطبيق؟",
          "popUpAlert 3": "لا",
          "popUpAlert 4": "نعم",
          //checkEmail
          "loading Email...": "جاري تحميل البريد الإلكتروني...",
          "Your account security is Our Priority we've send you  \na  secure Link To safity Change your password and \n keep your account protected ":
              "أمن حسابك هو أولويتنا، لقد أرسلنا لك رابطًا آمنًا لتغيير كلمة المرور الخاصة بك بأمان والحفاظ على حسابك محميًا",
          "Password Reset Email Send":
              "إرسال بريد إلكتروني لإعادة تعيين كلمة المرور",
        },
        "en": {
          "choose language": "choose language",
          "ar": "arabic",
          "en": "english",
          "title": "Languages",
          //auth Screens
          "titleLogin": "Welcome Back",
          "TextBodyLogin":
              "Sign in with your Email and Password\n or Continue with social media",
          "hintName": "enter your name",
          "hintGender": " Enter your Gender",
          "hintAddress": "Enter your Address",
          "hintCode": " Enter your Code",
          "hintEmail": "Enter your email",
          "hintPassowrd": "Enter your Password",
          "hintphone": "Enter your Phone Number",
          "labelFirstName": "First Name",
          "labelLastName": "Last Name",
          "labelEmail": "Email",
          "labelPassowrd": "Password",
          "labelconfirmpassword": "Confirm Password",
          "labelcode": "Code",
          "labelgender": "Gender",
          "labelAddress": "Address",
          "labelphone": "Phone",
          "titleSignUp": "Register Account",
          "TextBodySignUp":
              "Complete your details or continue \n with social media",
          "Forgot Password": "Forgot Password",
          "SignInBTN": "Sign In",
          "SignUpBTN": "Sign Up",
          "Don't have an account?": "Don't have an account?",
          //forgot password screen
          "titleForgotPassword": "Forgot Passwords",
          "TextBodyForgotPassword":
              "Please enter your email and we will send\n you a link to return your account",
          "forgotBTN": "Send",
          "Email Send": "إرسال البريد الإلكتروني",
          "Email Link send to reset your password":
              "Email Link send to reset your password",
          "not Valid": "not Valid",
          "The Proccess in Progress.....": "The Proccess in Progress.....",
          //OTP
          "title otp": "OTP",
          "Headline otp": "Check Code",
          "TextLine otp": " Please enter the Digit Code Send to\n Email name",
          //reset password
          "Title reset password": "Reset Password",
          "HeadLine reset password": "Reset Password",
          "Textline reset password":
              "Please Enter your new Password\n in Text Field",
          "HitText reset password": "Please Enter your new Password",
          "labelNewPassowrd reset password": "New Password",
          "HitRewritePassowrd reset password": "Rewrite New Password",
          "labelrewritePassowrd reset password": "Rewrite Password",

          //onboarding screen
          "titleOnboarding 1": "Choose Product",
          "titleOnboarding 2": "Easy And Safe Paymnet",
          "titleOnboarding 3": "Track Your Order",
          "textBodyOnboarding 1":
              "Easily adjust the product roadmap to \n simplify your work",
          "textBodyOnboarding 2":
              "Build your company's product development\n  to getbetter easily",
          "textBodyOnboarding 3":
              "After the company's product development\n is complete and ready to launch",
          "headBodyOnboarding 1": "Set the Product \n Readmap",
          "headBodyOnboarding 2": "Building Product \n Development",
          "headBodyOnboarding 3": "Product Lunch",
          "Next": "Next",
          "Skip": "Skip",
          "Start": "Start",
          //success Screens
          "textbodySuccess": "Keep in touch to become part of our community.  ",
          "titleSeccess": "You are Successfully\n Reset Password ",
          "Continue": "Continue",
          "textbodysignupSuccess": "Thank you for sharing your Data ",
          "titlesignupSeccess": "You are Successfully\n Sign Up ",
          "Go to Login": "Go to Login",
          "Success ": "Success ",
          //verify screen
          "Verify Email": "Verify Email",
          "TextBodyVerifyEmailSignUp":
              "Please enter your Email \n to send you digit code on it",
          //validation
          'valid 1': "This is not valid UserName",
          'valid 2': "This is not valid Email",
          'valid 3': "This is not valid phone",
          'valid 4': "value can't be less than",
          'valid 5': "value can't be greater than",
          'valid 6': "value can't be Empty",
          //pop up alert
          "popUpAlert 1": "Be Careful",
          "popUpAlert 2": "Are you sure, you want to close app ?",
          "popUpAlert 3": "No",
          "popUpAlert 4": "Yes",
          //checkEmail
          "loading Email...": "loading Email...",
          "Your account security is Our Priority we've send you  \na  secure Link To safity Change your password and \n keep your account protected ":
              "Your account security is Our Priority we've send you  \na  secure Link To safity Change your password and \n keep your account protected ",
          "Password Reset Email Send": "Password Reset Email Send",
        }
      };
}
