import 'package:flutter/material.dart';

// import 'package:myapp/auth/auth_state.dart';

import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
// import 'package:myapp/src/pages/index.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:map/map.dart';
import 'package:latlng/latlng.dart';
import 'package:paged_vertical_calendar/paged_vertical_calendar.dart';

class PageRingkasan extends StatefulWidget {
  const PageRingkasan({
    Key? key,
  }) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<PageRingkasan> {
  final datasets = <String, dynamic>{};

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF000000),
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
                        bottom: 20,
                      ),
                      padding: EdgeInsets.zero,
                      width: 120,
                      height: 140,
                      decoration: BoxDecoration(
                        color: Colors.white ,
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
                            child: Image.network(
                              '''https://source.unsplash.com/random''',
                              width: double.maxFinite,
                              height: 140,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.zero,
                      padding: EdgeInsets.zero,
                      width: 180,
                      height: 140,
                      decoration: const BoxDecoration(
                        color: Color(0xFF36474F),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('''Our Beloved Summer''',
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
                          Text('''Genre : Romance, Comedy''',
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
                          Text('''1 jam 20 menit''',
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
                  color:  Colors.white ,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(0),
                    bottomLeft: Radius.circular(0),
                  ),
                ),
                 child: Column(
                  children: [
                    Text(
                        '''NOMOR ORDER: BACTBGT001''',
                        style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                            color:  Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            fontStyle: FontStyle.normal,
                            decoration: TextDecoration.none,
                          ),
                        ),
                        textAlign: TextAlign.center,
                        maxLines: 3),
                    
                  ],
                ),
                // child: Row(
                //   crossAxisAlignment: CrossAxisAlignment.start,
                //   children: [
                //     Container(
                //       margin: const EdgeInsets.only(
                //         left: 15,
                //       ),
                //       padding: EdgeInsets.zero,
                //       width: 177,
                //       decoration: BoxDecoration(
                //         color: const Color(0xFF607D8B),
                //         borderRadius: BorderRadius.only(
                //           topLeft: Radius.circular(10),
                //           topRight: Radius.circular(10),
                //           bottomRight: Radius.circular(10),
                //           bottomLeft: Radius.circular(10),
                //         ),
                //       ),
                //       child: Column(
                //         mainAxisAlignment: MainAxisAlignment.center,
                //         crossAxisAlignment: CrossAxisAlignment.start,
                //         children: [
                //           Icon(
                //             MdiIcons.fromString('''checkbox-blank-circle'''),
                //             color: Color(0xFF36474F),
                //           ),
                //         ],
                //       ),
                //     ),
                //     Container(
                //       margin: const EdgeInsets.only(
                //         left: 145,
                //       ),
                //       padding: EdgeInsets.zero,
                //       width: 25,
                //       decoration: const BoxDecoration(
                //         color: Color(0xFF607D8B),
                //       ),
                //       child: Column(
                //         mainAxisAlignment: MainAxisAlignment.center,
                //         crossAxisAlignment: CrossAxisAlignment.start,
                //         children: [
                //           Icon(
                //             MdiIcons.fromString('''circle'''),
                //             color: Color(0xFF36474F),
                //           ),
                //         ],
                //       ),
                //     ),
                //   ],
                // ),
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
                height: 450,
                decoration: const BoxDecoration(
                  color: Colors.white,
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
