class Applink {
  static String token = '';
  static var headers = {
    "Accept": "application/json",
    "Authorization": 'Bearer $token'
  };
  // ======auth=========
  static String serverLink = "https://shiplink.spider-te8.com/api";
  static String login = "$serverLink/auth/login";
  static String register = "$serverLink/auth/register";
  static String delete = "$serverLink/auth/logout";
}
