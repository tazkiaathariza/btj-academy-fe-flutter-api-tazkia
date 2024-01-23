import 'package:get/get.dart';
import 'package:flutterapitazkiabtj/app/data/providers/mahasiswa_provider.dart';
import 'package:flutterapitazkiabtj/app/data/models/mahasiswa_model.dart';
import 'package:flutter/cupertino.dart';

class DetailController extends GetxController {
  //TODO: Implement DetailController

  MahasiswaProvider _provider = Get.find<MahasiswaProvider>();
  TextEditingController nameController = TextEditingController();
  TextEditingController prodiController = TextEditingController();
  TextEditingController angkatanController = TextEditingController();
  TextEditingController nimController = TextEditingController();
  TextEditingController ipkController = TextEditingController();
  RxList<Mahasiswa> data = <Mahasiswa>[].obs;
  // RxBool loading = false.obs;

  initData()async{
    print('enter here');
    // loading(true);
    data.clear();
    try {
      await _provider.getMahasiswa().then((value) async{
        print("cek data dari API");
        await value.body.entries.map((element) {
          var temp = Mahasiswa.fromJson(element.value);
          print(element.value);
          data.add(temp);
        }).toList();
        print('cek data List');
        print(data[0].nama);
        // loading(false);
      });
    } catch (e) {
      // loading(false);
      print(e);
    }
  }

  final count = 0.obs;


  @override
  void onInit() {
    super.onInit();

    initData();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
