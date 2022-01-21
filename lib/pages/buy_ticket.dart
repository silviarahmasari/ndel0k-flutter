import 'package:flutter/material.dart';
import 'package:project_uts/pages/ringkasan.dart';
import 'components/cienma_seat.dart';
// import '../model/model.dart';
import 'movies.dart';
import 'sinopsis.dart';
import 'ringkasan.dart';
import 'const.dart';

class BuyTicket extends StatelessWidget {
  final title;

  const BuyTicket(this.title, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade800,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top:15.0 , left:15.0),
              child: Row(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width * .12,
                    height: MediaQuery.of(context).size.width * .12,
                    decoration: kRoundedFadedBorder,
                    child: IconButton(
                        icon: const Icon(
                          Icons.keyboard_arrow_left,
                          size: 28.0,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        }),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .75,
                    child: 
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center ,
                        children: [
                          Text('''Galaxy XXI''',
                              style: TextStyle(
                                  color: const Color(0xFFFFFFFF),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                  fontStyle: FontStyle.normal,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                          Text('''05 Jan | 14:45''',
                              style:  TextStyle(
                                  color: const Color(0xFFFFFFFF),
                                  fontWeight: FontWeight.w300,
                                  fontSize: 16,
                                  fontStyle: FontStyle.normal,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                        ],
                      ),
                  ),
                ],
              ),
            ),
            // 
            // SingleChildScrollView(
            //   scrollDirection: Axis.horizontal,
            //   child: Row(
            //     children: <Widget>[
            //       ShowTime(
            //         time: '11:00',
            //         price: 5,
            //         isActive: false,
            //       ),
            //       ShowTime(
            //         time: '12:30',
            //         price: 10,
            //         isActive: true,
            //       ),
            //       ShowTime(
            //         time: '12:30',
            //         price: 10,
            //         isActive: false,
            //       ),
            //       ShowTime(
            //         time: '12:30',
            //         price: 10,
            //         isActive: false,
            //       ),
            //       ShowTime(
            //         time: '12:30',
            //         price: 10,
            //         isActive: false,
            //       ),
            //     ],
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                        width: (MediaQuery.of(context).size.width / 40),
                      ),
                      CienmaSeat(
                        isSelected: false,
                      ),
                      Text(
                      'Tersedia',
                      style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                          color: Colors.white),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(
                        width: (MediaQuery.of(context).size.width / 30),
                      ),
                      CienmaSeat(
                        isReserved: true,
                      ),
                      Text(
                      'Tidak Tersedia',
                      style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                          color: Colors.white),
                      textAlign: TextAlign.left,
                    ),
                     SizedBox(
                        width: (MediaQuery.of(context).size.width / 30),
                      ),
                      CienmaSeat(
                        isSelected: true,
                      ),
                      Text(
                      'Terpilih',
                      style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                          color: Colors.white),
                      textAlign: TextAlign.left,
                    ),
                      SizedBox(
                        width: (MediaQuery.of(context).size.width / 20),
                      ),
                ],
              ),
            ),
           
            Center(child: Image.asset('assets/screen.png')),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  // First Seat Row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        width: (MediaQuery.of(context).size.width / 20),
                      ),
                      CienmaSeat(
                      
                      ),
                      CienmaSeat(

                      ),
                      CienmaSeat(

                      ),
                      SizedBox(
                        width: (MediaQuery.of(context).size.width / 20) * 2,
                      ),
                      CienmaSeat(

                      ),
                      CienmaSeat(

                      ),
                      SizedBox(
                        width: (MediaQuery.of(context).size.width / 20),
                      ),
                    ],
                  ),
                  // Second Row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CienmaSeat(),
                      CienmaSeat(),
                      CienmaSeat(),
                      CienmaSeat(),
                      SizedBox(
                        width: (MediaQuery.of(context).size.width / 20) * 2,
                      ),
                      CienmaSeat(
                        isReserved: true,
                      ),
                      CienmaSeat(),
                      CienmaSeat(),
                    ],
                  ),
                  // Third  Row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CienmaSeat(),
                      CienmaSeat(),
                      CienmaSeat(),
                      CienmaSeat(),
                      SizedBox(
                        width: (MediaQuery.of(context).size.width / 20) * 2,
                      ),
                      CienmaSeat(),
                      CienmaSeat(
                        isReserved: true,
                      ),
                      CienmaSeat(
                        isReserved: true,
                      ),
                    ],
                  ),
                  // 4TH Row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CienmaSeat(),
                      CienmaSeat(),
                      CienmaSeat(),
                      CienmaSeat(),
                      SizedBox(
                        width: (MediaQuery.of(context).size.width / 20) * 2,
                      ),
                      CienmaSeat(
                        isReserved: true,
                      ),
                      CienmaSeat(),
                      CienmaSeat(),
                    ],
                  ),
                  // 5TH Row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CienmaSeat(),
                      CienmaSeat(),
                      CienmaSeat(),
                      CienmaSeat(),
                      SizedBox(
                        width: (MediaQuery.of(context).size.width / 20) * 2,
                      ),
                      CienmaSeat(),
                      CienmaSeat(),
                      CienmaSeat(),
                    ],
                  ),
                  // 6TH Row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CienmaSeat(),
                      CienmaSeat(),
                      CienmaSeat(),
                      CienmaSeat(),
                      SizedBox(
                        width: (MediaQuery.of(context).size.width / 20) * 2,
                      ),
                      CienmaSeat(),
                      CienmaSeat(),
                      CienmaSeat(),
                    ],
                  ),
                  // final Row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        width: (MediaQuery.of(context).size.width / 20),
                      ),
                      CienmaSeat(),
                      CienmaSeat(),
                      CienmaSeat(),
                      SizedBox(
                        width: (MediaQuery.of(context).size.width / 20) * 2,
                      ),
                      CienmaSeat(),
                      CienmaSeat(),
                      SizedBox(
                        width: (MediaQuery.of(context).size.width / 20),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  const Padding(
                    padding: EdgeInsets.only(left: 25.0),
                    child: Text(
                      'Rp 35.000',
                      style: TextStyle(
            fontSize: 22.0,
            fontWeight: FontWeight.bold,
            color: Colors.white),
                    ),
                  ),
                  Container(
          padding: const EdgeInsets.symmetric(horizontal:40.0 , vertical:15.0),
          decoration: const BoxDecoration(color: Color(0xFF607D8B) , borderRadius: BorderRadius.only(topLeft: Radius.circular(25.0))),
          child: GestureDetector(
            onTap: () async {
                                      await Navigator.push<void>(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => PageRingkasan(),
                                        ),
                                      );
                                    },
            child: Text(
              'RINGKASAN ORDER' , 
              style: TextStyle(
                color: Colors.white ,
                fontSize: 18.0 , 
                fontWeight:FontWeight.bold,
              )
            )),
        )
                ],
              )
          ],
        ),
      ),
    );
  }
}


