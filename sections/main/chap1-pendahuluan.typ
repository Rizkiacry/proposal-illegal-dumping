= PENDAHULUAN

== Latar Belakang

Perkotaan modern di Indonesia menghadapi tantangan struktural yang sangat kompleks dalam pengelolaan sampah. Pertumbuhan populasi yang eksponensial, ditambah dengan perubahan pola konsumsi masyarakat menuju ekonomi linear (take-make-dispose), telah melahirkan krisis sampah yang mengancam ketahanan lingkungan dan kesehatan publik. Data menunjukkan bahwa Kota Jakarta saja memproduksi #strong[6.270 ton sampah setiap hari]—setara dengan berat 25 ekor paus biru atau volume yang dapat memenuhi 4 lapangan sepak bola #cite(<s3>).

#figure(
  image("../../media/fig1_infografis.png", width: 80%),
  caption: [Infografis statistik sampah Jakarta yang menunjukkan skala masalah #cite(<s3>)],
  kind: "gambar",
)

Dari total sampah tersebut, meskipun #strong[79% secara resmi dikirim ke Tempat Pembuangan Akhir (TPA) Bantargebang], terdapat #strong[21% atau sekitar 1.316 ton sampah per hari yang hilang dari alur pengelolaan formal] #cite(<s3>). Sampah ini akhirnya berakhir di lokasi-lokasi pembuangan liar (illegal dumping) seperti bantaran sungai, lahan kosong, dan permukiman padat.

Secara historis, dampak buruk dari penumpukan sampah liar telah terbukti mematikan. Tragedi longsoran TPA Leuwigajah pada Februari 2005 di Bandung, yang menimbun 2,7 juta meter kubik sampah dan menewaskan 140 jiwa serta merusak 69 rumah, adalah pengingat kelam bahwa pengelolaan sampah yang buruk adalah ancaman keselamatan publik #cite(<s3>).

#figure(
  image("../../media/fig2_sampah_liar.jpg", width: 80%),
  caption: [Foto udara tumpukan sampah liar di kawasan Cilincing, Jakarta Utara #cite(<s5>)],
  kind: "gambar",
)

Di sisi lain, data juga menunjukkan bahwa #strong[55% masyarakat tidak mengetahui kemana sampah mereka seharusnya dibuang], dan hanya #strong[2% sampah yang didaur ulang] #cite(<s3>). Ketiadaan akses informasi dan mekanisme pelaporan yang mudah menjadi hambatan utama.

Oleh karena itu, diperlukan sebuah transformasi digital menyeluruh berupa #strong[Sistem Pelaporan dan Penanganan Sampah Liar (Illegal Dumping)] yang terintegrasi. Sistem ini dirancang untuk menjembatani kesenjangan antara mata-mata warga (citizen sensor) dengan lengan panjang penegakan pemerintah, menggunakan teknologi Location-Based Services (LBS), gamifikasi, dan analitik data untuk menciptakan respons cepat dan akuntabel.

== Rumusan Masalah

Berdasarkan latar belakang tersebut, rumusan masalah yang akan diselesaikan dalam proyek ini adalah:

+ Bagaimana cara memfasilitasi warga kota agar dapat melaporkan keberadaan sampah liar dengan cepat, akurat, dan mudah?
+ Bagaimana sistem dapat memberikan informasi status penanganan sampah liar kepada warga secara real-time dan transparan?
+ Bagaimana sistem dapat membantu pemerintah kota dalam memprioritaskan, memetakan, dan menganalisis pola sampah liar secara efektif untuk alokasi sumber daya yang optimal?
+ Bagaimana mencapai target penyelesaian laporan dengan batas waktu yang telah ditentukan, yaitu menyelesaikan #strong[85% laporan dalam waktu 7 hari]?

== Tujuan

Sistem Pelaporan dan Penanganan Sampah Liar Kota bertujuan untuk:

+ Memfasilitasi warga dalam melaporkan titik-titik sampah liar (bantaran sungai, lahan kosong, fasilitas umum) secara instan melalui perangkat mobile.
+ Memberikan akses pelacakan transparan kepada warga untuk mengetahui status penanganan laporan mereka, meningkatkan kepercayaan terhadap pemerintah.
+ Memprioritaskan penerimaan laporan oleh pemerintah, memetakan titik rawan dumping, dan memonitor penyelesaian secara data-driven.
+ Mencapai target #strong[15.000 laporan valid per tahun] dengan #strong[85% tingkat penyelesaian (resolution rate) dalam kurun waktu 7 hari].

== Manfaat

#strong[Bagi Warga Kota:]

+ Memberdayakan warga sebagai *agent of change* dalam menjaga kebersihan lingkungan melalui mekanisme pelaporan yang dipersonalisasi dan reward-based.
+ Meningkatkan transparansi birokrasi; warga dapat memantau progres penanganan, mengurangi frustrasi akibat laporan yang "masuk lubang hitam" (black hole).
+ Menyediakan edukasi lingkungan hidup dan informasi lokasi TPS (Tempat Pembuangan Sementara) legal terdekat.

#strong[Bagi Pemerintah Kota (DLH/Dinas Lingkungan Hidup):]

+ Mengotomatisasi alur kerja (workflow) penanganan laporan, mengurangi ketergantungan pada proses manual yang rentan kesalahan.
+ Mendapatkan data spasial dan temporal yang akurat untuk melakukan *predictive policing* terhadap sampah liar.
+ Meningkatkan indeks kepuasan masyarakat dan citra pemerintah yang responsif terhadap keluhan publik.

#strong[Bagi Lingkungan dan Pembangunan Kota:]

+ Menekan angka pencemaran tanah dan air akibat tumpukan sampah liar yang mengandung mikroplastik dan bahan beracun.
+ Mendukung visi pembangunan kota berkelanjutan (smart city & green city).
