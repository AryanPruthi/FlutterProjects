import 'package:first_flutter_app/model/weather.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'score.dart';

class HttpHelper{
  //https://api.openweathermap.org/data/2.5/weather?lat=28.4595&lon=77.0266&appid=29d6f0da69dcd67a4fc54cd20e7c1c70
  // new api key 
  //https://api.openweathermap.org/data/2.5/weather?q=Gurgaon&appid=e77e558e80f3b53249ddb36c055b14f9
  final String authority ='api.openweathermap.org';
  final String path = 'data/2.5/weather';
  final String apikey = 'e77e558e80f3b53249ddb36c055b14f9' ;


  final String authority1 ='api.cricapi.com';
  final String path1 = 'v1/currentMatches';
  final String apikey1 = 'e989aebb-098c-4511-ab0c-506b54478154' ;


  Future<Weather> getweather(String location) async {
    Map <String, dynamic> parameter = {
      // 'lat' : longitude,
      // 'lon' : latitude,
      'q' : location,
      'appId' : apikey
    };

    Uri uri = Uri.https(authority, path, parameter);
    http.Response result = await http.get(uri);
    Map<String, dynamic> data = json.decode(result.body);
    Weather weatherData = Weather.fromJson(data);
    //print(result.body);
    //return result.body;
    return weatherData;
  }

    //--------------------------------------------

    Future<Score> getscore(String matchname) async {
    Map <String, dynamic> parameter = {
      'apikey' : apikey1,
      'offset': '0',
      'search': matchname

    };
    Uri uri = Uri.https(authority1, path1, parameter);
    http.Response result = await http.get(uri);
    Map<String, dynamic> data = json.decode(result.body);

    print('check1');
    Score cricketData = Score.fromJson(data);
    print('check2');
    
    // print(result.body);
    print(data);
    return cricketData;
  } 
} 

