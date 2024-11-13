class AppConstants {
  static const String phoneNumber = '201016716496';
  static const String adminEmail = 'admin@on.time';
  static String? userId;
  static bool? isGuest;
  static String? userName;
  static String? userCode;
  static TypePerson? typePerson;
}

enum TypePerson {
  admin,
  student,
  doctor,
}
