// import 'package:flutter/material.dart';
// import 'package:flutterwidgets/api/api_services.dart';
// import 'package:flutterwidgets/models/userModel.dart';

// class ShowModel extends StatelessWidget {
//   const ShowModel({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Column(
//         children: [
//           FutureBuilder<UserModel>(
//               future: ApiServices.instance.fettchdata(),
//               builder: (context, snapshot) {
//                 if (snapshot.hasData) {
//                   return ListView.builder(
//                     itemCount: snapshot.data!.data!.length,
//                     itemBuilder: (context, index) {
//                       return const ListTile();
//                     },
//                   );
//                 }
//                 return const Center(
//                   child: CircularProgressIndicator(),
//                 );
//               })
//         ],
//       ),
//     );
//   }
// }
