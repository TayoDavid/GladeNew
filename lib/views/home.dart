
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'common.dart';

class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: Container(
          color: Colors.white,
          padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
          child: ListView(
            children: [
              _buildHeader(),
              _buildAvailableBalance(),
              _buildAddBusinessAccountRow(),
              _buildActionBody(),
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
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 60,
                child: Stack(
                  children: [
                    Image.asset("images/avatar_holder.png", height: 50, width: 50),
                    Positioned(top: 5, left: 5,child: Image.asset("images/avatar_holder.png", height: 40, width: 40)),
                    Positioned(
                        top: 12,
                        left: 12,
                        child: Text("SA", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20, color: Colors.white),)),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 7, horizontal: 10),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Skadgate Innovations", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500), ),
                      Text("99201122334 - Providus Bank", )
                    ]
                ),
              ),
            ],
          ),
          Container(padding: EdgeInsets.only(bottom: 10), child: Icon(Icons.notifications_none, size: 30,)),
        ],
      ),
    );
  }

  Widget _buildAvailableBalance() {
    return Container(
      height: 120,
      margin: EdgeInsets.symmetric(vertical: 16),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("images/rectangle.png"),
        ),
        borderRadius: BorderRadius.all(Radius.circular(15))
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Available Balance", style: TextStyle(fontWeight: FontWeight.w300, fontSize: 16),),
                Text("₦675,000.01", style: TextStyle(fontWeight: FontWeight.w800, fontSize: 32),)
              ],
            ),
          ),
          Positioned(
            left: 10,
            top: 20,
            child: Image.asset("images/arcPath.png", width: 80, height: 75,),
          ),
          Positioned(
            right: 20,
            bottom: 20,
            child: Image.asset("images/circle.png", width: 30, height: 30,),
          ),
        ],
      )
    );
  }
  
  Widget _buildAddBusinessAccountRow() {
    return Container(
      padding: EdgeInsets.fromLTRB(5, 0, 5, 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Add A Business Account", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),),
          Icon(Icons.add_circle_outline, color: Color(0xff00C2FF),)
        ]
      ),
    );
  }

  Widget _buildActionBody() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            customActionContainer(
              backgroundAsset: "transfer_bg",
              iconAsset: "transfer",
              title: "Fund\ntransfer",
              subtitle: "Send funds to any Bank Account."
            ),
            customActionContainer(
                backgroundAsset: "invoice_bg",
                iconAsset: "invoice",
                title: "Digital\ninvoicing",
                subtitle: "Send invoice on the go to customers."
            ),
          ],
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            customActionContainer(
                backgroundAsset: "crypto_bg",
                iconAsset: "bitcoin",
                title: "Crypto\ncurrency",
                subtitle: "Fund your wallet for transactions."
            ),
            customActionContainer(
                backgroundAsset: "statement_bg",
                iconAsset: "statement",
                title: "Account\nstatement",
                subtitle: "View your account statement anytime."
            ),
          ],
        ),
      ],
    );
  }

  Widget customActionContainer({String? backgroundAsset, String? iconAsset, String? title,
            String? subtitle, VoidCallback? onPress}) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height * .27,
      width: size.width * .42,
      padding: EdgeInsets.fromLTRB(18, 20, 15, 10),
      decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("images/$backgroundAsset.png"),
          ),
          borderRadius: BorderRadius.all(Radius.circular(15))
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(bottom: 10),
            child: Image.asset("images/$iconAsset.png", width: 50, height: 50,),
          ),
          Text(title!, style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800, height: .9),),
          Text(subtitle!, style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),)
        ],
      ),
    );
  }
}
