class AppLinkApi {
  static const String server =
      'https://yaseenbanjar.000webhostapp.com/ecommerce';
  static const String imagesStatic =
      'https://yaseenbanjar.000webhostapp.com/ecommerce/upload';
  // ==================Images=================
  static const String imagesCategories = '$imagesStatic/categories';
  static const String imagesItems = '$imagesStatic/items';
  // ==================End Images=================
  static const String test = '$server/test.php';
  //============Auth=============
  static const String signUp = '$server/auth/signup.php';
  static const String verfiyCodeSign = '$server/auth/verfiycode.php';
  static const String login = '$server/auth/login.php';
  //=============Forget Password ===============
  static const String checkEmail = '$server/forgetpassword/checkemail.php';
  static const String verfiyCodeForgetPass =
      '$server/forgetpassword/verfiycode.php';
  static const String resetPassword =
      '$server/forgetpassword/resetpassword.php';
  //=============Home===============
  static const String homePage = '$server/home.php';
  //=============Items===============
  static const String items = '$server/items/items.php';
}
