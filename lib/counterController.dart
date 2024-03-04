import 'package:get/get.dart';
class CounterController extends GetxController{

  RxInt count = 1.obs;

  increment(){
    count.value++;
  }

  decrement(){
    count.value--;
  }
}