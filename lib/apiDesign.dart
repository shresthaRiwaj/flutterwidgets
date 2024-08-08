import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutterwidgets/api/api_services.dart';
import 'package:flutterwidgets/edit_user.dart';
import 'package:flutterwidgets/models/userModel.dart';
import 'package:flutterwidgets/single_user.dart';

class ApiDesign extends StatefulWidget {
  const ApiDesign({super.key});

  @override
  State<ApiDesign> createState() => _ApiDesignState();
}

class _ApiDesignState extends State<ApiDesign> {
  // late Future<Welcome> _fetchData;
  //  late Future<Welcome> _deleteData;

  @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   _fetchData = ApiServices.instance.fettchdata();
  //   _deleteData = ApiServices.instance.deleteUser();
  // }

  void editUserDetail() {}
  void deleteUser({String? user}) async {}

  @override
  Widget build(BuildContext context) {
    ApiServices.instance.fettchdata();
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          FutureBuilder(
              future: ApiServices.instance.fettchdata(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Expanded(
                    child: ListView.builder(
                        itemCount: snapshot.data!.data!.length,
                        itemBuilder: (context, index) {
                          return Row(
                            children: [
                              SizedBox(
                                width: 200,
                                child: ListTile(
                                  leading: CircleAvatar(
                                    backgroundImage: NetworkImage(
                                      snapshot.data!.data!
                                          .elementAt(index)
                                          .avatar
                                          .toString(),
                                    ),
                                  ),
                                  title: GestureDetector(
                                    onTap: () {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) {
                                        return  SingleUser(userData: snapshot.data!.data![index],);
                                      }));
                                    },
                                    child: Text(
                                        "${snapshot.data!.data!.elementAt(index).firstName}"),
                                  ),
                                  subtitle: Text(
                                      "${snapshot.data!.data!.elementAt(index).lastName}"),
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.edit),
                              ),
                              IconButton(
                                  onPressed: () {
                                    ApiServices.instance.deleteUser();
                                  },
                                  icon: const Icon(Icons.delete))
                            ],
                          );
                        }),
                  );
                }
                if (snapshot.hasError) {
                  return const Center(
                    child: Text("Error"),
                  );
                }
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }),
          ElevatedButton(onPressed: () {}, child: const Text("Delete")),
          ElevatedButton(onPressed: () {}, child: const Text("Edit"))
        ],
      ),
    );
  }
}
