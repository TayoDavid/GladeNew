import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:glade_second/main.dart';

import 'common.dart';

class Dashboard extends StatefulWidget {

  @override
  _DashboardState  createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: Stack(
          children: [
            _buildHeader(),
            _buildBody(),
            _buildBottomNav(),
            _initiateButton()
          ],
        ),
      ),
      drawer: drawer(context),
    );
  }

  Widget _buildHeader() {
    return Container(
      height: MediaQuery.of(context).size.height * .35,
      decoration: BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("images/dashboard_bg.png"),
        ),
      ),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 40),
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(icon: Icon(Icons.menu, color: Colors.white,), onPressed: (){}),
                IconButton(icon: Icon(Icons.notifications_none, color: Colors.orange,), onPressed: (){})
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(24, 5, 24, 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Image.asset("images/profile_bg.png", height: 50, width: 50),
                    Positioned(top: 5, left: 5,child: Image.asset("images/profile_pic.png", height: 40, width: 40)),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          _customText(text: "Olawoye", color: Colors.white),
                          _customText(text: "Omotayo", color: Colors.orange),
                        ],
                      ),
                      Text(
                        "Welcome back @Omotayo",
                        style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 9,
                            color: Colors.white
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildBody() {
    return Positioned(
      bottom: 0,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * .76,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildAvailableBalance(),
            _buildActivityHeader(),
            _buildRecentActivities(),
          ],
        ),
      )
    );
  }

  Widget _buildAvailableBalance() {
    return Container(
      margin: EdgeInsets.fromLTRB(16, 20, 16, 10),
      height: 150,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.contain,
          image: AssetImage("images/available_bal_bg.png")
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "USD ACCOUNT",
            style: TextStyle(
              fontWeight: FontWeight.w200,
              fontSize: 17,
              letterSpacing: 5,
              color: Colors.white
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(5, 5, 5, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(icon: Icon(Icons.arrow_back_ios_outlined, color: Colors.orange,), onPressed: (){}),
                Text(
                  "\$5,123",
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.w400,
                    color: Colors.white
                  ),
                ),
                IconButton(icon: Icon(Icons.arrow_forward_ios_outlined, color: Colors.orange,), onPressed: (){}),
              ],
            ),
          ),
          Text(
            "Available Balance",
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: Colors.white
            ),
          )
        ],
      )
    );
  }

  Widget _buildActivityHeader() {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 24),
      decoration: BoxDecoration(
        color: Color(0xffF0FAFF),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "RECENT ACTIVITY",
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500
            ),
          ),
          Text(
            "SEE MORE",
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w900
            ),
          )
        ],
      )
    );
  }

  Widget _buildRecentActivities() {
    return Expanded(
      child: ClipRect(
        child: ListView(
          children: [
            _customActivity(
                date: "Tuesday, March 31st, 2021",
                text: "Transfer to Naira Account",
                textAmount: "NGN124,000.44",
                color: Colors.orange
            ),
            _customActivity(
                date: "Tuesday, March 31st, 2021",
                text: "Transfer to Naira Account",
                textAmount: "NGN124,000.44",
                color: Colors.purple
            ),
            _customActivity(
                date: "Tuesday, March 31st, 2021",
                text: "Transfer to Naira Account",
                textAmount: "NGN124,000.44",
                color: Colors.orange
            ),
            _customActivity(
                date: "Tuesday, March 31st, 2021",
                text: "Transfer to Naira Account",
                textAmount: "NGN124,000.44",
                color: Colors.orange
            ),
            _customActivity(
                date: "Tuesday, March 31st, 2021",
                text: "Transfer to Naira Account",
                textAmount: "NGN124,000.44",
                color: Colors.purple
            ),
            _customActivity(
                date: "Tuesday, March 31st, 2021",
                text: "Transfer to Naira Account",
                textAmount: "NGN124,000.44",
                color: Colors.purple
            ),
            _customActivity(
                date: "Tuesday, March 31st, 2021",
                text: "Transfer to Naira Account",
                textAmount: "NGN124,000.44",
                color: Colors.purple
            ),
            _customActivity(
                date: "Tuesday, March 31st, 2021",
                text: "Transfer to Naira Account",
                textAmount: "NGN124,000.44",
                color: Colors.purple
            ),
          ],
        ),
      ),
    );
  }

  Widget _customActivity({required String date, required String text,
                      required String textAmount, required Color color}) {
    return Container(
      padding: EdgeInsets.fromLTRB(30, 15, 30, 10),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.grey))
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(date, style: TextStyle(color: Colors.grey, fontSize: 11, fontWeight: FontWeight.w900),),
              Padding(
                padding: EdgeInsets.only(left: 5),
                child: Text(text, style: TextStyle(color: Colors.purple, fontSize: 13, fontWeight: FontWeight.w500),)
              ),
            ],
          ),
          Text(textAmount, style: TextStyle(fontSize: 14, fontWeight: FontWeight.w900, color: color),)
        ],
      ),
    );
  }

  Widget _customText({String? text, Color? color}) {
    return Text(
      text!,
      style: TextStyle(
          fontWeight: FontWeight.w900,
          fontSize: 20,
          color: color!
      ),
    );
  }

  Widget _buildBottomNav() {
    return Positioned(
      bottom: 0,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 65,
        color: Color(0xffF0FAFF),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            customNavItem(icon: "home", text: "Home"),
            customNavItem(icon: "check_rate", text: "Check Rate"),
            SizedBox(width: 20,),
            SizedBox(width: 20,),
            customNavItem(icon: "fund_wallet", text: "Fund Account"),
            customNavItem(icon: "cards", text: "Cards"),
          ],
        ),
      ),
    );
  }

  Widget customNavItem({required String icon, required String text}) {
    return Column(
      children: [
        IconButton(icon: ImageIcon(AssetImage("images/$icon.png"), size: 28, color: Colors.purple,), onPressed: (){},),
        Padding(padding: EdgeInsets.only(bottom: 5), child: Text(text, style: TextStyle(fontSize: 10,),))
      ],
    );
  }

  Widget _initiateButton() {
    return Positioned(
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: 70,
          height: 70,
          padding: EdgeInsets.only(bottom: 30),
          child: InkWell(child: Image.asset("images/initiate.png", width: 70, height: 70,), onTap: (){},)
        ),
      ),
    );
  }
}