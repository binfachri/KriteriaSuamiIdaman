import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.red,
          primaryColor: Colors.red,
          canvasColor: Colors.redAccent,
          appBarTheme: AppBarTheme(color: Colors.red, elevation: 0)),
      home: HomeUtama(),
    );
  }
}

class HomeUtama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Kriteria Suami Idaman'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.info_outline)
              , onPressed: () {

                AlertDialog(
                  title: Text('About Me'),
                  content: new Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      _buildAboutMe()
                    ],
                  ),
                  actions: <Widget>[
                    new FlatButton(
                        onPressed: (){
                          Navigator.of(context);
                        },
                        child: const Text('Close'))
                  ],
                );
              }),
          SizedBox(
            width: 20.0,
          ),
        ],
      ),

      body: PageView(
       children: <Widget>[
         kriteriaItem('Kuat Aqidah dan Agamanya',
             'https://i2.wp.com/virusbiru.com/handsome/wp-content/uploads/2016/12/halal-couple.jpg?w=498&ssl=1',
             'Sebenarnya apa yang menjadi tolak ukur lelaki sholeh menurut islam. Ya, aqidah yang lurus dan agama yang bagus tidak bisa dipisahkan satu sama lain.Sebab dengan menjalani agamanya dengan benar seorang lelaki akan menjadi panutan yang baik bagi orang lain ditambah lagi panutan bagi keluarganya. Menjalankan shalat fardhu menjauhi segala bentuk kesyirikan berjamaah di mesjid merupakan ciri lelaki sholeh yang nantinya inshaAllah akan mengantarkan dirinya istrinya dan keluarganya menuju surga Allah. Hasil dari amal sholehnya itu dapat dinilai dari akhlaknya seseorang yang benar-benar sholeh akan bisa kita nilai dari bagaimana ia meperlakukan orang lain terutama ibunya'),

         kriteriaItem('Pengayom dan Penyantun',
             'https://i1.wp.com/virusbiru.com/handsome/wp-content/uploads/2016/12/Pasangan-Romantis-Ala-Jepang-di-Huan-Pinus-Imogiri.jpg?w=908&ssl=1'
             , 'Lelaki yang baik adalah lelaki yang bisa mengayomi dan penyantun, ia bisa menjaga lisannya dan akan senantiasa berusaha membahagiakan orang yang ada disekitarnya. Kata-kata yang diucapkan oleh laki-laki sholeh tidak mencela jika melihat keburukan orang. Ia akan selalu mendoakan kebaikan bagi orang lain. Jika ia telah berkeluarga maka ia akan berusaha mencukupkan kebutuhan istrinya, anak-anaknya. Dalam mengahadapi persoalan hidup ia tidak pernah merasa khawatir. Sebab rezeki itu datang dari Allah, kita hanya cukup berusaha, berikhtiar dan terus berdoa. Rezeki setiap orang sudah diatur Allah dan tidak akan mungkin tertukar. Dalam hadist shahih Rasulullah shallallahu ‘alaihi wasallam mencontohkan terkhusus bagi laki-laki. Saat ditanya tentang apa yang dilakukan oleh Rasul di dalam rumah, Aisyah radhiallahu ‘anhamenjawab : “Beliau shallallahu ‘alaihi wasallam sebagaimana layaknya manusia pada umumnya, menjahit terompahnya, menambal pakaiannya, memerah susu kambingnya dan mengerjakan apa yang biasa dikerjakan oleh lelaki. Baru jika waktu shalat tiba, beliau keluar rumah.” (HR. Bukhari)'),
         
         kriteriaItem('Berwibawa dan Pemurah'
             , 'https://i2.wp.com/virusbiru.com/handsome/wp-content/uploads/2016/12/halal-couple.jpg?w=498&ssl=1'
             , 'Lelaki yang ideal untuk kamu jadikan suami selanjutnya adalah lelaki yang berwibawa dan pemurah. Maksudnya ialah seorang lelaki sholeh yang dengannya ia tidak pelt untuk memberikan sesuatu yang ia punya, terutama kepada keluarganya, kepada istri dan juga anak-anaknya. Ia adalah seorang lelaki yang bertanggung jawab dalam mencarikan nafkah dan keabikan untuk keluarganya. Walaupun ia tidak pelit dalam memberikan sesuatu, karena kemurahan hatinya, orang lain akan merasa segan dan menaruh hormat kepadanya. Kehadirannya bisa menjadi penyejuk dan bermanfaat untuk banyak orang. Sehingga kehadirannya dibutuhkan banyak orang, jika ia jauh maka orang akan mencari sebab kebaikan yang dia miliki.'),
         
         kriteriaItem('Tegas dan Lembut',
             'https://i1.wp.com/virusbiru.com/handsome/wp-content/uploads/2017/01/Kriteria-Laki-laki-Idaman.jpg?resize=770%2C430&ssl=1',
             'Ciri yang keempat ialah, lelaki yang dalam memimpin suatu jabatan tertentu ia tegas dalam koridor yang benar, namun terhadap para wanita terkhusus ibu ia berperangai lemah lembut. Lelaki baik seperti ini, ia paham bahwa kedudukan orangtua sangat berharga di dalam islam. Ia sadar karena sosok seorang ibu, ia berhasil sampai sekarang ini.Apabila ia telah berkeluarga, ia bersikap lugas, tidak lembek dalam menangi suatu perkara, bijaksana dan tidak berkhianat untuk menafkahi keuarganya. Saat bersama ditengah keluarga sikap lemah lembut ditunjukkan olehnya, seolah-olah kehadirannya tersebut adalah sosok yang penyayang dan pelindung bagi keluarganya.'),

         kriteriaItem('Kuat Pendirian dan Prinsip Hidup'
             , 'https://i1.wp.com/virusbiru.com/handsome/wp-content/uploads/2016/11/Kata-kata-Ungkapan-Sayang.jpg?w=1500&ssl=1',
             'Seorang lelaki yang baik, adalah muslim yang tangguh dan tidak suka mengeluh. Seorang lelaki yang kuat akan pendiriannya adalah seorang lelaki yang tidak goyah dalam memberi keputusan juga bijak dalam menangani masalah. Ciri-ciri lelaki yang baik juga harus memiliki prinsip hidup yang terarah. Ia tahu apa yang akan dilakukan untuk hari ini dan kedepannya. Lelaki yang memiliki arah dan tujuan yan jelas akan mampu membawa dirinya dan juga kelurganya menuju ke arah yang lebih baik.'),
         
         kriteriaItem('Penyabar dan Pemaaf'
             , 'https://i2.wp.com/virusbiru.com/handsome/wp-content/uploads/2017/01/Romantis-Merpati.jpg?w=950&ssl=1'
             , 'Seorang lelaki yang suka memberi maaf kepada orang yang menyakitinya, serta seorang penyabar dalam berbagai situasi. Adalah ciri-ciri lelaki yang sholeh dan ideal, lelaki yang seperti ini akan berusaha menyikapi suatu persoalan dengan kepala dingi dan tidak tergesa-gesa. Jika ada orang yang mencelanya baik itu depan atau dibelakang, ia akan berusaha memaafkan mereka.Karena ia tahu, menyimpan dendam dan amarah itu adalah hal yang merugikan. Bahkan ia akan terus mendoakan orang tersebut diberi ampunan. Apabila ia telah berkeluarga, senantiasa memaafkan kesalahan istri, anak-anaknya karena lelaki semacam ini ialah suami teladan bagi keluarganya.'),
         
         kriteriaItem('Amanah',
             'https://i1.wp.com/virusbiru.com/handsome/wp-content/uploads/2016/11/Pasangan-Suami-Istri-Romantis-Islami.jpg?w=900&ssl=1'
             , 'Seorang lelaki sholeh yang bersikap amanah. Segala bentuk tugas yang diberikan, ia akan menjalankannya dengan penuh amanah. Ia tahu dari hakikatnya titipan dan tanggung jawab, sehingga ia tidak mau mengabaikan tugas yang diberikan dan juga sangat pantang baginya untuk menayalahgunakan kekuasaan. Ia sadar bahwa kekuasaan yang dimilikinya ialah titipan yang kelak akan dipertanggungjawabkan. Ia takut kepada Allah karena ia tahu Allah Maha Melihat apa-apa yang dikerjakan hamba-Nya.')



       ],
      ),
    );
  }
}

Widget kriteriaItem(String judul, String gambar ,String detail) {
  return Container(
    child: ListView(
      children: <Widget>[
        Image(
          image: NetworkImage(gambar),
          height: 300.0,
          fit: BoxFit.cover,),

        SizedBox(
          height: 20.0,
        ),//SizedBox

        Padding(padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(judul,
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold)),

        ),//Padding



        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(detail,
            style: TextStyle(fontSize: 20.0),
            textAlign: TextAlign.justify,),
        )
      ],
    ),
  );
}

Widget _buildAboutMe() {
  return new RichText(
      text: new TextSpan(
          text: 'Hello ! My name is Thalhah Shafiyurrahman, im a junior programmer in Idn Boarding School, i was born in 30th December 2004',
          style: const TextStyle(color: Colors.black),
          children: <TextSpan>[
            const TextSpan(text: 'Follow My Instagram : @thalhah._')
          ]
      ));
}

void openNewSreen(BuildContext context, Widget screen) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => screen));
}