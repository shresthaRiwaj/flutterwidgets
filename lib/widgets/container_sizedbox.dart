// import 'package:flutter/material.dart';
// import 'package:flutterwidgets/api/api_services.dart';
// import 'package:flutterwidgets/widgets/circle.dart';

// class ContainerSizedBox extends StatelessWidget {
//   const ContainerSizedBox({super.key});

//   @override
//   Widget build(BuildContext context) {
//     ApiServices.instance.fettchdata();
//     return Scaffold(
//       backgroundColor: Colors.grey[500],
//       appBar: AppBar(
//         title: const Text("Something"),
//         backgroundColor: Colors.grey[400],
//       ),
//       body: Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Container(
//               height: 50,
//               decoration: BoxDecoration(
//                   color: Colors.grey[200],
//                   borderRadius: BorderRadius.circular(10)),
//               child: const Padding(
//                 padding: EdgeInsets.all(8.0),
//                 child: Row(
//                   children: [
//                     Icon(
//                       Icons.search,
//                     ),
//                     SizedBox(
//                       width: 10,
//                     ),
//                     Text("Search")
//                   ],
//                 ),
//               ),
//             ),
//           ),
//           const SizedBox(
//             height: 20,
//           ),
//           const Text("Categories"),
//           Expanded(
//             child: GridView.builder(
//                 gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                     crossAxisCount: 4),
//                 itemCount: 4,
//                 itemBuilder: (context, index) {
//                   return const Column(
//                     children: [
//                       Circle(),
//                       Text("Product 1"),
//                     ],
//                   );
//                 }),
//           ),
//           SizedBox(
//             height: 400,
//             child: Column(
//               children: [
//                 const Text("6.6 Flash Sale"),
//                 const Text("Discount 10%"),
//                 ElevatedButton(
//                   onPressed: () {},
//                   child: const Text("Shop Now"),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
