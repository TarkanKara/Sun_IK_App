// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sun_ik_app/app/modules/my_leaves_page/my_leaves_controller.dart';

class MyLeavesView extends GetView<MyLeavesController> {
  const MyLeavesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        backgroundColor: const Color(0xffEF3E52),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
          ),
        ],
        title: const Text("MY LEAVES"),
      ),
      body: DefaultTabController(
        initialIndex: 0,
        length: 2,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              child: const TabBar(
                indicatorColor: Color(0xffEC4B58),
                labelColor: Colors.black,
                unselectedLabelColor: Colors.black38,
                indicatorWeight: 3,
                tabs: [
                  Tab(text: "İzinlerim"),
                  Tab(text: "İzin Takvimi"),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: const TabBarView(
                  children: [
                    Center(
                      child: Text("PAGE 1"),
                    ),
                    Center(
                      child: Text("PAGE 2"),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
