import 'package:projectpos/ui/base_widget.dart';
import 'package:flutter/material.dart';
import 'package:projectpos/views/menurestoran.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseWidget(builder: (context, sizinginfo){
      return Scaffold(
        body: Container(
          width: double.infinity,
          height: sizinginfo.screenSize.height,
          color: Colors.amber,
          child: Padding(
            padding: sizinginfo.deviceScreenType.toString()=="DeviceScreenType.Dekstop"? EdgeInsets.symmetric(horizontal: 500.0):sizinginfo.deviceScreenType.toString()=="DeviceScreenType.Tablet"? EdgeInsets.symmetric(horizontal: 500.0):EdgeInsets.symmetric(horizontal: 0.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Makan Dimana?',style: TextStyle(fontFamily:'poppinsnold',color: Colors.black,fontWeight: FontWeight.bold,fontSize: 24.0),),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  margin: EdgeInsets.only(left: 20.0,right: 20.0,top: 25.0),
                  height: 50.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color: Colors.white
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintStyle: TextStyle(fontSize:12.0,color:Color.fromRGBO(147,147,147,1),fontStyle: FontStyle.italic,fontFamily: 'poppins',fontWeight: FontWeight.w300),
                      hintText: 'Tulis Nama Warung Makan Disini',
                      border: InputBorder.none,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>MenuRestoran()));
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 20.0,right: 20.0,top: 25.0),
                    height: 50.0,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Colors.black
                    ),
                    child: Center(
                      child: Text('cari sekarang',style: TextStyle(color: Colors.white,fontSize: 16.0,fontFamily:'poppins',fontWeight: FontWeight.w400),),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
              //sizinginfo.deviceScreenType.toString() == "DeviceScreenType.Mobile"? 150 :400
      );
    },);
  }
}
