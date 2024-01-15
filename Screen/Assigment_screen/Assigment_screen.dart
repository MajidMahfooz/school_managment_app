import 'package:flutter/material.dart';
import 'package:school_managment_app/Screen/Assigment_screen/data/assigment_data.dart';

class Assigment_screen extends StatefulWidget {
  const Assigment_screen({super.key});

  @override
  State<Assigment_screen> createState() => _Assigment_screenState();
}

class _Assigment_screenState extends State<Assigment_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,automaticallyImplyLeading: false,
        title: Center(
            child: Text(
          'Assigment',
          style: TextStyle(color: Colors.white, fontSize: 20.0),
        )),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
                color: Colors.white,
              ),
              child: ListView.builder(
                padding: EdgeInsets.all(20),
                  itemCount: Assigmnet.length,
                  itemBuilder: (context, int index) {
                    return Container(
                      margin: EdgeInsets.only(bottom: 10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.all(20.0),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black38,
                                    blurRadius: 2.0
                                  )
                                ]
                                ),
                                
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 100,
                                  height: 30.0,
                                  decoration: BoxDecoration(
                                    color: Colors.blueAccent.withOpacity(0.4),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Center(
                                    child: Text(
                                      Assigmnet[index].subjectname,
                                      style: TextStyle(
                                          fontSize: 13.0,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.blueAccent),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text(
                                  Assigmnet[index].topicName,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 15.0,
                                      color: Colors.black),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                AssigmentDataRow(
                                  title: 'Assign Date',
                                  satusvalue: Assigmnet[index].assignDate,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                AssigmentDataRow(
                                  title: 'Last Date',
                                  satusvalue: Assigmnet[index].lastDate,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                AssigmentDataRow(
                                  title: 'Status',
                                  satusvalue: Assigmnet[index].Status,
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                if (Assigmnet[index].Status == 'Pending')
                                  AssigmentBtn(
                                      title: 'To be Submitted', onPress: () {})
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  }),
            ),
          )
        ],
      ),
    );
  }
}

class AssigmentBtn extends StatelessWidget {
  const AssigmentBtn({super.key, required this.title, required this.onPress});

  final String title;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        width: double.infinity,
        height: 40.0,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blueAccent, Colors.blue],
            begin: FractionalOffset(0.0, 0.0),
            end: FractionalOffset(0.5, 0.0),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp,
          ),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w500,
                color: Colors.white),
          ),
        ),
      ),
    );
  }
}

class AssigmentDataRow extends StatelessWidget {
  const AssigmentDataRow(
      {super.key, required this.title, required this.satusvalue});

  final String title;
  final String satusvalue;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.w400,
              color: Colors.black26),
        ),
        Text(
          satusvalue,
          style: TextStyle(
              fontSize: 14.0, fontWeight: FontWeight.w600, color: Colors.black),
        ),
      ],
    );
  }
}
