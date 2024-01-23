import 'package:flutterapitazkiabtj/app/data/providers/mahasiswa_provider.dart';
import 'package:get/get.dart';

import '../controllers/detail_controller.dart';

class DetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailController>(
      () => DetailController(),
    );
    Get.lazyPut<MahasiswaProvider>(
          () => MahasiswaProvider(),
    );
  }
}
