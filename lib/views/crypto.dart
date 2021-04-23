import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'common.dart';

class CryptoCurrency extends StatefulWidget {

  @override
  _CryptoCurrencyState createState() => _CryptoCurrencyState();
}

class _CryptoCurrencyState extends State<CryptoCurrency> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
          child: Container(
            color: Colors.white,
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Column(
              children: [
                _buildHeader(),
                _buildWithdrawButton(),
                _buildAvailableBalance(),
                _buildActionButtons(),
                _buildActivityHeader(),
                _buildActivityBody()
              ],
            ),
          )
      ),
      drawer: drawer(context),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.black,
        items: navBarItems(),
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      padding: EdgeInsets.only(top: 30),
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 14),
      child: Stack(
        children: [
          InkWell(child: Icon(Icons.arrow_back_ios_sharp), onTap: (){},),
          Align(alignment: Alignment.center, child: Text("Crypto Currency", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16, color: Colors.black),)),
        ],
      )
    );
  }

  Widget _buildWithdrawButton() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(50)),
              border: Border.all(color: Color(0xff00C2FF)),
            ),
            child: Text("WITHDRAW FUNDS", style: TextStyle(fontSize: 9, fontWeight: FontWeight.w800),),
          )
        ],
      )
    );
  }

  Widget _buildAvailableBalance() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Container(
        height: 120,
        margin: EdgeInsets.only(bottom: 16),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("images/crypto_balance_bg.png"),
            ),
            borderRadius: BorderRadius.all(Radius.circular(15))
        ),
        child: Stack(
          children: [
            Positioned(
              top: 50,
              left: 40,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "1.00322BTC",
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 28,
                      color: Colors.white
                    ),
                  ),
                  Text(
                    "BITCOIN WALLET BALANCE",
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 9,
                      color: Colors.white
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 55,
              right: 10,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "BTC/USD",
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 9,
                      color: Colors.white
                    ),
                  ),
                  Text(
                    "\$39,445.18",
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 13,
                      color: Colors.white
                    ),
                  ),
                ],
              ),
            ),
          ]
        )
      ),
    );
  }

  Widget _buildActionButtons() {
    return Container(
      padding: EdgeInsets.fromLTRB(34, 0, 34, 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          customActionButton(icon: "send_crypto", text: "Send"),
          customActionButton(icon: "receive_crypto", text: "Receive"),
          customActionButton(icon: "trade_crypto", text: "Buy/Sell"),
          customActionButton(icon: "fund_wallet", text: "Fund"),
        ],
      )
    );
  }

  Widget customActionButton({required String icon, required String text}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset("images/$icon.png"),
        Padding(padding: EdgeInsets.only(top: 5), child: Text(text, style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500),)),
      ],
    );
  }

  Widget _buildActivityHeader() {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 24),
      decoration: BoxDecoration(
        color: Color(0xffF0FAFF),
      ),
      child: Text(
        "RECENT ACTIVITY",
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w900
        ),
      ),
    );
  }

  Widget _buildActivityBody() {
    return Expanded(
      flex: 1,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            // height: 80,
            child: Image.asset("images/no_transaction.png",),
          ),
          Text(
            "No Transaction yet.",
            style: TextStyle(
              fontSize: 18
            ),
          ),
          Text(
            "Initiate transaction to view record.",
            style: TextStyle(
              fontSize: 14
            ),
          )
        ],
      ),
    );
  }
}