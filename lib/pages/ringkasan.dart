import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:map/map.dart';
import 'package:latlng/latlng.dart';
import 'package:paged_vertical_calendar/paged_vertical_calendar.dart';
import 'package:project_uts/model/preferensi.dart';
import 'greeting.dart';

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
                height: 255,
                decoration: const BoxDecoration(
                  color: Color(0xFF36474F),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(
                        left: 20,
                        top: 50,
                        right: 20,
                        bottom: 20,
                      ),
                      padding: EdgeInsets.zero,
                      width: 120,
                      height: 170,
                      decoration: BoxDecoration(
                        color: const Color(0xFF685757),
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
                              width: double.maxFinite,
                              height: 170,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        top: 60,
                      ),
                      padding: EdgeInsets.zero,
                      width: 180,
                      height: 140,
                      decoration: const BoxDecoration(
                        color: Color(0xFF36474F),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(
                              left: 3,
                              top: 3,
                              right: 3,
                              bottom: 3,
                            ),
                            padding: EdgeInsets.zero,
                            width: double.maxFinite,
                            decoration: const BoxDecoration(
                              color: Color(0xFF36474F),
                            ),
                            child: Text(''+Preferensi().getMoviesName+'',
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
                          ),
                          Container(
                            margin: const EdgeInsets.only(
                              left: 3,
                              top: 3,
                              right: 3,
                              bottom: 3,
                            ),
                            padding: EdgeInsets.zero,
                            width: double.maxFinite,
                            decoration: const BoxDecoration(
                              color: Color(0xFF36474F),
                            ),
                            child: Text('''Genre : Action''',
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
                          ),
                          Container(
                            margin: const EdgeInsets.only(
                              left: 3,
                              top: 3,
                              right: 3,
                              bottom: 3,
                            ),
                            padding: EdgeInsets.zero,
                            width: double.maxFinite,
                            decoration: const BoxDecoration(
                              color: Color(0xFF36474F),
                            ),
                            child: Text('''Durasi: 1 jam 20 menit''',
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
                          ),
                          Container(
                            margin: const EdgeInsets.only(
                              left: 3,
                              top: 15,
                              right: 3,
                              bottom: 3,
                            ),
                            padding: EdgeInsets.zero,
                            width: double.maxFinite,
                            decoration: const BoxDecoration(
                              color: Color(0xFF36474F),
                            ),
                            child: Text('''Rabu, 05 Jan 2022, 14:45''',
                                style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(
                                    color: const Color(0xFFFFFFFF),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    fontStyle: FontStyle.normal,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                                textAlign: TextAlign.left,
                                maxLines: 1),
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
                  top: 19,
                  right: 15,
                  bottom: 15,
                ),
                width: double.maxFinite,
                height: 60,
                decoration: BoxDecoration(
                  color: const Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12),
                    bottomRight: Radius.circular(0),
                    bottomLeft: Radius.circular(0),
                  ),
                ),
                child: Text('''NOMOR ORDER SKZ032518''',
                    style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                        color: const Color(0xFF000000),
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        fontStyle: FontStyle.normal,
                        decoration: TextDecoration.none,
                      ),
                    ),
                    textAlign: TextAlign.left,
                    maxLines: 1),
              ),
              Container(
                margin: EdgeInsets.zero,
                width: double.maxFinite,
                height: 180,
                decoration: const BoxDecoration(
                  color: Color(0xFFFFFFFF),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(
                        top: 10,
                        bottom: 10,
                      ),
                      padding: EdgeInsets.zero,
                      width: 160,
                      height: 170,
                      decoration: const BoxDecoration(
                        color: Color(0xFFFFFFFF),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(
                              top: 25,
                              bottom: 10,
                            ),
                            padding: EdgeInsets.zero,
                            width: double.maxFinite,
                            decoration: const BoxDecoration(
                              color: Color(0xFFFFFFFF),
                            ),
                            child: Text('''1 TIKET''',
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    color: const Color(0xFF000000),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15,
                                    fontStyle: FontStyle.normal,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                                textAlign: TextAlign.left,
                                maxLines: 1),
                          ),
                          Container(
                            margin: const EdgeInsets.only(
                              top: 10,
                              bottom: 10,
                            ),
                            padding: EdgeInsets.zero,
                            width: double.maxFinite,
                            decoration: const BoxDecoration(
                              color: Color(0xFFFFFFFF),
                            ),
                            child: Text('''KURSI REGULER''',
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    color: const Color(0xFF000000),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15,
                                    fontStyle: FontStyle.normal,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                                textAlign: TextAlign.left,
                                maxLines: 1),
                          ),
                          Container(
                            margin: const EdgeInsets.only(
                              top: 10,
                              bottom: 25,
                            ),
                            padding: EdgeInsets.zero,
                            width: double.maxFinite,
                            decoration: const BoxDecoration(
                              color: Color(0xFFFFFFFF),
                            ),
                            child: Text('''TOTAL''',
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    color: const Color(0xFF000000),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15,
                                    fontStyle: FontStyle.normal,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                                textAlign: TextAlign.left,
                                maxLines: 1),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        top: 10,
                        bottom: 10,
                      ),
                      padding: const EdgeInsets.only(
                        left: 70,
                      ),
                      width: 160,
                      height: 170,
                      decoration: const BoxDecoration(
                        color: Color(0xFFFFFFFF),
                      ),
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(
                              top: 25,
                              bottom: 10,
                            ),
                            padding: EdgeInsets.zero,
                            width: double.maxFinite,
                            decoration: const BoxDecoration(
                              color: Color(0xFFFFFFFF),
                            ),
                            child: Text('''1 TIKET''',
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    color: const Color(0xFF000000),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15,
                                    fontStyle: FontStyle.normal,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                                textAlign: TextAlign.left,
                                maxLines: 1),
                          ),
                          Container(
                            margin: const EdgeInsets.only(
                              top: 10,
                              bottom: 10,
                            ),
                            padding: EdgeInsets.zero,
                            width: double.maxFinite,
                            decoration: const BoxDecoration(
                              color: Color(0xFFFFFFFF),
                            ),
                            child: Text('''Rp 35.000''',
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    color: const Color(0xFF000000),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15,
                                    fontStyle: FontStyle.normal,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                                textAlign: TextAlign.left,
                                maxLines: 1),
                          ),
                          Container(
                            margin: const EdgeInsets.only(
                              top: 10,
                              bottom: 10,
                            ),
                            padding: EdgeInsets.zero,
                            width: double.maxFinite,
                            decoration: const BoxDecoration(
                              color: Color(0xFFFFFFFF),
                            ),
                            child: Text('''Rp 35.000''',
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    color: const Color(0xFF000000),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15,
                                    fontStyle: FontStyle.normal,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                                textAlign: TextAlign.left,
                                maxLines: 1),
                          ),
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
                height: 120,
                decoration: const BoxDecoration(
                  color: Color(0xFFFFFFFF),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('''KODE BAYAR''',
                        style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                            color: const Color(0xFF000000),
                            fontWeight: FontWeight.w600,
                            fontSize: 15,
                            fontStyle: FontStyle.normal,
                            decoration: TextDecoration.none,
                          ),
                        ),
                        textAlign: TextAlign.left,
                        maxLines: 1),
                    Text('''BYRDNG0501202''',
                        style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                            color: const Color(0xFF000000),
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
                            fontStyle: FontStyle.normal,
                            decoration: TextDecoration.none,
                          ),
                        ),
                        textAlign: TextAlign.left,
                        maxLines: 1),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () async {
                  await Navigator.push<void>(context, 
                      MaterialPageRoute(builder: (context) => PageHappyWatching(),),
                      );
                  },
                  child: Container(
                      margin: const EdgeInsets.only(
                        top: 18,
                      ),
                      width: double.maxFinite,
                      height: 50,
                      decoration: const BoxDecoration(
                        color: Color(0xFF36474F),
                      ),
                      child: Text(
                        '''BAYAR SEKARANG''',
                        style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                            color: const Color(0xFFFF9900),
                            fontWeight: FontWeight.w600,
                            fontSize: 22,
                            fontStyle: FontStyle.normal,
                            decoration: TextDecoration.none,
                          ),
                        ),
                        textAlign: TextAlign.center,
                      )
                  )
              ),
            ],
          ),
        ],
      ),
    );
  }
}
