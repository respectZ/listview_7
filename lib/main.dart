import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:listview_7/page/index.dart';
import 'package:listview_7/model/candi.dart';
import 'package:listview_7/widget/avatar.dart';

void main() {
  runApp(const MainApp());
}

void Tile_onTap(BuildContext context) {
  // large
  if (MediaQuery.of(context).size.width >= 992) {
    print("object");
  } else {}
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "ListView 7",
      theme: ThemeData.dark(),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  List<Candi> candi = [
    Candi(
      title: "Dieng",
      deskripsi: [
        "Candi Dieng adalah kelompok kompleks candi Hindu abad ke-7 terletak di Dataran Tinggi Dieng, Kabupaten Banjarnegara, Jawa Tengah, Indonesia. Kompleks yang terdiri dari beberapa bangunan ini berasal dari Kerajaan Kalingga. Kawasan dataran tinggi ini merupakan tempat berdirinya delapan candi Hindu kecil yang merupakan salah satu bangunan keagamaan tertua yang masih bertahan yang pernah dibangun di Jawa. ",
        "Candi-candi Dieng ditemukan kembali pada 1814 oleh seorang tentara Britania yang berkunjung yang melihat reruntuhan candi berada di tengah danau. Saat itu dataran sekitar Candi Arjuna kebanjiran dan membentuk danau kecil. Pada 1856, Isidore van Kinsbergen memimpin upaya mengeringkan danau untuk mengungkap secara utuh candi-candi tersebut. Pemerintah Hindia Belanda melanjutkan proyek rekonstruksi pada 1864, dilanjutkan dengan studi lebih lanjut dan foto-foto yang diambil oleh Van Kinsbergen. Candi-candi tersebut saat ini diyakini telah dinamai sesuai dengan para pahlawan dari epos Hindu Mahabharata."
      ],
      image: Image.asset("assets/image/dieng.png"),
    ),
    Candi(
      title: "Gedong Songo",
      deskripsi: [
        "Candi Gedong Songo adalah nama sebuah komplek candi bercorak Hindu yang terletak di Desa Candi, Kecamatan Bandungan, Kabupaten Semarang. Candi ini terletak di kaki Gunung Ungaran dengan ketinggian yang mencapai 1.200 mdpl yang membuat pengunjung yang berlibur kesini dapat pula menikmati keindahan alamnya.",
        "Nama Gedong Songo berasal dari Bahasa Jawa, yaitu Gedong yang artinya bangunan dan Songo yang berarti sembilan. Candi Gedong Songo merupakan peninggalan Kerajaan Mataram Kuno yang dibangun sekitar abad ke-8. Rakai Mataram Sang Ratu Sanjaya raja adalah yang membangun Candi Gedong Songo pada awal pemerintahannya. Namun, candi peninggalan budaya Hindu ini baru ditemukan oleh Sir Thomas Stamford Raffles pada 1804. Mulanya, hanya ditemukan tujuh buah bangunan candi, sehingga dinamakan Candi Gedong Pitu. Kemudian pada sekitar tahun 1908 hingga 1911, arkeolog asal Belanda bernama Van Stein Callenfels menemukan dua bangunan candi tambahan. Sejak saat itu, namanya berubah menjadi Candi Gedong Songo dan pernah dilakukan pemugaran sebanyak dua kali. "
      ],
      image: Image.asset("assets/image/gedong_songo.png"),
    ),
    Candi(
      title: "Muara Takus",
      deskripsi: [
        "Candi Muara Takus adalah sebuah situs candi Buddha yang terletak di desa Muara Takus, Kecamatan XIII Koto, Kabupaten Kampar, Riau, Indonesia. Situs ini berjarak kurang lebih 135 kilometer dari Kota Pekanbaru. ",
        "Di dalam kompleks candi ini, terdapat beberapa bangunan yang disebut dengan Candi Sulung, Candi Bungsu, Mahligai Stupa, dan Palangka. Para ahli berbeda pendapat terkait kapan candi ini didirikan. Ada yang mengatakan pada abad ke-7, abad ke-9, dan bahkan ada yang mengatakan abad ke-11. Meski demikian, diyakini bahwa Candi Muara Takus merupakan peninggalan peradaban Budha dari masa Kerajaan Sriwijaya. Para ahli juga menganggap bahwa kawasan berdirinya candi merupakan salah satu pusat pemerintahan Kerajaan Sriwijaya."
      ],
      image: Image.asset("assets/image/muara_takus.jpg"),
    ),
    Candi(
      title: "Jago",
      deskripsi: [
        "Menurut kitab Negarakertagama pupuh 41:4 dan Pararaton, nama Candi Jago sebenarnya berasal dari kata \"Jajaghu\", yang didirikan pada masa Kerajaan Singhasari pada abad ke-13 sebagai penghormatan bagi Raja ketiga Singosari, Wisnuwardhana. Jajaghu, yang artinya adalah 'keagungan', merupakan istilah yang digunakan untuk menyebut tempat suci. Candi ini berlokasi di Dusun Jago, Desa Tumpang, Kecamatan Tumpang, Kabupaten Malang, Jawa Timur atau sekitar 22 km dari Kota Malang.",
        "Candi Jago berlatar agama Buddha Tatrayana. Salah satu ciri dari agama Buddha Tatrayana adalah arcanya yang berbentuk amoghapasa, bentuk Tatris dari awaloketeswara disertai pengiring-pengiring nya. Arca tersebut merupakan arca dari perwujudan dari raja keempat singasari yang bernama Raja Wisnuwarddhana, yang meninggal tahun 1190 Saka (1280 Masehi)"
      ],
      image: Image.asset("assets/image/jago.jpg"),
    ),
    Candi(
      title: "Kalasan",
      deskripsi: [
        "Candi Kalasan atau Candi Kalibening merupakan sebuah Bangunan Cagar Budaya yang dikategorikan sebagai candi umat Buddha. Candi ini terletak di Desa Tirtomartani, Kecamatan Kalasan, Kabupaten Sleman, Daerah Istimewa Yogyakarta, Indonesia. Candi ini memiliki 52 stupa dan berada di sisi selatan jalan raya antara Surakarta dan Jogja serta sekitar 2 km dari candi Prambanan. ",
        "Candi Kalasan berdiri di atas sebuah batur/ alas yang berdenah bujur sangkar dengan ukuran 45 x 45 meter, sedangkan tinggi candi sampai dengan batas atap yang masih tersisa adalah 24 meter. Batur candi, dahulu diduga dibatasi dengan pagar langkan yang dihias dengan genta atau stupa di bagian atasnya. Dari tinggi candi yang 24 meter tersebut dapat dibagi menjadi tiga bagian, yaitu: kaki, tubuh, dan atap. Menurut Kempers, bagian kaki Candi Kalasan berlipat ganda membentuk susunan lapik atau alas bujur sangkar dengan sisi 45 meter, kemudian di atasnya terdapat susunan kaki candi yang sebenarnya sebagai pendukung tubuh candi."
      ],
      image: Image.asset("assets/image/kalasan.jpg"),
    ),
    Candi(
      title: "Brahu",
      deskripsi: [
        "Candi Brahu terletak di Dukuh Jambu Mente, Desa Bejijong, Kecamatan Trowulan, Kabupaten Mojokerto. Tepat di depan kantor Suaka Peninggalan Sejarah dan Purbakala Jawa Timur yang terletak di jalan raya Mojokerto-Jombang terdapat jalan masuk ke arah utara yang agak sempit namun telah diaspal. Candi Brahu terletak di sisi kanan jalan kecil tersebut, sekitar 1,8 km dari jalan raya.",
        "Ada pendapat yang mengatakan bahwa Candi Brahu lebih tua dibandingkan candi lain yang ada di sekitar Trowulan. Nama Brahu dihubungkan diperkirakan berasal dari kata 'Wanaru' atau 'Warahu', yaitu nama sebuah bangunan suci yang disebutkan di dalam prasasti tembaga 'Alasantan' yang ditemukan kira-kira 45 meter di sebelah barat Candi Brahu. Prasasti ini dibuat pada tahun 861 Saka atau, tepatnya, 9 September 939 M atas perintah Raja Mpu Sindok dari Kahuripan. Menurut masyarakat di sekitarnya, candi ini dahulu berfungsi sebagai tempat pembakaran jenazah raja-raja Brawijaya. Akan tetapi, hasil penelitian yang dilakukan terhadap candi tersebut tidak menunjukkan adanya bekas-bekas abu atau mayat, karena bilik candi sekarang sudah kosong."
      ],
      image: Image.asset("assets/image/brahu.jpg"),
    ),
    Candi(
      title: "Mendut",
      deskripsi: [
        "Candi Mendut terletak di Desa Mendut, Kecamatan Mungkid, Kabupaten Magelang, Jawa Tengah, sekitar 38 km ke arah barat laut dari Yogyakarta. Lokasinya hanya sekitar 3 km dari Candi Borobudur, yang mana Candi Buddha ini diperkirakan mempunyai kaitan erat dengan Candi Pawon dan Candi Mendut. Ketiga candi tersebut terletak pada satu garis lurus arah utara-selatan.",
        "Belum didapatkan kepastian mengenai kapan Candi Mendut dibangun, namun J.G. de Casparis menduga bahwa Candi Mendut dibangun oleh raja pertama dari wangsa Syailendra pada tahun 824 M. Dugaan tersebut didasarkan pada isi Prasasti Karangtengah (824 M), yang menyebutkan bahwa Raja Indra telah membuat bangunan suci bernama Wenuwana. Casparis mengartikan Wenuwana (hutan bambu) sebagai Candi Mendut. Diperkirakan usia candi Mendut lebih tua daripada usia Candi Borobudur."
      ],
      image: Image.asset("assets/image/mendut.jpg"),
    ),
    Candi(
      title: "Borobudur",
      deskripsi: [
        "Borobudur dibangun dengan gaya Mandala yang mencerminkan alam semesta dalam kepercayaan Buddha. Struktur bangunan ini berbentuk kotak dengan empat pintu masuk dan titik pusat berbentuk lingkaran. Jika dilihat dari luar hingga ke dalam terbagi menjadi dua bagian yaitu alam dunia yang terbagi menjadi tiga zona di bagian luar, dan alam Nirwana di bagian pusat."
      ],
      image: Image.asset("assets/image/borobudur.jpg"),
    ),
    Candi(
      title: "Prambanan",
      deskripsi: [
        "Candi Prambanan merupakan candi Hindu yang terbesar di Indonesia. Sampai saat ini belum dapat dipastikan kapan candi ini dibangun dan atas perintah siapa, namun kuat dugaan bahwa Candi Prambanan dibangun sekitar pertengahan abad ke-9 oleh raja dari Wangsa Sanjaya, yaitu Raja Balitung Maha Sambu. Dugaan tersebut didasarkan pada isi Prasasti Syiwagrha yang ditemukan di sekitar Prambanan dan saat ini tersimpan di Museum Nasional di Jakarta. Prasasti berangka tahun 778 Saka (856 M) ini ditulis pada masa pemerintahan Rakai Pikatan."
      ],
      image: Image.asset("assets/image/prambanan.jpg"),
    ),
    Candi(
        title: "Pawon",
        deskripsi: [
          "Candi Pawon terletak di Desa Borobudur, Kecamatan Borobudur, Kabupaten Magelang, Propinsi Jawa Tengah. Candi yang mempunyai nama lain Candi Brajanalan ini lokasinya sekitar 2 km ke arah timur laut dari Candi Borobudur dan 1 km ke arah tenggara dari Candi Mendut. Letak Candi Mendut, Candi Pawon dan Candi Borobudur yang berada pada satu garis lurus mendasari dugaan bahwa ketiga candi Buddha tersebut mempunyai kaitan yang erat. Selain letaknya, kemiripan motif pahatan di ketiga candi tersebut juga mendasari adanya keterkaitan di antara ketiganya. Poerbatjaraka, bahkan berpendapat bahwa candi Pawon merupakan upa angga (bagian dari) Candi Borobudur.",
          "Menurut Casparis, Candi Pawon merupakan tempat penyimpanan abu jenazah Raja Indra ( 782 - 812 M ), ayah Raja Samarrattungga dari Dinasti Syailendra. Nama \"Pawon\" sendiri, menurut sebagian orang, berasal dari kata pawuan yang berarti tempat menyimpan awu (abu). Dalam ruangan di tubuh Candi Pawon, diperkirakan semula terdapat Arca Bodhhisatwa, sebagai bentuk penghormatan kepada Raja Indra yang dianggap telah mencapai tataran Bodhisattva, maka dalam candi ditempatkan arca Bodhisatwva. Dalam Prasasti Karang Tengah disebutkan bahwa arca tersebut mengeluarkan wajra (sinar). Pernyataan tersebut menimbulkan dugaan bahwa arca Bodhisattwa tersebut dibuat dari perunggu."
        ],
        image: Image.asset("assets/image/pawon.jpg"))
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView 7"),
      ),
      body: IndexPage(
        candi: candi,
      ),
      endDrawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(
              image: NetworkImage(
                "https://pbs.twimg.com/media/FNUlQzjagAE9Ux9?format=jpg&name=large",
              ),
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                      child: Text(
                    "PBM ListView 7",
                    style: TextStyle(fontSize: 36),
                  )),
                  SizedBox(height: 8.0),
                  Avatar(
                    image: NetworkImage(
                      "https://yt3.ggpht.com/63ZbuotELvSvx4QOY6S3Z5s1YrUabTL1olr3NT48l3kY3iHymxSdX_t8Ecue7qzCW76VcnhX=s176-c-k-c0x00ffffff-no-rj-mo",
                    ),
                    title: "Riezqu Ibnanta",
                    subtitle: "202410102089",
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Avatar(
                    image: NetworkImage(
                      "https://yt3.ggpht.com/63ZbuotELvSvx4QOY6S3Z5s1YrUabTL1olr3NT48l3kY3iHymxSdX_t8Ecue7qzCW76VcnhX=s176-c-k-c0x00ffffff-no-rj-mo",
                    ),
                    title: "Imro'atul Fitriyah",
                    subtitle: "202410102032",
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Avatar(
                    image: NetworkImage(
                      "https://yt3.ggpht.com/63ZbuotELvSvx4QOY6S3Z5s1YrUabTL1olr3NT48l3kY3iHymxSdX_t8Ecue7qzCW76VcnhX=s176-c-k-c0x00ffffff-no-rj-mo",
                    ),
                    title: "Mikli Oktarianto",
                    subtitle: "202410102042",
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Avatar(
                    image: NetworkImage(
                      "https://yt3.ggpht.com/63ZbuotELvSvx4QOY6S3Z5s1YrUabTL1olr3NT48l3kY3iHymxSdX_t8Ecue7qzCW76VcnhX=s176-c-k-c0x00ffffff-no-rj-mo",
                    ),
                    title: "Nurita Indah Amalia",
                    subtitle: "202410102019",
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Avatar(
                    image: NetworkImage(
                      "https://yt3.ggpht.com/63ZbuotELvSvx4QOY6S3Z5s1YrUabTL1olr3NT48l3kY3iHymxSdX_t8Ecue7qzCW76VcnhX=s176-c-k-c0x00ffffff-no-rj-mo",
                    ),
                    title: "Laida Lavenia. H",
                    subtitle: "202410102041",
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
