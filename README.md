# Koprasi_Simpanpinjam

Aplikasi Koprasi_Simpanpinjam menggunakan Framework Laravel 5.8. Aplikasi ini cocok untuk digunakan umum. Aplikasi ini memiliki 2 role, yaitu Administrator , dan User. Beberapa CRUD menggunakan AJAX untuk pengambilan data agar mengurangi penggunaan pindah halaman.

### Prasyarat

Berikut beberapa hal yang perlu diinstal terlebih dahulu:

-   Composer (https://getcomposer.org/)
-   PHP 7.2.x
-   MySQL 14.5.x
-  Laragon

Jika Anda menggunakan Laragon, untuk PHP dan MySQL sudah menjadi 1 (bundle) didalam aplikasi Laragon.

### Fitur
-   Register
-   Log In
-   CRUD Pengguna
-   CRUD Dasboard
-   CRUD Mutasi
-   Informasi peminjaman dari User

### Preview Gambar

Login
![Image 1](https://drive.google.com/file/d/1zubcgDXzHiz8bqt8jeKD6F2-pgqKUCY-/view?usp=drivesdk )

Register Admin dan User
![Image 2](https://imgur.com/djsHF5V)

dasboard user
![Image 3](https://imgur.com/NPpo3Kj)

Dasboard Admin
![Image 4](https://imgur.com/eQt8e8O)

Pengajun Pinjaman User
![Image 5](https://imgur.com/fltIZFc)

Ajukan Pinjaman
![Image 6](https://imgur.com/OylQ16B)

Mutasi Simpanan User
![Image 7](https://imgur.com/oKggZfA)

Mutasi Pinjaman User
![Image 8](https://imgur.com/HvTz1bV)

Nasabah Admin
![Image 9](https://imgur.com/k0FBSaj)

Tambah data nasabah
![Image 10](https://imgur.com/IMD5qhA)

Pengajuan Pinjaman
![Image 11](https://imgur.com/Xat46Ej)
### Langkah-langkah instalasi

-   Clone repository ini

-   Install seluruh packages yang dibutuhkan


composer install


-   Siapkan database dan atur file .env sesuai dengan konfigurasi Anda
-   Ubah value APP_NAME= pada file .env menjadi nama aplikasi yang anda inginkan
-   Jika sudah, migrate seluruh migrasi dan seeding data


php artisan migrate --seed


-   Jalankan local server


php artisan serve


-   User default aplikasi untuk login

##### Administrator 


Email       : admin@mail.com
Password    : secret

##### User


Email       : anggota@mail.com
Password    : secret


### Dibuat dengan

-   [Laravel](https://laravel.com) - Web Framework

### Lisensi

Aplikasi ini boleh untuk dibagi dan diubah. Mohon tidak untuk diperjualbelikan!
