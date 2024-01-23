import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/detail_controller.dart';

class DetailView extends GetView<DetailController> {
  const DetailView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Mahasiswa'),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: ListView(
            children: [
              Container( // blue card
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(
                  color: Colors.deepPurple.withOpacity(.85),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Nama", style: TextStyle(
                                fontSize: 14,
                                color: Colors.white60
                            )),
                            Text("TAZKIA ATHARIZA", style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            )),
                            SizedBox(height: 8.0), // Ruang antara Text 1 dan Text 2
                            Text("Nomor Induk Mahasiswa", style: TextStyle(
                                fontSize: 14,
                                color: Colors.white60
                            )),
                            Text("08143392929", style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            )),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Profil Mahasiswa", style: TextStyle (
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey
                    )),
                    Container(
                      padding: EdgeInsets.all(13),
                      margin: EdgeInsets.only(bottom: 1, top: 10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Nama", style: TextStyle(fontSize: 14))
                                  ],
                                ),
                              )
                          ),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text("Tazkia", style: TextStyle(
                                  fontSize: 14,
                                ))
                              ],
                            ),),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(13),
                      margin: EdgeInsets.only(bottom: 1, top: 5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("NIM", style: TextStyle(fontSize: 14))
                                  ],
                                ),
                              )
                          ),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text("123", style: TextStyle(
                                  fontSize: 14,
                                ))
                              ],
                            ),),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(13),
                      margin: EdgeInsets.only(bottom: 1, top: 5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Prodi", style: TextStyle(fontSize: 14))
                                  ],
                                ),
                              )
                          ),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text("Biologi", style: TextStyle(
                                  fontSize: 14,
                                ))
                              ],
                            ),),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(13),
                      margin: EdgeInsets.only(bottom: 1, top: 5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Angkatan", style: TextStyle(fontSize: 14))
                                  ],
                                ),
                              )
                          ),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text("2018", style: TextStyle(
                                  fontSize: 14,
                                ))
                              ],
                            ),),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(13),
                      margin: EdgeInsets.only(bottom: 15, top: 5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("IPK", style: TextStyle(fontSize: 14))
                                  ],
                                ),
                              )
                          ),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text("3.76", style: TextStyle(
                                  fontSize: 14,
                                ))
                              ],
                            ),),
                        ],
                      ),
                    )
                  ],
                ),

              ), // Site Address

            ]
        ),
      ),
    );
  }
}
