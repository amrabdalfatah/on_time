import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'core/helper/binding.dart';
import 'core/utils/constants.dart';
import 'features/splash/splash_view.dart';
import 'features/auth/login_view.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.inactive) {}
    super.didChangeAppLifecycleState(state);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(Controller());
    controller.setUserId();
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'On Time',
      initialBinding: Binding(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: controller.mainScreen,
    );
  }
}

class Controller extends GetxController {
  final box = GetStorage();
  bool get isDark => box.read('darkmode') ?? false;
  String get language => box.read('language') ?? 'English';
  String? get userId => box.read('userid');
  int? get userType => box.read('usertype');
  void setUserId() {
    AppConstants.userId = userId;
  }

  Widget get mainScreen =>
      userId == null ? const SplashView() : const LoginView();

  // Widget get mainScreen => userId == null
  //     ? const SplashView()
  //     : userType == TypePerson.admin.index
  //         ? const AdminHomeView()
  //         : userType == TypePerson.doctor.index
  //             ? const DoctorHomeView()
  //             : const StudentHomeView();
  ThemeData get theme => isDark ? ThemeData.dark() : ThemeData.light();
  void changeTheme(bool val) => box.write('darkmode', val);
  void changeLang(String val) => box.write('language', val);
}