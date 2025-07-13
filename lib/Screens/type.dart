import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class TypeScreen extends StatefulWidget {
  const TypeScreen ({super.key});

  @override
  State<TypeScreen > createState() => _TypeScreenState();
}

class _TypeScreenState extends State<TypeScreen > {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: (){
            Navigator.pop(context);
          }, icon: Icon(Icons.arrow_forward_ios,size: 30),),
        ],
      ),
      body: Column(
        children: [
          Center(
            child:  Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(' إختر نوع السيارة',style: TextStyle(
                  color: Color(0xFF003366),
                  fontSize: 30,
                  fontWeight: FontWeight.bold),),
            ),),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              textDirection: TextDirection.rtl,
              children: [

              Column(
                children: [
                  Container(
                    height: 140,
                    width: 175,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.asset('assets/images/B.png',
                        fit: BoxFit.cover,),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text('   بي ام دبليو',style: TextStyle(
                      color: Color(0xFF003366),
                      fontSize: 30,
                      fontWeight: FontWeight.bold),),
                ],
              ),
              SizedBox(width: 20,),
              Column(
                children: [
                  Container(
                    height: 140,
                    width: 175,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.asset('assets/images/S.png',
                        fit: BoxFit.cover,),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text('شيفورليه',style: TextStyle(
                      color: Color(0xFF003366),
                      fontSize: 30,
                      fontWeight: FontWeight.bold),),
                ],
              ),
            ],),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              textDirection: TextDirection.rtl,
              children: [

                Column(
                  children: [
                    Container(
                      height: 140,
                      width: 175,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child: Image.asset('assets/images/o.png',
                          fit: BoxFit.cover,),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text('هوندا',style: TextStyle(
                        color: Color(0xFF003366),
                        fontSize: 30,
                        fontWeight: FontWeight.bold),),
                  ],
                ),
                SizedBox(width: 20,),
                Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context,"/used");
                      },
                      child: Container(
                        height: 140,
                        width: 175,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(40),
                          child: Image.asset('assets/images/y.png',
                            fit: BoxFit.cover,),
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text('هيونداي',style: TextStyle(
                        color: Color(0xFF003366),
                        fontSize: 30,
                        fontWeight: FontWeight.bold),),
                  ],
                ),
              ],),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        color: Colors.white,
        child:Container(
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border(
              top: BorderSide(
                color: Color(0xFF6EA1C4),
                width: 2,
              ),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              textDirection: TextDirection.rtl,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context,"/home");
                  },

                  child: Container(
                    width: 130,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Color(0xFFD1D0D0),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      textDirection: TextDirection.rtl,
                      children: [
                        Icon(
                          Icons.home,
                          size: 35,),
                        Text('الرئيسية', style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),),

                      ],
                    ),
                  ),
                ),
                Icon(Icons.car_repair,
                  size: 35,
                  color: Colors.grey,),
                Icon(Icons.notifications_none_outlined,
                  size: 35,
                  color: Colors.grey,),
                Icon(Icons.person,
                  size: 35,
                  color: Colors.grey,),
              ],
            ),
          ),
        ),),
    );
  }
}