import 'package:flutter/material.dart';

class DisplayScreen extends StatefulWidget {
  const DisplayScreen ({super.key});

  @override
  State<DisplayScreen > createState() => _DisplayScreenState();
}

class _DisplayScreenState extends State<DisplayScreen > {
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
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top:5.0,left: 10,right: 10),
                child: Text('Hyundai Tucson (used) ',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.only(top:5.0,left: 35,right: 35),
                child: Text('ج.م35000',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold),),
              ),
     SingleChildScrollView(
       scrollDirection: Axis.horizontal,

         child: Row(
                    children: [
                      Container(
                        width: 250,
                        height: 200,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/T.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(width: 30,),
                      Container(
                        width: 260,
                        height: 210,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/T.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(width: 30,),
                      Container(
                        width: 250,
                        height: 200,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/T.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),),

             SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              textDirection: TextDirection.rtl,
              children: [
                CircleAvatar(
                    radius: 58,
                    backgroundColor: Color(0xFF187AC8),
                    child: Column(
                      children: [
                        Text('براند',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),),
                        SizedBox(width: 5,),
                        Icon(Icons.car_rental,
                          color: Colors.white,
                          size: 40,
                        ),
                        SizedBox(width: 5,),
                        Text('Hyundai',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),),
                      ],
                    )
                ),
                SizedBox(width: 10,),
                CircleAvatar(
                    radius: 58,
                    backgroundColor: Color(0xFF187AC8),
                    child: Column(
                      children: [
                        Text('موديل',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),),
                        SizedBox(width: 5,),
                       Icon(Icons.lightbulb_circle ,color: Colors.white,
                          size: 40,
                        ),
                        SizedBox(width: 5,),
                       Text('Tucson',style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),),
                      ],
                    )
                ),
                SizedBox(width: 10,),
                CircleAvatar(
                    radius: 58,
                    backgroundColor: Color(0xFF187AC8),
                    child: Column(
                      children: [
                        Text('السعر',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),),
                        SizedBox(width: 5,),
                        Icon(Icons.monetization_on_outlined,
                          color: Colors.white,
                          size: 40,
                        ),
                        SizedBox(width: 5,),
                        Text('35000',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),),
                      ],
                    )
                ),

              ],

            ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                textDirection: TextDirection.rtl,
                children: [
                  CircleAvatar(
                      radius: 58,
                      backgroundColor: Color(0xFF187AC8),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top:10.0),
                            child: Text('جسم السيارة',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                              ),),
                          ),
                          SizedBox(width: 5,),
                          Icon(Icons.car_repair,color: Colors.white,
                            size: 40,
                          ),
                          SizedBox(width: 5,),
                          Text('SUV',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),),
                        ],
                      )
                  ),

                  SizedBox(width: 10,),
                  CircleAvatar(
                      radius: 58,
                      backgroundColor: Color(0xFF187AC8),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top:10.0),
                            child: Text('خيارات الدفع',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                              ),),
                          ),
                          SizedBox(width: 5,),
                          Icon(Icons.payment_rounded,
                            color: Colors.white,
                            size: 40,
                          ),
                          SizedBox(width: 5,),
                          Text('خيارات الدفع',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),),
                        ],
                      )
                  ),
                  SizedBox(width: 10,),
                  CircleAvatar(
                      radius: 58,
                      backgroundColor: Color(0xFF187AC8),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top:10.0),
                            child: Text('سعة المحرك',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                              ),),
                          ),
                          SizedBox(width: 5,),
                          Icon(Icons.settings,
                            color: Colors.white,
                            size: 40,
                          ),
                          SizedBox(width: 5,),
                          Text('2000',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),),
                        ],
                      )
                  ),


                ],

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