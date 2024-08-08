import 'package:flutter/material.dart';

class EditUser extends StatefulWidget {
  // final String initialFirst;
  // final String initialLast;
  // final Function(String String) onSave;
  const EditUser({
    super.key,
    // required this.initialFirst,
    // required this.initialLast,
    // required this.onSave
  });

  @override
  State<EditUser> createState() => _EditUserState();
}

class _EditUserState extends State<EditUser> {
  late final TextEditingController _firstnameController =
      TextEditingController();
  late final TextEditingController _lastnameController =
      TextEditingController();

  @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   _firstnameController = TextEditingController(text: widget.initialFirst);
  //   _lastnameController = TextEditingController(text: widget.initialLast);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: _firstnameController,
              decoration: InputDecoration(
                hintText: "First Name",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: _lastnameController,
              decoration: InputDecoration(
                hintText: "Last Name",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: () {
                // widget.onSave(
                //   _firstnameController.text,
                //   _lastnameController.text,
                // );
              },
              child: const Text("Save"),
            ),
          ],
        ),
      ),
    );
  }
}
