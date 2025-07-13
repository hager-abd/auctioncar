import 'package:flutter/material.dart';

class UsedScreen extends StatefulWidget {
  const UsedScreen ({super.key});

  @override
  State<UsedScreen > createState() => _UsedScreenState();
}

class _UsedScreenState extends State<UsedScreen > {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.menu,size: 30,),),
       actions: [
          IconButton(onPressed: (){
            Navigator.pop(context);
          }, icon: Icon(Icons.arrow_forward_ios,size: 30),),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context,"/display");
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
                        flex:2 ,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top:5.0,left: 10,right: 10),
                              child: Text('Hyundai',
                                style: TextStyle(
                                    color: Color(0xFF003366),
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15,right: 15),
                              child: Text('Tucson 2024 35000ج.م',
                                style: TextStyle(
                                    fontSize: 21,
                                    ),),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(60),
                            bottomLeft: Radius.circular(60),
                          ),child: Image.asset('assets/images/T.png',
                          fit: BoxFit.cover,),
                        ),
                      ),
                    ],
                  ),

                ),
              ),
              SizedBox(height: 10,),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context,"/displayu");
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
                        flex:2 ,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top:5.0,left: 10,right: 10),
                              child: Text('Hyundai',
                                style: TextStyle(
                                    color: Color(0xFF003366),
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15,right: 15),
                              child: Text('Elantra 2023 28000ج.م',
                                style: TextStyle(
                                  fontSize: 21,
                                ),),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(60),
                            bottomLeft: Radius.circular(60),
                          ),child: Image.asset('assets/images/U.png',
                          fit: BoxFit.cover,
                        height: 150,),
                        ),
                      ),
                    ],
                  ),

                ),
              ),


            ],
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