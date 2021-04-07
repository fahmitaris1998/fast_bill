import 'package:projectpos/ui/base_widget.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseWidget(builder: (context, sizinginfo){
        return Scaffold(
          body: Stack(
            children: [
              Container(
                height: sizinginfo.screenSize.height * .45,
                decoration: BoxDecoration(
                  color: Color(0xFFF5CEB8)
                ),
              ),
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    children: [
                      Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            alignment: Alignment.center,
                            height: 52,
                            width: 52,
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              shape: BoxShape.circle
                            ),
                            child: Icon(Icons.menu,color: Colors.white,),
                          ),
                        ),

                      Align(
                        alignment: Alignment.topLeft,
                          child:
                          Text("Hi!! Fahmi Still \nCreate Oke",
                          style: Theme.of(context)
                            .textTheme
                            .display1
                            .copyWith(fontWeight: FontWeight.w900,color: Colors.black),)
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 30),
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Search",
                            icon: Icon(Icons.search),
                            border: InputBorder.none
                          ),
                        ),
                      ),
                      SizedBox(height: 30.0,),
                      Expanded(
                        child: GridView.count(
                            crossAxisCount: 2,
                          crossAxisSpacing: 20,
                          mainAxisSpacing: 20,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(13),
                                  image: DecorationImage(
                                      image: ExactAssetImage('assets/image_01.png'),
                                      fit: BoxFit.fitHeight
                                  ),
                                boxShadow: [
                                  BoxShadow(
                                    offset: Offset(0,17),
                                    blurRadius: 17,
                                    spreadRadius: -23,
                                    color: Colors.black12
                                  )
                                ]
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(13),
                                  image: DecorationImage(
                                    image: ExactAssetImage('assets/image_02.jpg'),
                                    fit: BoxFit.fitHeight
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                        offset: Offset(0,17),
                                        blurRadius: 17,
                                        spreadRadius: -23,
                                        color: Colors.black12
                                    )
                                  ]
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(13),
                                  image: DecorationImage(
                                      image: ExactAssetImage('assets/image_03.jpg'),
                                      fit: BoxFit.fitHeight
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                        offset: Offset(0,17),
                                        blurRadius: 17,
                                        spreadRadius: -23,
                                        color: Colors.black12
                                    )
                                  ]
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(13),
                                  image: DecorationImage(
                                      image: ExactAssetImage('assets/image_04.jpg'),
                                      fit: BoxFit.fitHeight
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                        offset: Offset(0,17),
                                        blurRadius: 17,
                                        spreadRadius: -23,
                                        color: Colors.black12
                                    )
                                  ]
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
    },);
  }
}
