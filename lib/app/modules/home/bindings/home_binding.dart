import 'package:flutterapitazkiabtj/app/data/providers/mahasiswa_provider.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
    Get.lazyPut<MahasiswaProvider>(
        () => MahasiswaProvider(),
    );
  }
}
