import 'package:demo/IconCustome.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

import 'ProductCart.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class Product {
  late String name;
  late IconData icons;
  Product({required this.name, required this.icons});
}

class _HomePageState extends State<HomePage> {
  List<Product> list = [
    Product(name: 'Bluetooth HeadPhone', icons: Icons.headphones),
    Product(name: 'Speaker', icons: Icons.speaker),
    Product(name: 'MicroPhone', icons: Icons.phone),
    Product(name: 'Network', icons: Icons.network_cell),
    Product(name: 'Phone', icons: Icons.phone),
    Product(name: 'Bluetooth HeadPhone', icons: Icons.headphones),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Container(
          height: 45,
          child: TextField(
            decoration: InputDecoration(
                hintText: 'search item',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20))),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              width: double.infinity,
              // color: Colors.blue,
              child: const ImageSlideshow(
                isLoop: true,
                autoPlayInterval: 3000,
                initialPage: 0,
                children: [
                  Image(
                    image: NetworkImage(
                        'https://cticellular.com/wp-content/uploads/2021/01/apple-watch-se-202009.jpg'),
                  ),
                  Image(
                    image: NetworkImage(
                        'https://www.ione.com.kh/wp-content/uploads/2021/06/iMac-24-inch-ione-cambodia-2.jpg'),
                  ),
                  Image(
                    image: NetworkImage(
                        'https://static.wixstatic.com/media/d8f55e_a92b7ca43cac4e71aac127acfa1fffaa~mv2.png/v1/fill/w_640,h_402,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/d8f55e_a92b7ca43cac4e71aac127acfa1fffaa~mv2.png'),
                  ),
                  Image(
                    image: NetworkImage(
                        'https://i0.wp.com/dazzle.com.bd/wp-content/uploads/2021/07/ipad-11-2021-gray.png?fit=600%2C600&ssl=1'),
                  )
                ],
              ),
            ),
            Container(
              height: 100,
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: list.length,
                itemBuilder: ((context, index) {
                  return IconCustome(
                      name: list[index].name, icons: list[index].icons);
                }),
              ),
            ),
            Container(
              height: 150,
              width: 300,
              child: Image.network(
                  'https://smdistribution.co/wp-content/uploads/2021/03/Multi-Product_MacBook_Pro_13-in_iPad_Air_Apple_Pencil_AirPods_Pro_iPhone_12_Pro_Max_iPhone_12_Pro_Apple_Watch_Series_6_SCREEN__USEN.png'),
            ),
            Column(
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [Text('New Arrived'), Text('See All>')],
                  ),
                ),
                Container(
                  height: 280,
                  width: double.maxFinite,
                  color: Colors.grey,
                  child: GridView.count(
                    scrollDirection: Axis.horizontal,
                    crossAxisCount: 2,
                    children: [
                      ProductCart(
                          name: 'Apple',
                          price: 20,
                          disPrice: 15,
                          image:
                              'https://www.kron4.com/wp-content/uploads/sites/11/2021/04/AP8542581738709734.jpg?w=900'),
                      ProductCart(
                          name: 'Apple',
                          price: 20,
                          disPrice: 15,
                          image:
                              'https://cdn.shopify.com/s/files/1/0552/0883/7292/products/Blue-2.jpg?v=1649415442'),
                      ProductCart(
                          name: 'Apple',
                          price: 20,
                          disPrice: 15,
                          image:
                              'https://cdn.shopify.com/s/files/1/0055/0561/3875/products/Capture_c0586158-25d0-491e-8596-1088dc587a73_1600x.png?v=1652291725'),
                      ProductCart(
                          name: 'Apple',
                          price: 20,
                          disPrice: 15,
                          image:
                              'https://cdn.shopify.com/s/files/1/0024/9803/5810/products/552123-Product-0-I-637702375685308367_5a06db85-0d5a-454c-b248-d64b72b1b7aa.jpg?v=1649907466'),
                      ProductCart(
                          name: 'Apple',
                          price: 20,
                          disPrice: 15,
                          image:
                              'https://store.storeimages.cdn-apple.com/8756/as-images.apple.com/is/MWP22?wid=2000&hei=2000&fmt=jpeg&qlt=95&.v=1591634795000'),
                      ProductCart(
                          name: 'Apple',
                          price: 20,
                          disPrice: 15,
                          image:
                              'https://alaneesqatar.qa/wp-content/uploads/2021/05/apple-airtag-1-pack-2.png'),
                      ProductCart(
                          name: 'Apple',
                          price: 20,
                          disPrice: 15,
                          image:
                              'https://www.telstra.com.au/content/dam/tcom/devices/mobile/mhdwtab-i113/silver/landscape-front.png'),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(8),
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(16)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                          '                                  More Mide Year deal'),
                      Container(
                        decoration: BoxDecoration(
                            image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    'https://media.istockphoto.com/vectors/thirty-percents-sale-vector-id598820728?k=20&m=598820728&s=612x612&w=0&h=zQJuab5keHIrVQ5WxhePMVcTSfXr8_GAQJDltjEpkp8=')),
                            borderRadius: BorderRadius.circular(20)),
                        height: 180,
                        width: double.infinity,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// class CircularButton extends StatelessWidget {
//   final double width;
//   final double height;
//   final Color color;
//   final Icon icon;
//   final Function onClick;

//   CircularButton(
//       {required this.color, required this.height, required this.icon, required this.onClick,  required this.width});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(color: color,shape: BoxShape.circle),
//       width: width,
//       height: height,
//       child: IconButton(icon: icon,enableFeedback:true, onPressed: onClick),
//     );
//   }
// }
