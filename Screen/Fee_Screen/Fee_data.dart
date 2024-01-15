class FeeData{
  final String receiptNo;
  final String month;
  final String data;
  final String pymentstatus;
  final String totalAmount;
  final String btnstatus;

  FeeData({required this.receiptNo, required this.month, required this.data, required this.pymentstatus, required this.totalAmount, required this.btnstatus});



}

List<FeeData> fee =[
  FeeData(receiptNo: '65457', month: 'November', data: '8 Nov 2023', pymentstatus: 'Pending', totalAmount: '980\$', btnstatus: 'Pay Now'),
  FeeData(receiptNo: '65467', month: 'September', data: '8 sep 2023', pymentstatus: 'Paid', totalAmount: '980\$', btnstatus: 'DOWNLOAD'),
  FeeData(receiptNo: '64557', month: 'August', data: '8 aug 2023', pymentstatus: 'Pending', totalAmount: '980\$', btnstatus: 'Pay Now'),


];


