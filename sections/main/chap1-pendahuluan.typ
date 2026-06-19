= PENDAHULUAN

== Latar Belakang

Perkotaan modern di Indonesia menghadapi tantangan struktural yang sangat kompleks dalam pengelolaan sampah. Pertumbuhan populasi yang eksponensial, ditambah dengan perubahan pola konsumsi masyarakat menuju ekonomi linear (take-make-dispose), telah melahirkan krisis sampah yang mengancam ketahanan lingkungan dan kesehatan publik. Data menunjukkan bahwa Kota Jakarta saja memproduksi #strong[6.270 ton sampah setiap hari]—setara dengan berat 25 ekor paus biru atau volume yang dapat memenuhi 4 lapangan sepak bola #cite(<s3>) .

#figure(
  image("../../media/fig1_infografis.png", width: 80%),
  caption: [Infografis statistik sampah Jakarta yang menunjukkan skala masalah #cite(<s3>)],
  kind: "gambar",
)

Dari total sampah tersebut, meskipun #strong[79% secara resmi dikirim ke Tempat Pembuangan Akhir (TPA) Bantargebang], terdapat #strong[21% atau sekitar 1.316 ton sampah per hari yang hilang dari alur pengelolaan formal] #cite(<s3>) . Sampah ini akhirnya berakhir di lokasi-lokasi pembuangan liar (illegal dumping) seperti bantaran sungai, lahan kosong, dan permukiman padat.

Secara historis, dampak buruk dari penumpukan sampah liar telah terbukti mematikan. Tragedi longsoran TPA Leuwigajah pada Februari 2005 di Bandung, yang menimbun 2,7 juta meter kubik sampah dan menewaskan 140 jiwa serta merusak 69 rumah, adalah pengingat kelam bahwa pengelolaan sampah yang buruk adalah ancaman keselamatan publik #cite(<s3>) .

#figure(
  image("../../media/fig2_sampah_liar.jpg", width: 80%),
  caption: [Foto udara tumpukan sampah liar di kawasan Cilincing, Jakarta Utara #cite(<s5>)],
  kind: "gambar",
)

Di sisi lain, data juga menunjukkan bahwa #strong[55% masyarakat tidak mengetahui kemana sampah mereka seharusnya dibuang], dan hanya #strong[2% sampah yang didaur ulang] #cite(<s3>) . Ketiadaan akses informasi dan mekanisme pelaporan yang mudah menjadi hambatan utama.

Oleh karena itu, diperlukan sebuah transformasi digital menyeluruh berupa #strong[Sistem Pelaporan dan Penanganan Sampah Liar (Illegal Dumping)] yang terintegrasi. Sistem ini dirancang untuk menjembatani kesenjangan antara mata-mata warga (citizen sensor) dengan lengan panjang penegakan pemerintah, menggunakan teknologi Location-Based Services (LBS), gamifikasi, dan analitik data untuk menciptakan respons cepat dan akuntabel.

== Rumusan Masalah

Berdasarkan latar belakang tersebut, rumusan masalah yang akan diselesaikan dalam proyek ini adalah:

+ Bagaimana merancang dan membangun sistem pelaporan sampah liar berbasis mobile yang memudahkan warga dalam menyampaikan aduan secara cepat dan akurat?
+ Bagaimana mengimplementasikan sistem pelacakan status penanganan sampah liar secara transparan dan real-time bagi pelapor?
+ Bagaimana memetakan, menganalisis, dan memprioritaskan titik-titik pembuangan sampah liar menggunakan dashboard GIS untuk membantu pemerintah kota dalam alokasi sumber daya?

== Tujuan Proyek

Tujuan dari Proyek Akhir ini adalah:

