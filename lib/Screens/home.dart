import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen ({super.key});

  @override
  State<HomeScreen > createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen > {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(
               children: [
                 SizedBox(height: 40,),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   textDirection: TextDirection.rtl,
                   children: [
                     Padding(
                       padding: const EdgeInsets.all(10.0),
                       child: Text('شراء مباشر',style: TextStyle(
                         fontSize: 40,
                       fontWeight: FontWeight.bold),),
                     ),
                   ],
                 ),
                 SizedBox(height: 40,),
                 InkWell(
                   onTap: () {
                     Navigator.pushNamed(context,"/type");
                   },
                   child: Container(
                     height: 150,
                     decoration: BoxDecoration(
                       border: Border.all(color: Colors.black,
                       width: 4,
                       ),
                       borderRadius: BorderRadius.only(
                         topLeft: Radius.circular(65),
                         bottomLeft: Radius.circular(65),
                       ),
                     ),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         textDirection: TextDirection.rtl,
                         children: [
                           Expanded(
                             flex: 3,
                             child: Text('سيارات مستعملة بأسعار تنافسية',
                               style: TextStyle(
                                 color: Color(0xFF003366),
                               fontSize: 30,
                             fontWeight: FontWeight.bold),),
                           ),
                           Expanded(
                             flex: 2,
                            child: ClipRRect(
                               borderRadius: BorderRadius.only(
                                 topLeft: Radius.circular(60),
                                 bottomLeft: Radius.circular(60),
                               ),child: Image.asset('assets/images/car.png',
                                 fit: BoxFit.cover,),
                           ),
                           ),
                         ],
                       ),

                   ),
                 ),
                 SizedBox(height: 40,),
                 Container(
                   height: 150,
                   decoration: BoxDecoration(
                     border: Border.all(color: Colors.black,
                       width: 4,
                     ),
                     borderRadius: BorderRadius.only(
                       topRight: Radius.circular(65),
                       bottomRight: Radius.circular(65),
                     ),
                   ),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     textDirection: TextDirection.rtl,
                     children: [
                       Expanded(
                         flex: 2,
                         child: ClipRRect(
                           borderRadius: BorderRadius.only(
                             topRight: Radius.circular(60),
                             bottomRight: Radius.circular(60),
                           ),child: Image.asset('assets/images/Carnew.png',
                           fit: BoxFit.cover,),
                         ),
                       ),
                       Expanded(
                         flex: 3,
                         child: Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Text('سيارات جديدة بحالة المصنع جاهزة للشراء',
                             style: TextStyle(
                                 color: Color(0xFF003366),
                                 fontSize: 25,
                                 fontWeight: FontWeight.bold),),
                         ),
                       ),
                     ],
                   ),

                 ),
                 SizedBox(height: 40,),
                 Container(
                   height: 150,
                   decoration: BoxDecoration(
                     border: Border.all(color: Colors.black,
                       width: 4,
                     ),
                     borderRadius: BorderRadius.only(
                       topLeft: Radius.circular(65),
                       bottomLeft: Radius.circular(65),
                     ),
                   ),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     textDirection: TextDirection.rtl,
                     children: [
                       Expanded(
                         flex: 3,
                         child: Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Text("فرص ذهبية للسيارات الحادثة", style: TextStyle(
                                 color: Color(0xFF003366),
                                 fontSize: 25,
                                 fontWeight: FontWeight.bold),),
                         ),
                       ),
                       Expanded(
                         flex: 2,
                         child: ClipRRect(
                           borderRadius: BorderRadius.only(
                             topLeft: Radius.circular(60),
                             bottomLeft: Radius.circular(60),
                           ),child: Image.asset('assets/images/caract.png',
                           fit: BoxFit.cover,),
                         ),
                       ),
                     ],
                   ),

                 ),


               ],
             ),
          ),
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



