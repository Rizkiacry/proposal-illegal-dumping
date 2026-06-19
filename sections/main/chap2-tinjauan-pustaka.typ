= TINJAUAN PUSTAKA

== Lingkup Sistem

Sistem ini akan beroperasi sebagai platform *full-stack* yang terdiri dari aplikasi mobile (Android/iOS) bagi masyarakat dan dashboard web berbasis Geographic Information System (GIS) bagi admin pemerintah. Arsitektur sistem mengadopsi model three-tier untuk memastikan keamanan dan skalabilitas #cite(<s6>). Fitur utama yang dikembangkan meliputi:

+ #strong[Pelaporan Sampah Liar (Citizen Reporting):] Warga dapat mengajukan laporan dengan mengunggah foto, geolokasi GPS otomatis, kategori sampah (organik, anorganik, B3), deskripsi, dan estimasi volume sampah.
+ #strong[Pelacakan Status Real-time:] Warga menerima notifikasi push saat laporan "Diterima", "Sedang Diproses", "Selesai", atau "Ditolak" beserta bukti foto *after-cleaning* dari petugas.
+ #strong[Notifikasi Otomatis & Gamifikasi:] Sistem menerapkan mekanisme *gamifikasi* untuk meningkatkan *user engagement*. Warga akan mendapatkan poin loyalitas setiap kali melaporkan, yang dapat ditukar dengan voucher makanan, diskon retribusi sampah, atau produk daur ulang #cite(<s2>).
+ #strong[Dashboard Monitoring GIS:] Peta interaktif real-time yang menampilkan *heat map* titik-titik rawan sampah liar, memungkinkan pemerintah melihat tren laporan bulanan, waktu rata-rata penyelesaian, dan kinerja petugas lapangan.
+ #strong[Modul Edukasi & Direktori TPS:] Integrasi artikel edukasi pengurangan sampah (reduce/reuse/recycle) dan peta digital lokasi TPS terdekat #cite(<s1>).

== Sasaran Pengguna

Sistem ini dirancang untuk melayani dua segmen pengguna utama:

+ #strong[Warga Kota (Citizen Reporter):] Segmen utama sebagai pengguna aktif yang berperan sebagai mata dan telinga pemerintah di lapangan. Membutuhkan antarmuka yang intuitif, ringan (low data consumption), dan memberikan insentif psikologis maupun material.
+ #strong[Pemerintah Kota (Admin DLH & Petugas Lapangan):] Segmen operasional yang membutuhkan *tools* manajemen kasus (*case management*). Admin memerlukan otoritas untuk memverifikasi, menugaskan ke petugas wilayah, memvalidasi hasil pembersihan, serta mengelola konten edukasi.

== Benchmarking

Untuk memastikan relevansi dan efektivitas, sistem ini dikembangkan dengan melakukan studi banding (*benchmarking*) mendalam terhadap platform global dan lokal yang telah terbukti berhasil:

+ #strong[FixMyStreet (Global Standard):] Platform open-source asal Inggris. Unggul dalam integrasi peta (map-based reporting) dan transparansi status publik. Namun, sistem ini bersifat umum dan belum memiliki fitur spesifik pengelolaan sampah maupun gamifikasi #cite(<s7>).
+ #strong[Silampah (Kota Semarang):] Aplikasi pelaporan sampah resmi Dinas Lingkungan Hidup Semarang. Berhasil menunjukkan adopsi teknologi oleh pemerintah daerah. Namun, rendahnya jumlah aduan karena kurangnya fitur insentif dan edukasi #cite(<s8>).
+ #strong[Simpelsi (Kota Nganjuk):] Sistem Pelaporan Sampah Ilegal oleh Politeknik Negeri Jember. Menawarkan fitur mobile reporting, direktori TPS, dan dashboard admin yang komprehensif #cite(<s1>).

#figure(
  image("../../media/fig3_simpelsi.jpg", width: 80%),
  caption: [Poster sistem Simpelsi yang menampilkan fitur mobile dan website admin #cite(<s1>)],
  kind: "gambar",
)

+ #strong[LaporSampah.id (Universitas Dinamika Surabaya):] Prototype inovatif dengan elemen gamifikasi dan partisipatif. Pengguna bisa berkomentar, mengumpulkan poin, dan menukarkannya dengan voucher. Ini adalah *benchmark* utama untuk strategi retensi pengguna #cite(<s2>).

#figure(
  image("../../media/fig4_gamifikasi.png", width: 80%),
  caption: [Desain sistem LaporSampah.id dengan fitur gamifikasi (reward points) #cite(<s2>)],
  kind: "gambar",
)

Proyek ini akan mengadopsi kemudahan geolokasi FixMyStreet, legitimasi institusional Silampah, struktur data Simpelsi, dan strategi engagement LaporSampah.id, sambil menyesuaikannya dengan regulasi dan kebiasaan lokal.

== Indikator Keberhasilan (Key Performance Indicators)

+ #strong[Adopsi Pengguna:] Minimal #strong[15.000 laporan valid per tahun] dari berbagai wilayah administrasi kota.
+ #strong[Efisiensi Waktu:] Minimal #strong[85% laporan dapat diselesaikan dalam waktu maksimal 7 hari kalender] sejak laporan diverifikasi.
+ #strong[Kepuasan Pengguna (CSAT):] Skor #strong[4.2/5.0] pada survei triwulanan.
+ #strong[Reduksi Titik Rawan:] Penurunan #strong[20% pengulangan laporan (re-reporting)] di lokasi yang sama dalam 3 bulan.
