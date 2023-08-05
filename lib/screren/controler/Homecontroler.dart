import 'package:crcbuzze/screren/Home/modal/modalscreen.dart';
import 'package:crcbuzze/utills/Apihelper.dart';
import 'package:get/get.dart';

class HomeControler extends GetxController
{
  CrickbuzzModel? c1;

  Future<CrickbuzzModel?> GetData()
  async {
    c1 = await CricbuzeApihelper.cricbuzze.getdata();
    return c1;
  }
}