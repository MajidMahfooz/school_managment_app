import 'package:flutter/material.dart';

class MyProfileScreen extends StatefulWidget {
  const MyProfileScreen({super.key});

  @override
  State<MyProfileScreen> createState() => _MyProfileScreenState();
}

class _MyProfileScreenState extends State<MyProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blueAccent,
        elevation: 0.0,
        title: Center(
            child: Text(
          'My Profile',
          style: TextStyle(color: Colors.white,fontSize: 17.0),
        )),
        actions: [
          InkWell(
            onTap: () {
              // sent to report to school managment,
            },
            child: Container(
              padding: EdgeInsets.only(right: 11.0),
              child: Row(
                children: [
                  Icon(
                    Icons.report_gmailerrorred_outlined,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    'Report',
                    style: TextStyle(
                        fontWeight: FontWeight.w600, color: Colors.white),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 150,
            decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                )),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  maxRadius: 50.0,
                  minRadius: 50.0,
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage('assets/logo2.jpg'),
                ),
                SizedBox(
                  width: 15.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Faiz Khan',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      'Class XII- A | Roll No: 12',
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // ek rule hai bna kar aise call kar skate hai 
              ProfileDetailsRow(
                  title: 'Registration Number', value: '2020-ASDF-2024'),
              ProfileDetailsRow(title: 'Academic Year', value: '2020-2014'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ProfileDetailsRow(title: 'Admission Class', value: 'X-II'),
              ProfileDetailsRow(title: 'Admission Number', value: '001254'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ProfileDetailsRow(
                  title: 'Date Of Admission', value: '1 Aug, 2020'),
              ProfileDetailsRow(title: 'Date Of Birth', value: '3 May 1998'),
            ],
          ),

          // aur dosra aise khuch
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Email',
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.black,
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                    SizedBox(height: 5.0,),
                     Text(
                      'john12@gmail.com',
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(width: 10.0,),
                    SizedBox(
                      width: MediaQuery.of(context).size.width/1.1,
                      child: Divider(
                        thickness: 1.0,
                      ),
                    )
                  ],
                ),
                Icon(Icons.lock_outline,size: 20.0,)
              ],
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Father Name',
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.black,
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                    SizedBox(height: 5.0,),
                     Text(
                      'John Mirza',
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(width: 10.0,),
                    SizedBox(
                      width: MediaQuery.of(context).size.width/1.1,
                      child: Divider(
                        thickness: 1.0,
                      ),
                    )
                  ],
                ),
                Icon(Icons.lock_outline,size: 20.0,)
              ],
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Mothe Name',
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.black,
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                    SizedBox(height: 5.0,),
                     Text(
                      'Jill Biden',
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(width: 10.0,),
                    SizedBox(
                      width: MediaQuery.of(context).size.width/1.1,
                      child: Divider(
                        thickness: 1.0,
                      ),
                    )
                  ],
                ),
                Icon(Icons.lock_outline,size: 20.0,)
              ],
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Mobile Number',
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.black,
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                    SizedBox(height: 5.0,),
                     Text(
                      '76255XXXX',
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(width: 10.0,),
                    SizedBox(
                      width: MediaQuery.of(context).size.width/1.1,
                      child: Divider(
                        thickness: 1.0,
                      ),
                    )
                  ],
                ),
                Icon(Icons.lock_outline,size: 20.0,)
              ],
            ),
          ),
        
        
        
        ],
      ),
    );
  }
}

class ProfileDetailsRow extends StatelessWidget {
  const ProfileDetailsRow(
      {super.key, required this.title, required this.value});

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 10.0, left: 10.0, top: 1.0),
      width: MediaQuery.of(context).size.width / 2,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w200),
              ),
              SizedBox(
                height: 5.0,
              ),
              Text(
                value,
                style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 10.0,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 3,
                child: Divider(
                  thickness: 1.0,
                ),
              )
            ],
          ),
          Icon(
            Icons.lock_outline,
            size: 20.0,
          ),
        ],
      ),
    );
  }
}
