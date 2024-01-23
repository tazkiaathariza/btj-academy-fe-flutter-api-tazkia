import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.find<HomeController>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Mahasiswa'),
        centerTitle: true,
      ),
      body: Obx(() => Container(
        margin: EdgeInsets.all(20),
        child: ListView.builder(
          itemCount: controller.data.length,
          itemBuilder: (context, index){
            return Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                color: Colors.deepPurpleAccent.withOpacity(.1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(controller.data[index].nama??'-', style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            )),
                            Row(
                              children: [
                                Text(controller.data[index].prodi??'-', style: TextStyle(
                                  fontSize: 16,
                                )),
                                Text(" - ", style: TextStyle(
                                  fontSize: 16,
                                )),
                                Text(controller.data[index].angkatan??'-', style: TextStyle(
                                  fontSize: 16,
                                )),
                              ],
                            ),

                          ],
                        ),
                      )
                  ),
                  Container(
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: (){
                            Get.toNamed('/detail', arguments:{
                              'index': index,
                              'nama' : controller.data[index].nama??'-',
                              'prodi' : controller.data[index].prodi??'-',
                              'angkatan' : controller.data[index].angkatan??'-',
                              'nim' : controller.data[index].nim??'-',
                              'ipk' : controller.data[index].ipk??'-',
                            });
                          },
                          icon: Icon(Icons.arrow_circle_right),
                        ),
                      ],
                    ),),
                ],
              ),
            );
          },
        ),
      ),
      ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            print('Add New Data');

            controller.nameController.clear();
            controller.angkatanController.clear();
            controller.prodiController.clear();
            controller.nimController.clear();
            controller.ipkController.clear();

            Get.defaultDialog(
                title: 'Add New Student',
                content: Column(
                    children: [
                      TextField(
                          controller: controller.nameController,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                              labelText: 'Name',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(16)
                              )
                          )
                      ),
                      SizedBox(height: 10.0),
                      TextField(
                          controller: controller.prodiController,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                              labelText: 'Jurusan',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(16)
                              )
                          )
                      ),
                      SizedBox(height: 10.0),
                      TextField(
                          controller: controller.ipkController,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              labelText: 'IPK',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(16)
                              )
                          )
                      ),
                      SizedBox(height: 10.0),
                      TextField(
                          controller: controller.nimController,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              labelText: 'NIM',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(16)
                              )
                          )
                      ),
                      SizedBox(height: 10.0),
                      TextField(
                          controller: controller.angkatanController,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              labelText: 'Angkatan',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(16)
                              )
                          )
                      ),
                      SizedBox(height: 2.0),
                    ]
                ),
                actions: [
                  ElevatedButton(
                      onPressed: (){
                        print('cek');
                        print(controller.nameController.text);
                        controller.addMahasiswa();
                        Get.back();
                      },
                      child: Text("Save Data")
                  )
                ]
            );
          },
          child: const Icon(Icons.add),
        ),
    );
  }
}
