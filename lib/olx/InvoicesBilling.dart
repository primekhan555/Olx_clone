import 'package:flutter/material.dart';
import 'BuyPackages.dart';
import 'MyOrders.dart';

class InvoicesBilling extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StateInvoicesBilling();
}

class StateInvoicesBilling extends State<InvoicesBilling> {
  List<Widget> screens = [
    BuyPackages(),
    MyOrders(),
  ];
  List<String> heading = [
    'Buy packages',
    'My Orders',
    'Invoices',
    'Billing information'
  ];
  List<String> subHeading = [
    'Sell faster, more & at higher margins with packages',
    'Active, scheduled and expired orders',
    'See and download your invoices',
    'Edit your billing name, address, etc'
  ];
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[100],
          title: Text('INVOICES & BILLING'),
        ),
        body: Container(
            child: ListView.builder(
          itemBuilder: (_, index) => ListTile(
              title: Text(
                heading[index],
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                ),
              ),
              subtitle: Text(subHeading[index]),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                var route2 = MaterialPageRoute(
                    builder: (BuildContext context) => screens[index]);
                Navigator.of(context).push(route2);
              }),
          itemCount: heading.length,
        )),
      );
}
