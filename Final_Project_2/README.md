# Final Project 2

#### Groovy Scripts and JMeter Test: Pokemon API.

#### Video demo: https://github.com/leinad05/Assignment_.Net_JMeter/blob/main/Final_Project_2/Final_Project_2.mp4

#### Cara penggunaan:

1. Menjalankan ApacheJMeter.jar.
2. Open file Pokemon.jmx.
3. Klik kanan pada Task 1 untuk menjalankan test mencari "next evolution of pikachu".
4. Melihat hasil pada log.
5. Dapat juga melihat hasil melalui View Results Tree.
6. Klik kanan pada Task 2 untuk mencari semua pokemon dengan "wings" shape.
7. Melihat hasil pada log.
8. Dapat juga melihat hasil melalui View Results Tree.

#### Penjelasan Task 1:
1. Membuat variabel yang akan digunakan pada User Defined Variables.
2. Menggunakan While Controller melakukan perulangan menemukan data pikachu. Menggunakan variabel pokemonFound, jika variabel masih kosong maka akan terus melakukan perulangan.
3. Menggunakan HTTP Request dengan method GET dan endpoint https://pokeapi.co/api/v2/pokemon-species?offset=0&limit=20.
4. Menggunakan JSR223 PostProcessor untuk membuat script groovy. Di sini berfungsi untuk menambahkan nilai offset dari 0 menjadi 20 dan seterusnya sampai ditemukan data pikachu. Jika data ditemukan, maka akan set variabel pokemonFound dengan nama pokemon tersebut.
5. Melanjutkan dengan mencari evolusi dari pikachu dengan menggunakan If Controller.

#### Penjelasan Task 2:
1. Membuat variabel yang akan digunakan pada User Defined Variables.
2. Menggunakan HTTP Request dengan method GET dan endpoint https://pokeapi.co/api/v2/pokemon-shape
3. Menampilkan semua data shape pada log.
4. Pada JSR223 PostProcessor membuat script groovy untuk mencari shape wings, sehingga mendapatkan url dari shape tersebut.
5. Masuk ke dalam If Controller untuk mengecek apakah sudah mendapatkan url tersebut.
6. Masuk ke dalam JSR223 PostProcessor untuk menampilkan ID dan semua pokemon dengan shape wings ke dalam log.

#### Hasil Task 1:
![gambar](https://github.com/leinad05/Assignment_.Net_JMeter/blob/main/Final_Project_2/Image/Task_1.png?raw=true)

#### Hasil Task 2:
![gambar](https://github.com/leinad05/Assignment_.Net_JMeter/blob/main/Final_Project_2/Image/Task_2.png?raw=true)