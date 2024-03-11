class AppConfig {
  //baseurl is set here
  static String baseurl = "http://10.11.0.208:8000/";

  //key to store data from api in json format used in AppUtils to get accesskey&userid
  static const String LOGIN_DATA = 'logInData';
  //key to store username which user entered used in registration page controller, login page controller
  static const String userName="username";
}
