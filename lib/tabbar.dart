import 'package:flutter/material.dart';

class Tabbarr extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("WhatsApp"),
          actions: [
            const Icon(Icons.search),
            PopupMenuButton(itemBuilder: (context) {
              return [
                const PopupMenuItem(child: Text("Settings")),
                const PopupMenuItem(child: Text("Archive")),
                const PopupMenuItem(child: Text("Payment")),
                const PopupMenuItem(child: Text("About")),
              ];
            })
          ],
          backgroundColor: Colors.teal,
          bottom: const TabBar(
            indicatorColor: Colors.white,
            tabs: [
              Tab(
                icon: Icon(Icons.camera_alt_outlined),
                text: "Camera",
              ),
              Tab(
                icon: Icon(Icons.home_filled),
                text: "Chat",
              ),
              Tab(
                icon: Icon(Icons.adjust_rounded),
                text: "Status",
              ),
              Tab(
                icon: Icon(Icons.phone),
                text: "Calls",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
