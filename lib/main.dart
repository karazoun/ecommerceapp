import 'package:ecommerceapp/core/localization/changelocale.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'core/constant/color.dart';
import 'core/localization/translation.dart';
import 'core/services/services.dart';
import 'routes.dart';
import 'view/screen/language.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    LocaleController controller = Get.put(LocaleController());
    return GetMaterialApp(
      translations: MyTranslation(),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      locale: controller.language,
      theme: ThemeData(
        fontFamily: "PlayfairDisplay",
        textTheme: const TextTheme(
            headline1: TextStyle(
                height: 2,
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: AppColor.black),
            headline2: TextStyle(
                height: 2,
                fontWeight: FontWeight.bold,
                fontSize: 26,
                color: AppColor.black),
            bodyText1: TextStyle(
              height: 2,
              color: AppColor.grey,
              fontSize: 17,
            )),
        primarySwatch: Colors.blue,
      ),
      home: const Language(),
      routes: routes,
    );
  }
}
