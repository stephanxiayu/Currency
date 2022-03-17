import 'package:flutter/material.dart';
import 'package:geldtracker/coin_data.dart';

class PriceScreen extends StatefulWidget {
  const PriceScreen({Key? key}) : super(key: key);

  @override
  _PriceScreenState createState() => _PriceScreenState();
}

class _PriceScreenState extends State<PriceScreen> {
String ? newValue="";
  String? selcetedCurrency;
    void getDropDownItem(){
 
    setState(() {
      newValue = selcetedCurrency ;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('🤑 Coin Ticker'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 0),
            child: Card(
              color: Colors.lightGreen,
              elevation: 5.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 15.0, horizontal: 28.0),
                child: TextButton(
                  onPressed:  getDropDownItem,
                 child:Text( '$newValue',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.grey.shade700,),
                  ),
                ),
              ),
            ),
          ),
          Container(
              height: 150.0,
              alignment: Alignment.center,
              padding: const EdgeInsets.only(bottom: 30.0),
              color: Colors.lightGreen,
              child: DropdownButton<String>(
                  value: selcetedCurrency,
                  hint: const Text('Currency'),
                  onChanged: (value) {
                    setState(() {
                      selcetedCurrency = value!;
                      getDropDownItem();
                    });
                  },
                  items: currenciesList.map((String currenciesList) {
                    return DropdownMenuItem<String>(
                        child: Center(child: Text(currenciesList)),
                        value: currenciesList);
                  }).toList()))
        ],
      ),
    );
  }
 
 
}
