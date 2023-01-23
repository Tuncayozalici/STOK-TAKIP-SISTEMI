import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:finalprojesi/Models/urunlerModel.dart';
import 'package:finalprojesi/Models/yoneticiModel.dart';

class Auth extends GetxController {
  late List<urunlerModel> urunList;
  late List<yoneticiModel> yoneticiList;

  Future<void> urunler() async {
    var result = await FirebaseFirestore.instance.collection("urunler").get();
    result.docs.forEach((element) {
      urunList.add(urunlerModel.fromJson(element.data()));
    });
  }

  Future<void> yonetici() async {
    var result = await FirebaseFirestore.instance.collection("yonetici").get();
    result.docs.forEach((element) {
      yoneticiList.add(yoneticiModel.fromJson(element.data()));
    });
  }

  void onInit() {
    urunler();
    yonetici();
    super.onInit();
  }
}
