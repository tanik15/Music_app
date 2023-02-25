import 'package:new_musicc/main.dart';
import 'package:new_musicc/models/music.dart';

class MusicOperations {
  MusicOperations._() {}
  static List<Music> getMusic() {
    return <Music>[
      Music(
          name: 'Toofan',
          image:
              'https://raaga.gumlet.io/raagaimg/r_img/250/h/hp002637.jpg?w=160&dpr=2.6',
          desc: 'Dekh toofan aaya hai'),
      Music(
          name: 'Gully Boy',
          image:
              'https://4.bp.blogspot.com/-4c6wsIoHFsc/XMQ6FUGbI7I/AAAAAAAAQTg/2KBEcqpSgNkrokEu2b5MX5C7uKHy5Gi4wCLcBGAs/s1600/blog%2B-%2B2.jpg',
          desc: 'Apna time aayega'),
      Music(
          name: 'Ae Dil he muskil',
          image:
              'https://i.scdn.co/image/ab67616d0000b2739af4f2dc4eafb56be7911c72',
          desc: 'Aee  Dil hai muskil'),
      Music(
          name: 'Night Changes',
          image:
              'https://c-fa.cdn.smule.com/rs-s35/arr/15/a0/4bd87e54-da45-47e2-91b5-1ff80a3cea08_1024.jpg',
          desc: 'by Rachel Gandner'),
      Music(
          name: 'Jab Tak',
          image:
              'https://1.bp.blogspot.com/-xPChfPKppJU/X29eoi3fUYI/AAAAAAAACZw/f5X_Xu9z1b0n33FPZRrxZgc_pDqKW7rDwCLcBGAsYHQ/s1600/Jab%2BTak%2BMS%2BDhoni%2BLyrics%2B-%2BARMAAN%2BMALIK%2B-%2BMS%2BDhoni.jpg',
          desc: 'by Armaan Malik'),
      Music(
          name: 'Haaye oye',
          image:
              'https://i0.wp.com/99lyricstore.com/wp-content/uploads/2019/03/haaye-oye-lyrics-qaran-ash-king-elle-avram-shantanu-maheshwari.jpg',
          desc: 'by shantanu '),
    ];
  }
}
