import 'package:flutter/material.dart';
import 'package:projectpos/card/cardmenu.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Container(
            padding: EdgeInsets.only(left: 21.0),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color.fromRGBO(233,233,233,1),
              borderRadius: BorderRadius.circular(5.0),
              border: Border.all(color: Color.fromRGBO(134, 134, 134,1),width: 0.2)
            ),
            child: Row(
              children: [
                GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back_rounded,color: Colors.black,)),
                SizedBox(width: 10.0,),
                Flexible(
                  child: TextField(
                    decoration: InputDecoration(
                      hintStyle: TextStyle(fontSize:16.0,color:Colors.black,fontFamily: 'poppins',fontWeight: FontWeight.w300),
                      hintText: 'Cari Menu Restoran',
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        body: Container(
          child:ListView.builder(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemCount: 2,
              itemBuilder: (context,index){
                if(index!=0){
                  return CardMenu(image: 'images/sop.png',nama: 'Sop Telur Jamur',harga: '22.000',stok: 9,);
                }
                return Padding(
                  padding: const EdgeInsets.only(top: 28.0),
                  child: CardMenu(image: 'images/sop.png',nama: 'Sop Telur Jamur',harga: '22.000',stok: 0,),
                );

              }
          ),
        ),
      ),
    );
  }
}
