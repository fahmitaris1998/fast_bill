import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projectpos/card/cardmenu.dart';
import 'package:projectpos/views/search.dart';

class MenuRestoran extends StatefulWidget {
  @override
  _MenuRestoranState createState() => _MenuRestoranState();
}

class _MenuRestoranState extends State<MenuRestoran> {
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
              Icon(Icons.arrow_back_rounded,color: Colors.black,),
              Text('Warung Apnormal',style: TextStyle(color: Colors.black,fontSize: 16.0,fontFamily: 'poppinsnold',fontWeight: FontWeight.w700),),
              GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Search()));
                  },
                  child: Icon(Icons.search_rounded,color: Colors.black)),
            ],
          )
        ),
        body: Column(
          children: [
            Expanded(
              child: Container(
                    height: double.infinity,
                    width: double.infinity,
                    child: DefaultTabController(
                      length: 2,
                      child: Scaffold(
                        appBar: AppBar(
                          backgroundColor:Colors.white ,
                          elevation: 0,
                          title: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30.0),
                            child: TabBar(
                              indicatorColor: Colors.amber,
                              labelColor: Colors.black,
                              tabs: [
                                Tab(child: Text('Makanan',style: TextStyle(fontFamily: 'poppinsnold',fontSize: 14.0),),),
                                Tab(child: Text('Minuman',style: TextStyle(fontFamily: 'poppinsnold',fontSize: 14.0),),),

                              ],
                            ),
                          ),
                        ),
                        body:TabBarView(
                          physics: BouncingScrollPhysics(),
                          children: [
                            Container(
                              color: Colors.white,
                              child: ListView.builder(
                                  physics: BouncingScrollPhysics(),
                                  scrollDirection: Axis.vertical,
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
                            Container(
                                color: Colors.white,
                                child: ListView.builder(
                                    physics: BouncingScrollPhysics(),
                                    scrollDirection: Axis.vertical,
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
                          ],
                        ),
                      ),
                    ),
                  ),
            ),
            Visibility(
              visible: true,
              child: Container(
                  width: double.infinity,
                  height: 118.0,
                  color: Colors.white,
                  child:Center(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 18.0,vertical: 12.0),
                      margin: EdgeInsets.symmetric(horizontal: 16.0),
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
                        children: [
                          Text('2'+' item | Total '+ '42.000',
                            style: TextStyle(
                                color:Colors.white,
                                fontFamily: 'poppins',
                                fontSize: 14.0,
                                fontWeight: FontWeight.w700
                            ),
                          ),
                          Expanded(child: SizedBox()),
                          Text('Cek Pesanan',
                            style: TextStyle(
                                color:Colors.white,
                                fontFamily: 'poppins',
                                fontSize: 14.0,
                                fontWeight: FontWeight.w400
                            ),
                          ),
                          Icon(Icons.arrow_forward_ios,color: Colors.white,)
                        ],
                      ),
                    ),
                  )
              ),
            )
          ],
        ),

      ),
    );
  }
}
