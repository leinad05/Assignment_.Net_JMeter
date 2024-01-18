def listBarang = []
double totalNilai = harga = 0
int counter = 1
String id = nama = ""
int stok = 0

try{
    print("Masukkan jumlah barang yang akan ditambahkan: ")
    int jumlahBarang = Integer.parseInt(System.console().readLine())

    if(jumlahBarang<=0) {
        throw new Exception("Inputan tidak boleh kosong!")
    }

    while (counter <= jumlahBarang) {
        print("Masukkan ID barang ke-$counter: ")
        id = System.console().readLine()

        print("Masukkan nama barang: ")
        nama = System.console().readLine()

        print("Masukkan harga barang: ")
        harga = Double.parseDouble(System.console().readLine())

        print("Masukkan stok barang: ")
        stok = Integer.parseInt(System.console().readLine())

        def barang = [
            id: id,
            nama: nama,
            harga: harga,
            stok: stok
        ]

        listBarang << barang
        totalNilai += harga * stok

        counter++
    }
    
    println "\nDaftar Barang:"
    for (barang in listBarang) {
        println "ID: $barang.id, Nama: $barang.nama, Harga: $barang.harga, Stok: $barang.stok"
    }

    println "\nTotal Nilai Inventaris Toko: $totalNilai"
} catch(NumberFormatException err) {
    println("Error: Masukkan harus berupa angka!")
} catch(Exception err) {
    println("Error: $err.message")
}