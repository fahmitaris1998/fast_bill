import 'package:flutter/material.dart';

class CardCart extends StatefulWidget {
  final String image;
  final String nama;
  final String harga;
  final int stok;

  const CardCart({Key key, this.image, this.nama, this.harga, this.stok}) : super(key: key);
  @override
  _CardCartState createState() => _CardCartState();
}

class _CardCartState extends State<CardCart> {
  bool pilih=false;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20.0,left: 29.0,right:29.0),
      height: 80.0,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(5.0),
              child: Image(image: ExactAssetImage(widget.image))),
          SizedBox(
            width: 12.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(widget.nama,
                  style: TextStyle(
                      color: Color.fromRGBO(53,53,53,1),
                      fontFamily: 'poppinsnold',
                      fontSize: 14.0,
                      fontWeight: FontWeight.w700
                  ),),
              ),
              widget.stok!=0?
              Padding(
                padding: const EdgeInsets.only(bottom: 14.0),
                child: Text(widget.harga,
                  style: TextStyle(
                      color: Color.fromRGBO(53,53,53,1),
                      fontFamily: 'poppinsnold',
                      fontSize: 14.0,
                      fontWeight: FontWeight.w700
                  ),
                ),
              ):
              Padding(
                padding: const EdgeInsets.only(bottom: 14.0),
                child: Text("Stok Habis",
                  style: TextStyle(
                      color: Colors.red,
                      fontFamily: 'poppinsnold',
                      fontSize: 14.0,
                      fontWeight: FontWeight.w700
                  ),
                ),
              )
            ],
          ),
          Expanded(child: SizedBox()),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
