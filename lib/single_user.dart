import 'package:flutter/material.dart';
import 'package:flutterwidgets/api/api_services.dart';
import 'package:flutterwidgets/models/userModel.dart';

class SingleUser extends StatefulWidget {
  final UserData userData;
  const SingleUser({super.key, required this.userData});

  @override
  State<SingleUser> createState() => _SingleUserState();
}

class _SingleUserState extends State<SingleUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const Text("data"),
          FutureBuilder(
              future: ApiServices.instance.fettchdata(),
              builder: (context, snapshot) {
                return Expanded(
                  child: ListView.builder(
                      itemCount: 1,
                      itemBuilder: (context, index) {
                        return Row(
                          children: [
                            Text(widget.userData.id.toString()),
                            Text(widget.userData.firstName.toString()),
                            // ElevatedButton(
                            //     onPressed: () {}, child: const Text("Delete"))
                          ],
                        );
                      }),
                );
              })
        ],
      ),
    );
  }
}