+ Merancang dan mengembangkan aplikasi mobile pelaporan sampah liar yang terintegrasi dengan sensor lokasi (LBS) dan fitur foto otomatis.
+ Membangun mekanisme pelacakan status penanganan laporan secara transparan dengan notifikasi real-time dan konfirmasi foto hasil kerja (*after-cleaning*).
+ Mengembangkan dashboard monitoring berbasis GIS untuk pemetaan sebaran sampah liar, analisis spasial (*heat map*), dan manajemen prioritas penanganan.
+ Menerapkan fitur gamifikasi berupa poin loyalitas untuk meningkatkan partisipasi aktif warga kota.

== Manfaat Proyek

#strong[Bagi Warga Kota:]

+ Memberdayakan warga sebagai *agent of change* dalam menjaga kebersihan lingkungan melalui mekanisme pelaporan yang dipersonalisasi dan reward-based.
+ Meningkatkan transparansi birokrasi; warga dapat memantau progres penanganan, mengurangi frustrasi akibat laporan yang tidak ditindaklanjuti.
+ Menyediakan edukasi lingkungan hidup dan informasi lokasi TPS (Tempat Pembuangan Sementara) legal terdekat.

#strong[Bagi Pemerintah Kota (DLH/Dinas Lingkungan Hidup):]

+ Mengotomatisasi alur kerja (workflow) penanganan laporan, mengurangi ketergantungan pada proses manual yang rentan kesalahan.
+ Mendapatkan data spasial dan temporal yang akurat untuk melakukan perencanaan preventif terhadap sampah liar.
+ Meningkatkan indeks kepuasan masyarakat dan citra pemerintah yang responsif terhadap keluhan publik.

#strong[Bagi Lingkungan dan Pembangunan Kota:]

+ Menekan angka pencemaran tanah dan air akibat tumpukan sampah liar yang mengandung mikroplastik dan bahan beracun.
+ Mendukung visi pembangunan kota berkelanjutan (*smart city* & *green city*).

== Ruang Lingkup Proyek

Untuk menjaga agar proyek ini tetap terfokus dan selesai tepat waktu, ditentukan beberapa batasan masalah (ruang lingkup) sebagai berikut:

+ Wilayah uji coba sistem dibatasi pada 2 (dua) kecamatan prioritas dengan tingkat timbulan sampah liar tertinggi di Kota Jakarta.
+ Sistem ini berfokus pada pelaporan, verifikasi, visualisasi data, dan manajemen alur kerja pembersihan, serta tidak mencakup optimasi rute logistik armada fisik pengangkut sampah.
+ Kategori sampah yang dapat dilaporkan dibatasi pada sampah rumah tangga (organik dan anorganik) serta sampah sejenis sampah rumah tangga yang menumpuk secara ilegal, tidak mencakup limbah industri B3 skala besar.
+ Proses konfirmasi penyelesaian laporan memerlukan unggahan bukti foto *after-cleaning* oleh petugas kebersihan lapangan yang divalidasi oleh admin dinas.

== Sistematika Penulisan

Sistematika penyusunan proposal Proyek Akhir ini dibagi menjadi tiga bab utama dengan rincian sebagai berikut:

+ #strong[BAB I PENDAHULUAN]: Berisi latar belakang masalah krisis sampah liar, rumusan masalah, tujuan proyek, manfaat proyek, ruang lingkup (batasan masalah), serta sistematika penulisan proposal.
+ #strong[BAB II TINJAUAN PUSTAKA]: Berisi landasan teori teknologi pendukung (LBS, Gamifikasi, GIS, Agile Scrum), studi banding (*benchmarking*) dengan beberapa platform sejenis, dan kerangka teoritis (kerangka berpikir) proyek.
+ #strong[BAB III METODOLOGI PROYEK]: Berisi pendekatan pengembangan sistem menggunakan metodologi Agile Scrum, spesifikasi alat dan bahan (hardware & software), prosedur pelaksanaan tahapan proyek, teknik pengumpulan data, serta jadwal pelaksanaan dan rencana anggaran biaya (RAB).
