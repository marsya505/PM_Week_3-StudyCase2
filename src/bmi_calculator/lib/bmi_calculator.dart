// fungsi untuk menghitung BMI dan menyimpan ke dalam list riwayat
void hitungBMI(double tinggiCm, double beratKg, List<Map<String, dynamic>> riwayat) {
  double tinggiM = tinggiCm / 100; // Konversi tinggi dari cm ke m

  // hitung BMI dengan rumus: berat (kg) / (tinggi (m) * tinggi (m))
  double bmi = beratKg / (tinggiM * tinggiM); 

  // menentukan kategori menggunakan percabangan (if-else)
  String kategori;
  if (bmi < 18.5) {
    kategori = "Kurus"; // jika < 18.5 kurus
  } else if (bmi < 25) {
    kategori = "Normal"; // < 25 normal
  } else if (bmi < 30) {
    kategori = "Gemuk"; // < 30 gemuk
  } else {
    kategori = "Obesitas"; // jika diatas 30 obesitas
  }

  // menyimpan hasil ke riwayat dalam bentuk map
  riwayat.add({
    'tinggi': tinggiCm,
    'berat': beratKg,
    'bmi': bmi.toStringAsFixed(1), // membatasi 1 angka di belakang koma
    'kategori': kategori
  });
}

// fungsi untuk menampilkan riwayat menggunakan perulangan (looping)
void tampilkanRiwayat(List<Map<String, dynamic>> riwayat) {
  print('\nRIWAYAT PERHITUNGAN BMI');
  
  // perulangan untuk mengambil setiap data di dalam list
  for (var i = 0; i < riwayat.length; i++) {
    var data = riwayat[i];
    print('${i + 1}. Tinggi: ${data['tinggi']}cm, Berat: ${data['berat']}kg');
    print('   Hasil BMI: ${data['bmi']} (${data['kategori']})');
    print('-------------------------------');
  }
}