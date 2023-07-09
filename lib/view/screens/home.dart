import 'package:api_test/controller/api/api.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List test = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getPost().then((value) {
      test = value;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: (test.isEmpty)
          ? Center(child: CircularProgressIndicator.adaptive())
          : ListView.builder(
              itemCount: test.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    leading: Text("${test[index]["id"]}"),
                    title: Text("${test[index]["title"]}"),
                    subtitle: Text("${test[index]["body"]}"),
                  ),
                );
              }),
      //     body: Center(
      //   child: Text(test.length.toString()),
      //   //     child: ElevatedButton(
      //   //   onPressed: () {
      //   //     getPost();
      //   //   },
      //   //   child: Text(test.length.toString()),
      //   // )),
      // ));
    );
  }
}
