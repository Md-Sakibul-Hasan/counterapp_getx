import 'package:counter_getx/counterController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {

  final controller = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Container(
            height: 200,
            width: 400,

            child: Center(child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(onPressed: (){
                  controller.increment();
                },icon: Icon(Icons.add_outlined)),

                Obx(() => Text(controller.count.toString(),style: TextStyle(fontSize: 20),),),

                IconButton(onPressed: (){
                  controller.decrement();
                }, icon: Icon(Icons.remove_outlined)),
              ],
            )),
          ),
        ),
      ),
    );
  }
}
