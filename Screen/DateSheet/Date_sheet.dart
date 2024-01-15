import 'package:flutter/material.dart';

class DateSheet extends StatefulWidget {
  const DateSheet({super.key});

  @override
  State<DateSheet> createState() => _DateSheetState();
}

class _DateSheetState extends State<DateSheet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        automaticallyImplyLeading: false,
        title: Center(
            child: Text(
          'Date Sheet',
          style: TextStyle(color: Colors.white),
        )),
      ),
      body: Column(
        children: [
          Expanded(
              child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                )),
            child: ListView(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10,right: 10),
                  padding: EdgeInsets.all(10.0),
                  width: MediaQuery.of(context).size.width,
                 // height: MediaQuery.of(context).size.height / 8,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 20,
                        child: Divider(
                          thickness: 1.0,
                        ),
                      ),
                      //first need a row and three colomn
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //1
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '11',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 26.0),
                              ),
                              Text(
                                'JAN',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w300,
                                    fontSize: 13.0),
                              )
                            ],
                          )
                          //2 colomun
                          ,
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Computer Science',
                                style: TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              Text(
                                'Monday',
                                style: TextStyle(
                                    fontSize: 13.0,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.black),
                              )
                            ],
                          )
                        
                        //3 on
                        ,Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('9:00 AM',style: TextStyle(
                              fontSize: 13.0,fontWeight: FontWeight.w300,
                              color: Colors.black54
                            ),)
                          ],

                        )
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                        child: Divider(
                          thickness: 1.0,
                        ),
                      )
                    ],
                  ),
                ),
                //2
                Container(
                  margin: EdgeInsets.only(left: 10,right: 10),
                  padding: EdgeInsets.all(10.0),
                  width: MediaQuery.of(context).size.width,
                 // height: MediaQuery.of(context).size.height / 8,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 20,
                        child: Divider(
                          thickness: 1.0,
                        ),
                      ),
                      //first need a row and three colomn
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //1
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '12',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 26.0),
                              ),
                              Text(
                                'JAN',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w300,
                                    fontSize: 13.0),
                              )
                            ],
                          )
                          //2 colomun
                          ,
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Biology',
                                style: TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              Text(
                                'Tuesday',
                                style: TextStyle(
                                    fontSize: 13.0,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.black),
                              )
                            ],
                          )
                        
                        //3 on
                        ,Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('10:00 AM',style: TextStyle(
                              fontSize: 13.0,fontWeight: FontWeight.w300,
                              color: Colors.black54
                            ),)
                          ],

                        )
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                        child: Divider(
                          thickness: 1.0,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10,right: 10),
                  padding: EdgeInsets.all(10.0),
                  width: MediaQuery.of(context).size.width,
                 // height: MediaQuery.of(context).size.height / 8,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 20,
                        child: Divider(
                          thickness: 1.0,
                        ),
                      ),
                      //first need a row and three colomn
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //1
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '13',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 26.0),
                              ),
                              Text(
                                'JAN',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w300,
                                    fontSize: 13.0),
                              )
                            ],
                          )
                          //2 colomun
                          ,
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Chemistry',
                                style: TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              Text(
                                'Wednesday',
                                style: TextStyle(
                                    fontSize: 13.0,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.black),
                              )
                            ],
                          )
                        
                        //3 on
                        ,Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('11:00 AM',style: TextStyle(
                              fontSize: 13.0,fontWeight: FontWeight.w300,
                              color: Colors.black54
                            ),)
                          ],

                        )
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                        child: Divider(
                          thickness: 1.0,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10,right: 10),
                  padding: EdgeInsets.all(10.0),
                  width: MediaQuery.of(context).size.width,
                 // height: MediaQuery.of(context).size.height / 8,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 20,
                        child: Divider(
                          thickness: 1.0,
                        ),
                      ),
                      //first need a row and three colomn
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //1
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '14',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 26.0),
                              ),
                              Text(
                                'JAN',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w300,
                                    fontSize: 13.0),
                              )
                            ],
                          )
                          //2 colomun
                          ,
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Physics',
                                style: TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              Text(
                                'Thursday',
                                style: TextStyle(
                                    fontSize: 13.0,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.black),
                              )
                            ],
                          )
                        
                        //3 on
                        ,Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('12:00 PM',style: TextStyle(
                              fontSize: 13.0,fontWeight: FontWeight.w300,
                              color: Colors.black54
                            ),)
                          ],

                        )
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                        child: Divider(
                          thickness: 1.0,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10,right: 10),
                  padding: EdgeInsets.all(10.0),
                  width: MediaQuery.of(context).size.width,
                 // height: MediaQuery.of(context).size.height / 8,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 20,
                        child: Divider(
                          thickness: 1.0,
                        ),
                      ),
                      //first need a row and three colomn
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //1
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '15',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 26.0),
                              ),
                              Text(
                                'JAN',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w300,
                                    fontSize: 13.0),
                              )
                            ],
                          )
                          //2 colomun
                          ,
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Mathmatics',
                                style: TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              Text(
                                'Friday',
                                style: TextStyle(
                                    fontSize: 13.0,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.black),
                              )
                            ],
                          )
                        
                        //3 on
                        ,Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('1:00 PM',style: TextStyle(
                              fontSize: 13.0,fontWeight: FontWeight.w300,
                              color: Colors.black54
                            ),)
                          ],

                        )
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                        child: Divider(
                          thickness: 1.0,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
