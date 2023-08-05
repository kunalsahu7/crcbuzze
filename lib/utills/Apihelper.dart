import 'dart:convert';

import 'package:crcbuzze/screren/Home/modal/modalscreen.dart';
import 'package:http/http.dart' as http;

class CricbuzeApihelper
{
  static final cricbuzze = CricbuzeApihelper._();
  CricbuzeApihelper._();

  Future<CrickbuzzModel> getdata()
  async {
    String ApiLink =
        "https://cricbuzz-cricket.p.rapidapi.com/matches/v1/recent";

    Uri uri = Uri.parse(ApiLink);
    var response = await http.get(uri, headers: {
      'X-RapidAPI-Key': 'ee60643964msh4622b22a5b81716p1fc2e2jsn3ed0bcf1ef08',
      'X-RapidAPI-Host': 'cricbuzz-cricket.p.rapidapi.com',
    });
    var json = jsonDecode(response.body);
    return CrickbuzzModel.fromJson(json);
  }
}