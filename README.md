# Mobile Development 2 - Flutter Getx- Tazkia
Folder ini merupakan task kedua dari materi Mobile Development. Kegiatan utama dari task kali ini adalah
melakukan Integrasi API GET dan POST menggunakan GetX Architecture (GetCLI). 
Endpoint yang digunakan : https://btj-academy-default-rtdb.asia-southeast1.firebasedatabase.app/mahasiswa.json

## Page
1. `home_view.dart` : Halaman utama yang muncul saat aplikasi dijalankan. Pada halaman ini, seluruh card data
mahasiswa ditampilkan. Terdapat icon panah untuk mengarahkan ke `detail_view.dart`. User juga dapat menambahkan
data mahasiswa baru.
2. `detail_view.dart` : Halaman yang menyajikan detail informasi dari isi card pada `main.dart`. Data 
yang muncul spesifik sesuai dengan nama yang dipilih pada halaman `main.dart` 
(menggunakan Get.argument).

## Getting started
1. Download atau clone repository ini :
```
https://github.com/tazkiaathariza/btj-academy-fe-flutter-api-tazkia
```
2. Install seluruh dependencies yang diperlukan.
2. Jalankan aplikasi.

## Hasil
![hasil2](/assets/img/ss2.jpeg)

![hasil](/assets/img/ss1.jpeg)