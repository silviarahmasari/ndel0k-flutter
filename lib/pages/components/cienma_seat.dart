
import 'package:flutter/material.dart';
import '../const.dart';

class CienmaSeat extends StatefulWidget {
   bool isReserved;
   bool isSelected;

   CienmaSeat({Key? key, this.isSelected = false, this.isReserved = false}) : super(key: key);

  @override
  _CienmaSeatState createState() => _CienmaSeatState();
    
}

class _CienmaSeatState extends State<CienmaSeat> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () {
        setState(() {
          !widget.isReserved ? widget.isSelected = !widget.isSelected : null;
        });
      },
      child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 7.0, vertical: 5.0),
          width: MediaQuery.of(context).size.width / 15,
          height: MediaQuery.of(context).size.width / 15,
          decoration: BoxDecoration(
              color: widget.isSelected
                  ? kPimaryColor//warnae ganti
                  : widget.isReserved ? Colors.white : null,
              border: !widget.isSelected && !widget.isReserved
                  ? Border.all(color: Colors.white/*ganti warnae*/, width: 1.0)
                  : null,
              borderRadius: BorderRadius.circular(5.0)),
                    child: 
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center ,
                        children: [
                          Text(
                            'A',
                              style: TextStyle(
                                  color: const Color(0xFFFFFFFF),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 9,
                                  fontStyle: FontStyle.normal,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                         ],
                        ),
                      ),
                    );


  }
}