import 'package:get/get.dart';
import 'package:flutterapitazkiabtj/app/data/providers/mahasiswa_provider.dart';
import 'package:flutterapitazkiabtj/app/data/models/mahasiswa_model.dart';
import 'package:flutter/cupertino.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController
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

 addMahasiswa()async{
    try {
      await _provider.postMahasiswa(Mahasiswa(
        angkatan: angkatanController.text,
        ipk: ipkController.text,
        nama: nameController.text,
        nim: nimController.text,
        prodi: prodiController.text,
      )).then((value){
        print('cek post mahasiswa');
        print(value.body);
        initData;
      });
    } catch(e){
      print(e);
    }

  }


/*
  initData()async {
    print('masuk sini');
    data.clear();

    try{
      await _provider.getMahasiswa().then((value) async{
        print("cek dari API");
        await value.body.entries.map((element){
          print('cetak json');
          print(element.value);
        }).toList();
      });
    } catch(e){
      print(e);
    }
  }
  */





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
    nameController.dispose();
    angkatanController.dispose();
    prodiController.dispose();
    super.onClose();
  }

  void increment() => count.value++;
}
