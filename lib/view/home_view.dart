import 'package:fel_leszel_akasztva_cigany/controllers/home_view_controllers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  HomeViewController controller = Get.put(HomeViewController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeViewController>(
      init: controller,
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: Text("Házi Minta"),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text(controller.szamlalo.toString(), style: TextStyle(fontSize: 100)),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 200,
                  child: CupertinoButton.filled(child: Text("növel"), 
                  onPressed:() {
                    controller.novelo();
                  }, 
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 200,
                  child: CupertinoButton.filled(child: Text("csökkent"), 
                  onPressed:() {
                    controller.csokkento();
                  }, 
                  ),
                ),
              ),
              
            ]
              ),
          ),
        );
      }
    );
  }
}