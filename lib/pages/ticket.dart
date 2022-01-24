import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:map/map.dart';
import 'package:latlng/latlng.dart';
import 'package:paged_vertical_calendar/paged_vertical_calendar.dart';
import 'movies.dart';

class PageTicket extends StatefulWidget {
  const PageTicket({
    Key? key,
  }) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<PageTicket> {
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
                height: 290,
                decoration: const BoxDecoration(
                  color: Color(0xFF36474F),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(
                        top: 60,
                        bottom: 40,
                      ),
                      width: 300,
                      height: 50,
                      decoration: const BoxDecoration(
                        color: Color(0xFF36474F),
                      ),
                      child: Text('''OUR BELOVED SUMMER''',
                          style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                              color: const Color(0xFFFF9900),
                              fontWeight: FontWeight.w700,
                              fontSize: 20,
                              fontStyle: FontStyle.normal,
                              decoration: TextDecoration.none,
                            ),
                          ),
                          textAlign: TextAlign.center,
                          maxLines: 1),
                    ),
                    Container(
                      padding: const EdgeInsets.only(
                        left: 5,
                        top: 5,
                        right: 5,
                        bottom: 5,
                      ),
                      width: double.maxFinite,
                      decoration: const BoxDecoration(
                        color: Color(0xFF36474F),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(
                              left: 5,
                              top: 5,
                              right: 5,
                              bottom: 5,
                            ),
                            padding: EdgeInsets.zero,
                            width: 100,
                            decoration: const BoxDecoration(
                              color: Color(0xFF36474F),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('''Rabu ''',
                                    style: GoogleFonts.montserrat(
                                      textStyle: TextStyle(
                                        color: const Color(0xFFFFFFFF),
                                        fontWeight: FontWeight.w300,
                                        fontSize: 16,
                                        fontStyle: FontStyle.normal,
                                        decoration: TextDecoration.none,
                                      ),
                                    ),
                                    textAlign: TextAlign.left,
                                    maxLines: 1),
                                Text('''5 Jan 2022''',
                                    style: GoogleFonts.montserrat(
                                      textStyle: TextStyle(
                                        color: const Color(0xFFFFFFFF),
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
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
                            margin: const EdgeInsets.only(
                              left: 5,
                              top: 5,
                              right: 5,
                              bottom: 5,
                            ),
                            padding: EdgeInsets.zero,
                            width: 100,
                            decoration: const BoxDecoration(
                              color: Color(0xFF36474F),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('''Bioskop''',
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        color: const Color(0xFFFFFFFF),
                                        fontWeight: FontWeight.w300,
                                        fontSize: 16,
                                        fontStyle: FontStyle.normal,
                                        decoration: TextDecoration.none,
                                      ),
                                    ),
                                    textAlign: TextAlign.left,
                                    maxLines: 1),
                                Text('''GALAXY XXI''',
                                    style: GoogleFonts.montserrat(
                                      textStyle: TextStyle(
                                        color: const Color(0xFFFFFFFF),
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                        fontStyle: FontStyle.normal,
                                        decoration: TextDecoration.none,
                                      ),
                                    ),
                                    textAlign: TextAlign.left,
                                    maxLines: 1),
                                Text('''Studio 2''',
                                    style: GoogleFonts.montserrat(
                                      textStyle: TextStyle(
                                        color: const Color(0xFFFFFFFF),
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
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
                            margin: const EdgeInsets.only(
                              left: 15,
                              top: 5,
                              right: 5,
                              bottom: 5,
                            ),
                            padding: EdgeInsets.zero,
                            width: 100,
                            decoration: const BoxDecoration(
                              color: Color(0xFF36474F),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('''Jam''',
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        color: const Color(0xFFFFFFFF),
                                        fontWeight: FontWeight.w300,
                                        fontSize: 16,
                                        fontStyle: FontStyle.normal,
                                        decoration: TextDecoration.none,
                                      ),
                                    ),
                                    textAlign: TextAlign.left,
                                    maxLines: 1),
                                Text('''14:45''',
                                    style: GoogleFonts.montserrat(
                                      textStyle: TextStyle(
                                        color: const Color(0xFFFFFFFF),
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
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
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.zero,
                padding: EdgeInsets.zero,
                width: double.maxFinite,
                height: 150,
                decoration: const BoxDecoration(
                  color: Color(0xFFFF9900),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(
                        left: 20,
                        top: 20,
                        right: 20,
                        bottom: 20,
                      ),
                      padding: EdgeInsets.zero,
                      width: 120,
                      decoration: const BoxDecoration(
                        color: Color(0xFFFF9900),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('''Kode Booking''',
                              style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                  color: const Color(0xFF545454),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  fontStyle: FontStyle.normal,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                              textAlign: TextAlign.left,
                              maxLines: 1),
                          Text('''Jumlah Tiket''',
                              style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                  color: const Color(0xFF545454),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
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
                      margin: const EdgeInsets.only(
                        left: 5,
                        top: 20,
                        right: 0,
                        bottom: 20,
                      ),
                      padding: EdgeInsets.zero,
                      width: 200,
                      decoration: const BoxDecoration(
                        color: Color(0xFFFF9900),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('''BACTBGT001''',
                              style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                  color: const Color(0xFF545454),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  fontStyle: FontStyle.normal,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                              textAlign: TextAlign.left,
                              maxLines: 1),
                          Text('''1 Orang  |  A4''',
                              style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                  color: const Color(0xFF545454),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  fontStyle: FontStyle.normal,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                              textAlign: TextAlign.left,
                              maxLines: 2),
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
                height: 180,
                decoration: const BoxDecoration(
                  color: Color(0xFFFFFFFF),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('''Simpan Kode Booking Anda''',
                        style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                            color: const Color(0xFF545454),
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            fontStyle: FontStyle.normal,
                            decoration: TextDecoration.none,
                          ),
                        ),
                        textAlign: TextAlign.center,
                        maxLines: 4),
                    Text('''SELAMAT MENONTON''',
                        style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                            color: const Color(0xFF545454),
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
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
                padding: const EdgeInsets.only(
                  top: 12,
                ),
                width: double.maxFinite,
                height: 53,
                decoration: const BoxDecoration(
                  color: Color(0xFF36474F),
                ),
                child: GestureDetector(
                    onTap: () async {
                      await Navigator.push<void>(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Movies(),
                        ),
                      );
                    },
                    child: Container(
                        width: double.maxFinite,
                        height: 48,
                        decoration: const BoxDecoration(
                          color: Color(0xFF36474F),
                        ),
                        child: Text(
                          '''KEMBALI''',
                          style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                              color: const Color(0xFFFF9900),
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                              fontStyle: FontStyle.normal,
                              decoration: TextDecoration.none,
                            ),
                          ),
                          textAlign: TextAlign.center,
                        ))),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
