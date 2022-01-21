import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_uts/pages/pilihjadwal.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:map/map.dart';
import 'package:latlng/latlng.dart';
import 'package:paged_vertical_calendar/paged_vertical_calendar.dart';
import 'package:project_uts/model/preferensi.dart';

class PageSinopsis extends StatefulWidget {
  const PageSinopsis({
    Key? key,
  }) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<PageSinopsis> {
  final datasets = <String, dynamic>{};

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF36474F),
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.zero,
                padding: EdgeInsets.zero,
                width: double.maxFinite,
                height: 225,
                decoration: const BoxDecoration(
                  color: Color(0xFF36474F),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(
                        left: 20,
                        top: 40,
                        right: 20,
                        bottom: 10,
                      ),
                      padding: EdgeInsets.zero,
                      width: 120,
                      height: 170,
                      decoration: BoxDecoration(
                        color: const Color(0xFF36474F),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12),
                          topRight: Radius.circular(12),
                          bottomRight: Radius.circular(12),
                          bottomLeft: Radius.circular(12),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(12),
                              topRight: Radius.circular(12),
                              bottomRight: Radius.circular(12),
                              bottomLeft: Radius.circular(12),
                            ),
                            child: Image.asset(
                              'assets/ff9.jpg',
                              width: 120,
                              height: 170,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        top: 20,
                      ),
                      padding: EdgeInsets.zero,
                      width: 180,
                      height: 160,
                      decoration: const BoxDecoration(
                        color: Color(0xFF36474F),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(''+Preferensi().getMoviesName+'',
                              style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                  color: const Color(0xFFFFFFFF),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16,
                                  fontStyle: FontStyle.normal,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                              textAlign: TextAlign.left,
                              maxLines: 1),
                          Text('''Genre : Action''',
                              style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                  color: const Color(0xFFFFFFFF),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  fontStyle: FontStyle.normal,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                              textAlign: TextAlign.left,
                              maxLines: 1),
                          Text('''Durasai : 1 jam 20 menit''',
                              style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                  color: const Color(0xFFFFFFFF),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  fontStyle: FontStyle.normal,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                              textAlign: TextAlign.left,
                              maxLines: 1),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.zero,
                padding: EdgeInsets.zero,
                width: double.maxFinite,
                height: 50,
                decoration: const BoxDecoration(
                  color: Color(0xFF36474F),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.zero,
                      padding: EdgeInsets.zero,
                      width: 187,
                      decoration: const BoxDecoration(
                        color: Color(0xFF36474F),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('''SINOPSIS''',
                              style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                  color: const Color(0xFFFFFFFF),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                  fontStyle: FontStyle.normal,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                              textAlign: TextAlign.left,
                              maxLines: 1),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.zero,
                      padding: EdgeInsets.zero,
                      width: 187,
                      decoration: const BoxDecoration(
                        color: Color(0xFF36474F),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () async {
                              await Navigator.push<void>(
                                context,
                                  MaterialPageRoute(
                                    builder: (context) => PagePilihJadwal(),
                                  ),
                              );
                            },
                              child: Container(
                                margin: const EdgeInsets.only(
                                  top: 13,
                                ),
                                padding: EdgeInsets.zero,
                                  width: double.maxFinite,
                                  height: 35,
                                  decoration: const BoxDecoration(
                                    color: Color(0xFF36474F),
                                  ),
                                  child: Text(
                                    '''JADWAL''',
                                    style: GoogleFonts.montserrat(
                                      textStyle: TextStyle(
                                        color: const Color(0xFFFFFFFF),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 18,
                                        fontStyle: FontStyle.normal,
                                        decoration: TextDecoration.none,
                                      ),
                                    ),
                                    textAlign: TextAlign.center,
                                  ))),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.zero,
                padding: EdgeInsets.zero,
                width: double.maxFinite,
                height: 20,
                decoration: const BoxDecoration(
                  color: Color(0xFF36474F),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  left: 1,
                  top: 1,
                  right: 1,
                  bottom: 1,
                ),
                padding: EdgeInsets.zero,
                width: double.maxFinite,
                height: 50,
                decoration: BoxDecoration(
                  color: const Color(0xFF607D8B),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(0),
                    bottomLeft: Radius.circular(0),
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(
                        left: 15,
                      ),
                      padding: EdgeInsets.zero,
                      width: 178,
                      decoration: BoxDecoration(
                        color: const Color(0xFF607D8B),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            MdiIcons.fromString('''checkbox-blank-circle'''),
                            color: Color(0xFF36474F),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        left: 180,
                      ),
                      padding: EdgeInsets.zero,
                      width: 26,
                      decoration: const BoxDecoration(
                        color: Color(0xFF607D8B),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            MdiIcons.fromString('''circle'''),
                            color: Color(0xFF36474F),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.zero,
                padding: const EdgeInsets.only(
                  left: 20,
                  top: 20,
                  right: 20,
                  bottom: 20,
                ),
                width: double.maxFinite,
                height: 335,
                decoration: const BoxDecoration(
                  color: Color(0xFF607D8B),
                ),
                child: Column(
                  children: [
                    Text(
                        '''Our Beloved Summer adalah sebuah komedi romantis adaptasi webtoon yang menggambarkan perasaan rumit dari pasangan yang putus dengan mengatakan, " Saat itu adalah waktu yang buruk denganmu, mari kita tidak pernah bertemu lagi!" Namun, film dokumenter yang mereka rekam 10 tahun yang lalu di sekolah menengah tiba-tiba mendapatkan popularitas dan mereka dipaksa untuk berada di depan kamera bersama sekali lagi.''',
                        style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                            color: const Color(0xFFFFFFFF),
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            fontStyle: FontStyle.normal,
                            decoration: TextDecoration.none,
                          ),
                        ),
                        textAlign: TextAlign.left,
                        maxLines: 3),
                    Text(
                        '''Dalam drama tersebut, Choi Woo Shik memerankan Choi Woong, seorang ilustrator yang terbiasa menyembunyikan kehidupan pribadinya. Dia tumbuh dalam keluarga yang layak tanpa kekurangan apa pun, tetapi dia tidak memiliki mimpi yang nyata, dan dia terbiasa menyembunyikan dirinya sendiri.''',
                        style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                            color: const Color(0xFFFFFFFF),
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            fontStyle: FontStyle.normal,
                            decoration: TextDecoration.none,
                          ),
                        ),
                        textAlign: TextAlign.left,
                        maxLines: 30),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
