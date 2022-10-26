import 'package:flutter/material.dart';

class Movie {
  String title;
  String deskripsi;
  String imageUrl;
  int tahun;

  Movie(
      {required this.title,
      required this.deskripsi,
      required this.imageUrl,
      required this.tahun});
}

List<Movie> movieList = [
  Movie(
      title: 'Harry Potter 20th Anniversary: Return to Hogwarts',
      deskripsi:
          'Harry Potter 20th Anniversary: Return to Hogwarts is a 2022 television special of the Harry Potter film series that was released on HBO Max on New tahuns Day. It marks the 20th anniversary of the release of the series first instalment, Harry Potter and the Philosophers Stone (2001).',
      tahun: 2022,
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/en/thumb/e/e7/Harry_Potter_20th_Anniversary_Return_to_Hogwarts_poster.jpg/250px-Harry_Potter_20th_Anniversary_Return_to_Hogwarts_poster.jpg'),
  Movie(
      title: '1917',
      deskripsi:
          '1917 is a 2019 war film directed and produced by Sam Mendes, who co-wrote the film with Krysty Wilson-Cairns. Partially inspired by stories told to Mendes by his paternal grandfather Alfred about his service during World War I.',
      tahun: 2019,
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/en/thumb/f/fe/1917_%282019%29_Film_Poster.jpeg/220px-1917_%282019%29_Film_Poster.jpeg'),
  Movie(
      title: 'The Social Network',
      deskripsi:
          'The Social Network is a 2010 American biographical drama film directed by David Fincher from a screenplay by Aaron Sorkin, based on the 2009 book The Accidental Billionaires by Ben Mezrich. It portrays the founding of social networking website Facebook and the resulting lawsuits. It stars Jesse Eisenberg as founder Mark Zuckerberg, along with Andrew Garfield as Eduardo Saverin, Justin Timberlake as Sean Parker, Armie Hammer as Cameron and Tyler Winklevoss, and Max Minghella as Divya Narendra. Neither Zuckerberg nor any other Facebook staff were involved with the project, although Saverin was a consultant for Mezrichs book.',
      tahun: 2010,
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/en/thumb/8/8c/The_Social_Network_film_poster.png/220px-The_Social_Network_film_poster.png'),
  Movie(
      title: "Parasite",
      tahun: 2019,
      deskripsi:
          "Parasite (Korean: 기생충; Hanja: 寄生蟲; RR: Gisaengchung) is a 2019 South Korean black comedy thriller film directed by Bong Joon-ho, who co-wrote the screenplay with Han Jin-won and co-produced the film. The film, starring Song Kang-ho, Lee Sun-kyun, Cho Yeo-jeong, Choi Woo-shik, Park So-dam, Jang Hye-jin, Park Myung-hoon, and Lee Jung-eun, follows a poor family who scheme to become employed by a wealthy family and infiltrate their household by posing as unrelated, highly qualified individuals.",
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/en/thumb/5/53/Parasite_%282019_film%29.png/220px-Parasite_%282019_film%29.png'),
  Movie(
      title: "The Batman",
      tahun: 2022,
      deskripsi:
          "The Batman is a 2022 American superhero film based on the DC Comics character Batman. Produced by Warner Bros. Pictures, DC Films, 6th & Idaho, and Dylan Clark Productions, and distributed by Warner Bros.",
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/en/f/ff/The_Batman_%28film%29_poster.jpg'),
  Movie(
      title: "Bangun Lagi Dong Lupus",
      tahun: 2013,
      deskripsi:
          "Bangun Lagi Dong Lupus adalah film komedi romantis remaja tahun 2013, merupakan adaptasi bebas dari novel Bangun Lagi Dong Lupus karya Hilman Hariwijaya. Film ini dibintangi oleh antara lain Migdad Addausy, Acha Septriasa, Alfie Affandy, Jeremy Christian, Eko Patrio, Deddy Mizwar, dan Cici Tegal.",
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/id/thumb/5/5f/BangunLagiDongLupusPoster.jpg/220px-BangunLagiDongLupusPoster.jpg'),
  Movie(
      title: "Tenet",
      tahun: 2020,
      deskripsi:
          "Tenet is a 2020 science fiction action thriller spy film directed, written, and co-produced by Christopher Nolan with his wife Emma Thomas. A co-production between the United Kingdom and the United States, it stars John David Washington, Robert Pattinson, Elizabeth Debicki, Dimple Kapadia, Michael Caine, and Kenneth Branagh. The film follows a former CIA agent who learns how to manipulate the flow of time to prevent an attack from the future that threatens to annihilate the present world.",
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/en/thumb/1/14/Tenet_movie_poster.jpg/220px-Tenet_movie_poster.jpg'),
  Movie(
      title: "Nope",
      tahun: 2022,
      deskripsi:
          "Nope is a 2022 American neo-Western science fiction horror film directed, written, and co-produced by Jordan Peele under his Monkeypaw Productions banner.",
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/en/thumb/e/e6/Nope_%28film%29_poster.jpg/220px-Nope_%28film%29_poster.jpg'),
  Movie(
      title: "Avengers: Endgame",
      tahun: 2019,
      deskripsi:
          "Avengers: Endgame is a 2019 American superhero film based on the Marvel Comics superhero team the Avengers. Produced by Marvel Studios and distributed by Walt Disney Studios Motion Pictures, it is the direct sequel to Avengers: Infinity War (2018) and the 22nd film in the Marvel Cinematic Universe (MCU). Directed by Anthony and Joe Russo and written by Christopher Markus and Stephen McFeely, the film features an ensemble cast including Robert Downey Jr., Chris Evans, Mark Ruffalo, Chris Hemsworth, Scarlett Johansson, Jeremy Renner, Don Cheadle, Paul Rudd, Brie Larson, Karen Gillan, Danai Gurira, Benedict Wong, Jon Favreau, Bradley Cooper, Gwyneth Paltrow, and Josh Brolin. In the film, the surviving members of the Avengers and their allies attempt to reverse the destruction caused by Thanos in Infinity War.",
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/en/0/0d/Avengers_Endgame_poster.jpg'),
  Movie(
      title: "Jujutsu Kaisen 0",
      tahun: 2021,
      deskripsi:
          "Jujutsu Kaisen 0 (Japanese: 劇場版 呪術廻戦 0, Hepburn: Gekijōban Jujutsu Kaisen Zero, Jujutsu Kaisen 0: The Movie) is a 2021 Japanese animated dark fantasy[4] film, based on the manga series Jujutsu Kaisen 0, a prequel to the Jujutsu Kaisen manga series, both created by Gege Akutami. It was directed by Sunghoo Park and written by Hiroshi Seko, with stars Megumi Ogata, Kana Hanazawa, Mikako Komatsu, Kōki Uchiyama, Tomokazu Seki, Yuichi Nakamura, and Takahiro Sakurai. The film is produced by MAPPA and distributed by Toho. It follows Yuta Okkotsu, a young student who becomes a sorcerer and seeks to control the cursed spirit of his childhood friend Rika Orimoto in Jujutsu High alongside other skilled mates.",
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/en/thumb/7/77/Gekij%C5%8D-ban_Jujutsu_Kaisen_0.png/220px-Gekij%C5%8D-ban_Jujutsu_Kaisen_0.png'),
  Movie(
      title: "KKN di Desa Penari",
      tahun: 2022,
      deskripsi:
          "KKN di Desa Penari adalah film horor Indonesia tahun 2022 yang disutradarai oleh Awi Suryadi berdasarkan cerita viral berjudul sama karya SimpleMan. Film produksi MD Pictures serta Pichouse Films ini dibintangi oleh Tissa Biani, Adinda Thomas, dan Achmad Megantara. KKN di Desa Penari tayang perdana di bioskop Indonesia pada 30 April 2022. Film ini sempat dijadwalkan akan tayang pada 19 Maret 2020 dan 24 Februari 2022. Namun, keduanya dibatalkan karena pandemi Covid-19.",
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/id/thumb/f/f9/Poster_KKN_di_Desa_Penari_%28versi_uncut%29.jpeg/220px-Poster_KKN_di_Desa_Penari_%28versi_uncut%29.jpeg'),
  Movie(
      title: "Ngeri-Ngeri Sedap",
      tahun: 2022,
      deskripsi:
          "Ngeri-Ngeri Sedap (bahasa Inggris: Missing Home) adalah film drama komedi Indonesia tahun 2022 yang disutradarai dan ditulis oleh Bene Dion Rajagukguk. Film berlatar Suku Batak ini dibintangi oleh Arswendy Beningswara Nasution, Tika Panggabean, Boris Bokir Manullang, Gita Bhebhita Butarbutar, Lolox, dan Indra Jegel. Film ini ditayangkan di bioskop Indonesia pada 2 Juni 2022.[1] Meskipun memiliki judul yang sama dengan buku yang ditulis oleh Bene Dion, film ini tidak diadaptasi dari buku tersebut.",
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/id/thumb/6/6a/Poster_Ngeri_Ngeri_Sedap_2022_movie.jpeg/220px-Poster_Ngeri_Ngeri_Sedap_2022_movie.jpeg')
];
