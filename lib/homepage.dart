import 'package:flutter/material.dart';



class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {

  List contacts = ["Krishna Rao", "Bhawani", "Mohit Kumar", "Deepanshu"];

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contacts'),
      ),
      body: SafeArea(
        child: Container(
          child: ListView.separated(
            itemCount: contacts.length,
            separatorBuilder: (context, index) {
              return Divider();
            },
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  child: Text(contacts[index].toString().split(" ")[0][0]),
                ),
                title: Text(contacts[index]),
                subtitle: Text('krao6652@gmail.com'),
              );
            },
          ),
        ),
      ),
    );
  }
}
