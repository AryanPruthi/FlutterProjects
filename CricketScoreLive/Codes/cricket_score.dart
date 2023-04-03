// ignore_for_file: prefer_const_constructors

import 'package:first_flutter_app/bottom_navigation.dart';
import 'package:first_flutter_app/model/http_helper.dart';
import 'package:first_flutter_app/model/score.dart';
import 'package:flutter/material.dart';

//Api key= 5122fe43-b077-48f3-b035-24087db0e77f

class CricketScore extends StatefulWidget {
  const CricketScore({Key? key}) : super(key: key);

  @override
  State<CricketScore> createState() => _CricketScoreState();
}


class _CricketScoreState extends State<CricketScore> {
  TextEditingController textController = TextEditingController();
  // Cricket result1 = Cricket('', '', '', 0);
  // Player result2 = Player('', '');
  Score result = Score('','','','','','','',0,0,0,'');

  // HttpHelper helper= new HttpHelper();
  // dynamic score='';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Live Cricket Score'), 
        backgroundColor: Colors.blueAccent, 
        centerTitle: true,),
      
      // drawer: const MenuDrawer(),
      bottomNavigationBar:const BottomNavigation(),

      body: Padding(
        padding: EdgeInsets.all(15),
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.all(15),
              child: TextField(
                controller: textController,
                decoration: InputDecoration(
                  icon:Icon(Icons.sports_cricket),
                  hintText: 'Enter Match Name',
                  suffixIcon: IconButton(
                    icon: Icon(Icons.search),
                    onPressed: getData,
                  ),
                ),
              ),
            ),
            // cricketRow('Match Name: ', result1.name),
            // cricketRow('Start Date: ', result1.startDate),
            // cricketRow('End Date: ', result1.endDate),
            // cricketRow('Total Matches: ', result1.matches.toStringAsFixed(2)),

            // cricketRow('Name: ', result2.name),
            // cricketRow('Country: ', result2.country),

            cricketRow('Details: ', result.name),
            cricketRow('Format: ', result.matchType),
            cricketRow('Status: ', result.status),
            cricketRow('Date: ', result.date),
            // cricketRow('Team1: ', result.team1),
            // cricketRow('Team2: ', result.team2),
            cricketRow('Runs(1st): ', result.runs.toStringAsFixed(2)),
            cricketRow('Innings: ', result.innings),
            cricketRow('Wickets Lost: ', result.wickets.toStringAsFixed(2)),
            cricketRow('Overs Played: ', result.overs.toStringAsFixed(2)),
            cricketRow('Stadium: ', result.venue),
          ],
        )
      )

    );
  }


  Future getData() async {
    HttpHelper httpHelper = HttpHelper();
    // result = await httpHelper.getscore('Afghanistan v Pakistan in UAE, 2023');
    // result1 = await httpHelper.getscore(textController.text);
    // result2 = await httpHelper.getPlayerInfo(textController.text);
    result = await httpHelper.getscore(textController.text);
    setState(() {
      // result1;
      // result2;
      result;
      
    });
    // print(result1);
    // print(result2);
    print(result);
  }

  Widget cricketRow(String label, String value) {
    Widget row = Padding(
      padding: EdgeInsets.symmetric(vertical: 15),
      child: Row(
        children: [
          Expanded(
              flex: 3,
              child: Text(
                label,
                style:
                    TextStyle(fontSize: 20, color: Theme.of(context).hintColor),
              )),
          Expanded(
              flex: 4,
              child: Text(
                value,
                style: TextStyle(
                    fontSize: 20, color: Theme.of(context).shadowColor),
              )),
        ],
      ),
    );
    return row;
  }
}