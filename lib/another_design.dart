import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutterwidgets/home_design.dart';

class AnotherDesign extends StatefulWidget {
  const AnotherDesign({super.key});

  @override
  State<AnotherDesign> createState() => _AnotherDesignState();
}

List<String> names = [
  "Beauty",
  "Food",
  "Home",
  "Travel",
  "Gifts",
];

List<String> images = [
  "assets/images/gift.png",
  "assets/images/voucher.png",
  "assets/images/int.png",
  "assets/images/int.png",
  "assets/images/gift.png",
];
List<Map<String, dynamic>> imageText = [
  {
    "text": "Smoothy Skin Care",
    "image": "assets/images/int.png",
    "dis": 50,
  },
  {
    "text": "Earthy Living",
    "image": "assets/images/gift.png",
    "dis": 50,
  },
  {
    "text": "Smoothy Skin Care",
    "image": "assets/images/voucher.png",
    "dis": 50,
  },
  {
    "text": "Smoothy Skin Care",
    "image": "assets/images/gift.png",
    "dis": 50,
  },
  {
    "text": "Smoothy Skin Care",
    "image": "assets/images/int.png",
    "dis": 50,
  }
];
List<Map<String, dynamic>> listMap = [
  {
    "name": "Beauty",
    "image": "assets/images/int.png",
  },
  {
    "name": "Food",
    "image": "assets/images/voucher.png",
  },
  {
    "name": "Home",
    "image": "assets/images/int.png",
  },
  {
    "name": "Travel",
    "image": "assets/images/gift.png",
  },
  {
    "name": "Gifts",
    "image": "assets/images/int.png",
  },
  {
    "name": "Vouchers",
    "image": "assets/images/int.png",
  },
];

// Map<String, dynamic> newMAp = {
//   "key1":"hello",
// };
// newMAp["key1"];

class _AnotherDesignState extends State<AnotherDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Hi User!",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.search,
                        size: 30,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Icon(
                        Icons.monitor_heart,
                        size: 30,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 100,
              child: ListView.builder(
                  itemCount: listMap.length,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return CircleDisplay(
                        title: listMap[index]['name'],
                        image: listMap[index]['image']);
                  }),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                // image: const DecorationImage(
                //     image: AssetImage("assets/images/hoodie.jpg"),
                //     fit: BoxFit.cover),
              ),
              child: Swiper(
                itemCount: images.length,
                itemBuilder: (context, index) {
                  return Image.asset(
                    images[index],
                    fit: BoxFit.fill,
                  );
                },
                autoplay: true,
                scrollDirection: Axis.horizontal,
                pagination: const SwiperPagination(
                    alignment: Alignment.bottomCenter,
                    builder: SwiperPagination.dots),
              ),
            ),
            Column(
              children: [
                const Text(
                  "Offers For You",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const DisplayRow(),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 230,
                  color: const Color(0xffcdaaa5),
                  child: const DisplayColumn(),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text("Done"),

                // SizedBox(
                //   height: 150,
                //   child: ListView.builder(
                //     scrollDirection: Axis.horizontal,
                //     shrinkWrap: true,
                //     itemCount: imageText.length,
                //     itemBuilder: (container, index) {
                //       return const DisplayRow();
                //     },
                //   ),
                // )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class DisplayRow extends StatelessWidget {
  const DisplayRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: imageText.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xfff9f2ec),
                  ),
                  child: SizedBox(
                    height: 40,
                    width: 40,
                    // color: Colors.red,
                    child: Image(
                      height: 15,
                      width: 15,
                      image: AssetImage(imageText[index]["image"]),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(imageText[index]["text"]),
                Text("Upto ${imageText[index]["dis"]}% off"),
              ],
            ),
            //           ),
            //         ],
            //       ),
            //     ),
            //   ],
            // ),
          );
        },
      ),
    );
  }
}

class DisplayColumn extends StatelessWidget {
  const DisplayColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: ListView.builder(
          itemCount: 2,
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    width: 200,
                    height: 200,
                    color: Colors.grey,
                    child: Padding(
                      padding: const EdgeInsets.all(0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 150,
                            width: 200,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(0),
                              image: const DecorationImage(
                                image: AssetImage("assets/images/hoodie.jpg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("data:"),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text("data"),
                                  ],
                                ),
                                GestureDetector(
                                  onTap: () {
                                    print("Read more >>");
                                  },
                                  child: const Text(
                                    "Read more>>",
                                    style: TextStyle(
                                        color: Colors.red,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            );
          }),
    );
  }
}

// child: Container(
//                     height: 150,
//                     width: 200,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(10),
//                       image: const DecorationImage(
//                         image: AssetImage("assets/images/hoodie.jpg"),
//                         fit: BoxFit.cover,
//                       ),
//                     ),
                    
//                   ),
//                   child:const Row(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text("Something: "),
//                         SizedBox(
//                           width: 5,
//                         ),
//                         Text("Description"),
//                       ],
//                     ),
//                     Column(
//                       children: [
//                         ElevatedButton(
//                             onPressed: () {},
//                             child: const Text("Read More >> "))
//                       ],
//                     ),