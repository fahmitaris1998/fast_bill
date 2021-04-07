import 'package:flutter/material.dart';
import 'package:projectpos/card/cardmenu.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
             new Icon(Icons.arrow_back_sharp,color: Colors.black,),
              Text('Warung Upnormal',style: TextStyle(color: Colors.black,fontSize: 16.0,fontFamily: 'poppinsnold',fontWeight: FontWeight.w700)),
              SizedBox(width: 50.0,)
            ],
          )
        ),
        body:
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top:17.0,right: 29.0,left: 29.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    border: Border.all(color: Color.fromRGBO(80,171,255,1),width: 1.0),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(47, 155, 255, 0.11),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 4), // changes position of shadow
                      ),
                    ],

                  ),
                  child: Container(
                    decoration:BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: Colors.white
                    ) ,
                    padding: EdgeInsets.symmetric(horizontal: 14.0),
                    child: TextField(
                      maxLines: 1,
                      decoration: InputDecoration(
                        hintStyle: TextStyle(fontSize:12.0,color:Colors.black,fontStyle: FontStyle.italic,fontFamily: 'poppins',fontWeight: FontWeight.w400),
                        hintText: 'Masukan Nama Pemesan',
                        border: InputBorder.none,
                      ),
                    ),
                  )
                ),
                SizedBox(height:17.0,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 29.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('List Pesanan',style: TextStyle(color: Colors.black,fontSize: 12.0,fontFamily: 'poppinsnold',fontWeight: FontWeight.w700)),
                      Text('Tambah +',style: TextStyle(fontFamily:'poppinsnold',color: Colors.amber,fontWeight: FontWeight.bold,fontSize: 14.0),),
                    ],
                  ),
                ),
                Expanded(
                    child: ListView.builder(
                      itemCount: 4,
                        itemBuilder: (context,index){
                          if(index!=0){
                            return CardMenu(image: 'images/sop.png',nama: 'Sop Telur Jamur',harga: '22.000',stok: 9,);
                          }
                          return Padding(
                            padding: const EdgeInsets.only(top: 28.0),
                            child: CardMenu(image: 'images/sop.png',nama: 'Sop Telur Jamur',harga: '22.000',stok: 0,),
                          );
                        }
                    )
                ),
                Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Saya duduk di meja nomor',style: TextStyle(fontStyle:FontStyle.italic,color: Colors.black,fontSize: 12.0,fontFamily: 'poppins',fontWeight: FontWeight.w400)),

                          ],
                        ),
                      ),
                      Container(
                          width: double.infinity,
                          height: 118.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromRGBO(0, 0, 0, 0.1),
                                offset: Offset(1.0, 0.0), //(x,y)
                                blurRadius: 6.0,
                              ),
                            ],
                          ),
                          child:Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16.0),
                            child: Column(
                                children:[
                                  SizedBox(height: 8.0,),
                                  Align(
                                      alignment: Alignment.topLeft,
                                      child: Text('Total : '+ "36.000",style: TextStyle(color: Colors.black,fontSize: 14.0,fontFamily: 'poppinsnold',fontWeight: FontWeight.w700))),
                                  SizedBox(height: 8.0,),
                                  Container(
                                    padding: EdgeInsets.symmetric(horizontal: 18.0,vertical: 12.0),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5.0),
                                      color: Colors.amber,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.amber.withOpacity(0.3),
                                          spreadRadius: 4,
                                          blurRadius: 5,
                                          offset: Offset(0, 4), // changes position of shadow
                                        ),
                                      ],
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text('Generate QR Code',
                                          style: TextStyle(
                                              color:Colors.white,
                                              fontFamily: 'poppins',
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.w400
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ]
                            ),
                          )
                      ),
                    ],
                  ),
              ],
            ),
      ),
    );
  }
}
