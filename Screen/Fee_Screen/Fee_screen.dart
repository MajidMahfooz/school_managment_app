import 'package:flutter/material.dart';
import 'package:school_managment_app/Screen/Fee_Screen/Fee_data.dart';

class FeeScreen extends StatefulWidget {
  const FeeScreen({super.key});

  @override
  State<FeeScreen> createState() => _FeeScreenState();
}

class _FeeScreenState extends State<FeeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blueAccent,
        title: Center(
          child: Text(
            'Fee',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
              child: Container(
            padding: EdgeInsets.only(top: 50),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0)),
              color: Colors.white,
            ),
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
                padding: EdgeInsets.only(left: 20.0, right: 20.0),
                itemCount: fee.length,
                itemBuilder: (context, int index) {
                  return Container(
                    margin: EdgeInsets.only(bottom: 20.0),
                    child: Column(
                      children: [
                        Container(
                          padding:
                              EdgeInsets.only(left: 10, right: 10, top: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(20),
                              ),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black26,
                                  blurRadius: 2.0,
                                )
                              ]),
                          child: Column(
                            children: [
                              FeeDetailsRow(
                                  title: 'Receipt No',
                                  statusvalue: fee[index].receiptNo),
                              SizedBox(
                                height: 20.0,
                                child: Divider(
                                  thickness: 1.0,
                                ),
                              ),
                              FeeDetailsRow(
                                  title: 'Month',
                                  statusvalue: fee[index].month),
                              SizedBox(
                                height: 10,
                              ),
                              FeeDetailsRow(
                                  title: 'Payment date',
                                  statusvalue: fee[index].data),
                              SizedBox(
                                height: 10,
                              ),
                              FeeDetailsRow(
                                  title: 'Status',
                                  statusvalue: fee[index].pymentstatus),
                              SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                height: 20.0,
                                child: Divider(
                                  thickness: 1.0,
                                ),
                              ),
                              FeeDetailsRow(
                                  title: 'Total Amount',
                                  statusvalue: fee[index].totalAmount),
                            ],
                          ),
                        ),
                        FeeButton(title: fee[index].btnstatus,
                        
                         iconData: fee[index].btnstatus == 'Paid'? Icons.download_outlined : Icons.arrow_forward, 

                        
                        onPress: (){})
                        ],
                    ),
                  );
                }),
          ))
        ],
      ),
    );
  }
}

class FeeButton extends StatelessWidget {
  const FeeButton({super.key, required this.title, required this.iconData, required this.onPress});

  final String title;
  final IconData iconData;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        width: double.infinity,
        height: 40.0,
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.blueAccent,
                Colors.blueAccent,
              ],
              begin: FractionalOffset(0.0, 0.0),
              end: const FractionalOffset(0.5, 0.0),
              stops: [0.0, 1.0],
              tileMode: TileMode.clamp,
            ),
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(10.0),
              bottomLeft: Radius.circular(10.0),
            )),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
            Icon(
              iconData,
              color: Colors.white,
              size: 30.0,
            )
          ],
        ),
      ),
    );
  }
}

class FeeDetailsRow extends StatelessWidget {
  const FeeDetailsRow(
      {super.key, required this.title, required this.statusvalue});

  final String title;
  final String statusvalue;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.w300,
            color: Colors.black38,
          ),
        ),
        Text(
          statusvalue,
          style: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        )
      ],
    );
  }
}
