print("Masukkan Jumlah Data: ")
int jumlahData = Integer.parseInt(System.console().readLine())
double totalBilangan = 0

if (jumlahData>0) {
    for (int i = 1; i <= jumlahData; i++) {
        print("Masukkan bilangan ke-$i: ")
        String inputBilangan = System.console().readLine()

        if (!inputBilangan.isNumber()) {
            print("Error: Masukkan harus berupa angka")
            return
        }

        double bilangan = Double.parseDouble(inputBilangan)
        totalBilangan += bilangan
    }

    double rataRata = totalBilangan / jumlahData
    print("Rata-rata: $rataRata.")
} else {
    print("Tidak ada bilangan yang diinput!")
}