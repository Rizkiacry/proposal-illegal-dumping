= TINJAUAN PUSTAKA

== Landasan Teori

=== Location-Based Services (LBS)
Location-Based Services (LBS) adalah layanan berbasis teknologi informasi yang mengintegrasikan kemampuan pengolahan data dengan informasi lokasi geografis pengguna secara real-time #cite(<s6>) . Pada sistem ini, LBS digunakan untuk mengidentifikasi koordinat lintang dan bujur secara otomatis menggunakan GPS pada perangkat mobile ketika warga memotret tumpukan sampah liar. Hal ini memastikan bahwa laporan yang masuk memiliki data lokasi presisi tinggi untuk memudahkan penemuan lokasi pembersihan oleh petugas lapangan.

=== Gamifikasi
Gamifikasi didefinisikan sebagai penggunaan elemen-elemen desain game (seperti poin, lencana, papan peringkat, dan reward) dalam konteks non-game untuk meningkatkan keterlibatan, loyalitas, dan motivasi pengguna #cite(<s2>) . Untuk mengatasi masalah rendahnya partisipasi aktif warga dalam melaporkan masalah lingkungan, sistem ini mengintegrasikan mekanisme gamifikasi di mana setiap laporan valid yang terverifikasi akan memberikan poin loyalitas kepada pelapor. Poin tersebut dapat dikumpulkan dan ditukarkan dengan insentif nyata, seperti voucher belanja digital atau potongan retribusi sampah daerah.

=== Geographic Information System (GIS)
Geographic Information System (GIS) adalah sistem berbasis komputer yang digunakan untuk menangkap, menyimpan, memeriksa, dan menampilkan data yang terkait dengan posisi-posisi di permukaan bumi. Dalam proyek ini, teknologi GIS digunakan untuk membangun dashboard visualisasi bagi dinas kebersihan kota. Dashboard ini akan menampilkan pemetaan spasial dari tumpukan sampah liar, sebaran lokasi dengan kepadatan laporan tinggi (*heat map*), serta status penanganan laporan secara temporal untuk memfasilitasi pengambilan keputusan yang lebih cepat dan objektif.

=== Metodologi Agile Scrum
Agile Scrum adalah kerangka kerja (*framework*) pengembangan produk yang bersifat iteratif dan inkremental untuk mengelola pengembangan sistem yang kompleks. Scrum membagi proses pengembangan ke dalam siklus-siklus kecil yang disebut *Sprint* (biasanya berdurasi 2 minggu). Metodologi ini diterapkan untuk memastikan bahwa pengembangan fitur sistem dapat beradaptasi secara cepat terhadap umpan balik dari pengguna (warga dan dinas lingkungan hidup) sepanjang 6 bulan masa pengembangan.

== Penelitian Terkait

Untuk memposisikan kontribusi dan keunggulan sistem yang dikembangkan, dilakukan studi banding (*benchmarking*) terhadap empat platform sejenis yang telah dipublikasikan atau diimplementasikan sebelumnya:

+ #strong[FixMyStreet (Karya MySociety, Inggris)] #cite(<s7>) : Merupakan platform pelaporan masalah lingkungan perkotaan berskala global. Platform ini sangat unggul dalam kemudahan visualisasi peta pelaporan. Namun, kelemahannya terletak pada sifatnya yang sangat umum (generalist) dan tidak memiliki modul gamifikasi untuk retensi pengguna serta alur kerja pembersihan yang spesifik untuk sampah.
+ #strong[Silampah (Dinas Lingkungan Hidup Kota Semarang)] #cite(<s8>) : Aplikasi pelaporan sampah tingkat kota yang dikelola langsung oleh pemerintah daerah. Meskipun memiliki legitimasi institusional yang kuat, aplikasi ini kurang mendapat adopsi masif dari masyarakat karena antarmuka yang kurang ramah pengguna dan tidak adanya sistem insentif psikologis maupun material bagi warga.
+ #strong[Simpelsi (Politeknik Negeri Jember)] #cite(<s1>) : Sistem pelaporan sampah ilegal yang mengintegrasikan aplikasi mobile reporting dengan direktori lokasi TPS legal serta dashboard dinas. Simpelsi memberikan kerangka struktur data pelaporan yang sangat baik, namun belum menyentuh aspek gamifikasi dan notifikasi real-time interaktif antara petugas dan pelapor.
+ #strong[LaporSampah.id (Universitas Dinamika Surabaya)] #cite(<s2>) : Merupakan rancangan sistem pelaporan partisipatif yang menitikberatkan pada aspek gamifikasi. Warga dapat mengumpulkan poin dari aduan yang divalidasi dan menukarkannya dengan voucher digital. Sistem ini menjadi acuan utama perancangan modul gamifikasi pada proyek ini.

#figure(
  image("../../media/fig3_simpelsi.jpg", width: 85%),
  caption: [Poster sistem Simpelsi yang menampilkan fitur mobile dan website admin #cite(<s1>)],
  kind: "gambar",
)

#figure(
  image("../../media/fig4_gamifikasi.png", width: 85%),
  caption: [Desain sistem LaporSampah.id dengan fitur gamifikasi (reward points) #cite(<s2>)],
  kind: "gambar",
)

== Kerangka Teoritis

Proyek ini dibangun berdasarkan kerangka berpikir sistematis yang menghubungkan partisipasi publik dengan penegakan operasional pemerintah daerah. Alur kerja sistem dirancang dalam siklus tertutup (*closed-loop system*) untuk memastikan setiap aduan warga ditangani secara tuntas dan transparan:

1. #strong[Fase Input (Citizen Sensor)]: Warga mendeteksi adanya tumpukan sampah liar, lalu mengambil foto dan mengirimkan laporan melalui aplikasi mobile. Sistem LBS secara otomatis melampirkan koordinat lokasi.
2. #strong[Fase Proses (Government Workflow)]:
   - Admin Dinas Lingkungan Hidup memverifikasi kevalidan laporan melalui Dashboard GIS.
   - Jika laporan valid, sistem menugaskan petugas kebersihan wilayah terdekat.
   - Petugas lapangan menuju lokasi koordinat GPS, membersihkan sampah liar, dan mengunggah foto bukti hasil pembersihan (*after-cleaning*).
3. #strong[Fase Output (Validation & Reward)]:
   - Sistem mengirimkan notifikasi *after-cleaning* beserta foto bukti penyelesaian kepada pelapor asli.
   - Poin gamifikasi secara otomatis ditambahkan ke akun pelapor setelah status laporan berubah menjadi "Selesai".
4. #strong[Fase Outcome (Data-Driven Policy)]: Dashboard GIS mengakumulasikan data laporan spasial dan temporal untuk menganalisis tren wilayah rawan dumping (*heat map*) guna pencegahan preventif jangka panjang.
