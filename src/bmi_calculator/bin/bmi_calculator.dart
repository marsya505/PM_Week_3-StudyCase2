import 'package:bmi_calculator/bmi_calculator.dart';

void main() {
    List<Map<String, dynamic>> riwayat = []; // inisialisasi list kosong untuk menampung riwayat perhitungan
    
    print('Kalkulator BMI');
    
    hitungBMI(170, 65, riwayat); // input 1
    hitungBMI(165, 75, riwayat); // input 2
    hitungBMI(180, 85, riwayat); // input 3
    
    tampilkanRiwayat(riwayat); // menampilkan semua riwayat yang sudah tersimpan menggunakan perulangan
    
    print('Selesai.');
}
