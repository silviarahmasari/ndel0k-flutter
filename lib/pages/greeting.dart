import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:map/map.dart';
import 'package:latlng/latlng.dart';
import 'package:paged_vertical_calendar/paged_vertical_calendar.dart';

class PageHappyWatching extends StatefulWidget {
  const PageHappyWatching({
    Key? key,
  }) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<PageHappyWatching> {
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.only(
                  bottom: 100,
                ),
                decoration: const BoxDecoration(
                  color: Color(0xFF000000),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.zero,
                      padding: EdgeInsets.zero,
                      width: 120,
                      height: 120,
                      decoration: const BoxDecoration(
                        color: Color(0xFF000000),
                      ),
                      child: Image.network(
                        '''https://source.unsplash.com/random''',
                        width: double.maxFinite,
                        height: 150,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(
                  top: 10,
                  right: 1,
                  bottom: 5,
                ),
                decoration: const BoxDecoration(
                  color: Color(0xFF000000),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('''Happy Watching!''',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: const Color(0xFFFFA800),
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                            fontStyle: FontStyle.normal,
                            decoration: TextDecoration.none,
                          ),
                        ),
                        textAlign: TextAlign.left,
                        maxLines: 2),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.zero,
                decoration: const BoxDecoration(
                  color: Color(0xFF000000),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('''Kamu sudah berhasil membeli tiket''',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: const Color(0xFFFFFFFF),
                            fontWeight: FontWeight.w400,
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
                margin: EdgeInsets.zero,
                padding: const EdgeInsets.only(
                  top: 70,
                ),
                decoration: const BoxDecoration(
                  color: Color(0xFF000000),
                ),
                child: GestureDetector(
                    child: Container(
                        width: 270,
                        height: 45,
                        decoration: BoxDecoration(
                          color: const Color(0xFF273238),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          ),
                        ),
                        child: Text(
                          '''Cek Tiket''',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              color: const Color(0xFFFFFFFF),
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              fontStyle: FontStyle.normal,
                              decoration: TextDecoration.none,
                            ),
                          ),
                          textAlign: TextAlign.center,
                        ))),
              ),
              Container(
                margin: EdgeInsets.zero,
                padding: const EdgeInsets.only(
                  top: 10,
                ),
                decoration: const BoxDecoration(
                  color: Color(0xFF000000),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('''Kembali ke Home''',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: const Color(0xFF6697EE),
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            fontStyle: FontStyle.normal,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        textAlign: TextAlign.left,
                        maxLines: 1),
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
