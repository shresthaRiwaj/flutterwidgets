import 'package:flutter/material.dart';

class HomeDesign extends StatefulWidget {
  const HomeDesign({super.key});

  @override
  State<HomeDesign> createState() => _HomeDesignState();
}

List<String> titles = [
  "All",
  "Features",
  "Shop",
  "Order",
  "Profile",
  "Settings"
];
List<String> names = [
  "All",
  "Features",
  "Shop",
  "Order",
  "Profile",
  "Settings",
  "abc"
];
List<String> images = [
  "assets/images/int.png",
  "assets/images/int.png",
  "assets/images/int.png",
  "assets/images/int.png",
  "assets/images/int.png",
  "assets/images/int.png",
  "assets/images/int.png",
];

class _HomeDesignState extends State<HomeDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.location_city),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        "New York, USA",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  Icon(Icons.notification_add),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                children: [
                  SizedBox(
                    height: 50,
                    width: 300,
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.search),
                        hintText: "Search",
                        hintStyle:
                            const TextStyle(fontSize: 20, color: Colors.grey),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 50,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Colors.brown,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Icon(Icons.abc),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                height: 200,
                // width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                    image: AssetImage("assets/images/clothes.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 8, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Category"),
                  Text("See All"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 390,
                    height: 100,
                    color: Colors.transparent,
                    child: const DisplayImage1(),
                  ),
                ],
              ),
            ),

            // SizedBox(
            //   height: 100,
            //   child: Column(
            //     children: [
            //       const Text("Category"),
            //       GridView.builder(
            //         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            //             crossAxisCount: 2),
            //         itemBuilder: (context, index) {
            //           return const Row(
            //             children: [
            //               Text("data"),
            //             ],
            //           );
            //         },
            //       ),
            //       const CircleDisplay(),
            //     ],
            //   ),
            // ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Flash Sale",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Closing in",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 40,
                    width: MediaQuery.of(context).size.width - 16,
                    child: const DisplayList(),
                  ),
                ],
              ),
            ),
            const Row(
              children: [
                // DisplayCategory(
                //   image: "assets/images/hoodie.jpg",
                //   name: "Hoodie",
                //   price: 120,
                // ),
                // SizedBox(
                //   width: 10,
                // ),
                // DisplayCategory(
                //   image: "assets/images/hoodie.jpg",
                //   name: "Hoodie",
                //   price: 120,
                // ),
                DisplayImage(
                  name: "Hoddie",
                  image: "assets/images/hoodie.jpg",
                  price: 100,
                ),
                SizedBox(
                  width: 10,
                ),
                DisplayImage(
                  name: "Hoddie",
                  image: "assets/images/hoodie.jpg",
                  price: 100,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class DisplayImage extends StatelessWidget {
  const DisplayImage({
    super.key,
    required this.image,
    required this.price,
    required this.name,
    this.rating = 4.5,
  });
  final String image;
  final int price;
  final String name;
  final double rating;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200,
            width: 170,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image:
                  DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    price.toString(),
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              const SizedBox(
                width: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(Icons.star),
                  Text(
                    rating.toString(),
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class DisplayCategory extends StatelessWidget {
  const DisplayCategory({
    super.key,
    required this.image,
    required this.price,
    required this.name,
  });
  final String image;
  final int price;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 270,
        width: 170,
        color: Colors.brown[200],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image(
                height: 124,
                // width: 230,
                image: AssetImage(image),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      // color: Colors.amber,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    price.toString(),
                    style: const TextStyle(
                        color: Colors.amber,
                        fontWeight: FontWeight.bold,
                        fontSize: 24),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.amber[400],
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text(
                        "4.9",
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        width: 25,
                      ),
                      const Text(
                        "\$10",
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DisplayList extends StatelessWidget {
  const DisplayList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: titles.length,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return SizedBox(
            // width: 40,
            // height: 100,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                child: Text(titles[index]),
                onPressed: () {},
              ),
            ),
          );
        });
  }
}

class DisplayImage1 extends StatelessWidget {
  const DisplayImage1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: images.length,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return CircleDisplay(
            title: names[index],
            image: images[index],
          );
        });
  }
}

class CircleDisplay extends StatelessWidget {
  const CircleDisplay({
    super.key,
    required this.title,
    required this.image,
  });
  final String title;
  final String image;

  @override
  Widget build(BuildContext context) {
    // return Padding(
    //   padding: const EdgeInsets.only(top: 8.0),
    //   child: Row(
    //     children: [
    //       Container(
    //         width: 390,
    //         height: 100,
    //         color: Colors.transparent,
    //         child: Row(
    //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //           children: [
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 60,
            width: 70,
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
                image: AssetImage(image),
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(title),
        ],
      ),
      //           ),
      //         ],
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}
