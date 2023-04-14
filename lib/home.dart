import 'package:flutter/material.dart';
import 'package:untitled3/NavigationScreen.dart';
import 'package:untitled3/homepage.dart';
import 'package:untitled3/main.dart';
import 'package:untitled3/names.dart';
import 'package:untitled3/tasbih.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Masjid Mode"),),
      body: Container(child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView(children: [
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>NavigationScreen()));
            },
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.green,),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Icon(Icons.mosque,size: 50,color: Colors.white,),
              Text("Prayer Times",style: TextStyle(color: Colors.white,fontSize: 24),)
            ],),
            ),
          ),
           InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Names()));
            },
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.green,),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Icon(Icons.apps,size: 50,color: Colors.white,),
              Text("99 Names of Allah",style: TextStyle(color: Colors.white,fontSize: 18),)
            ],),
            ),
          ),
         InkWell(
             onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage()));
            },
           child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.green,),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Icon(Icons.menu_book,size: 50,color: Colors.white,),
              Text("Quran",style: TextStyle(color: Colors.white,fontSize: 30),)
            ],),
            ),
         ),
          InkWell(
              onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Tasbih()));
            },
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.green,),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Icon(Icons.check_box,size: 50,color: Colors.white,),
              Text("Tasbih",style: TextStyle(color: Colors.white,fontSize: 30),)
            ],),
            ),
          ),
          // InkWell(
          //     onTap: (){
          //     Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
          //   },
          //   child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.blue,),
          //   child: Column(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: [
          //     Icon(Icons.explore,size: 50,color: Colors.white,),
          //     Text("Qibla",style: TextStyle(color: Colors.white,fontSize: 30),)
          //   ],),
          //   ),
          // ),
        ],
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 10,crossAxisSpacing: 10),
        ),
      ),),
    );
  }
}