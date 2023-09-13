import 'package:flutter/material.dart';

class Product {
  final String image, title;
  final int id;
  final Color color;

  Product({
    required this.image,
    required this.title,
    required this.color,
    required this.id,
  });
}

List<Product> products = [
  Product(
    id: 1,
    title: "A",
    image: "assets/images/a.png",
    color: Color(0xFF9ba0fc),
  ),
  Product(
    id: 2,
    title: "B",
    image: "assets/images/b.png",
    color: Color(0xFF9ba0fc),
  ),
  Product(
    id: 3,
    title: "C",
    image: "assets/images/c.png",
    color: Color(0xFF9ba0fc),
  ),
  Product(
    id: 4,
    title: "D",
    image: "assets/images/d.png",
    color: Color(0xFF9ba0fc),
  ),
  Product(
    id: 5,
    title: "E",
    image: "assets/images/e.png",
    color: Color(0xFF9ba0fc),
  ),
  Product(
    id: 6,
    title: "F",
    image: "assets/images/f.png",
    color: Color(0xFF9ba0fc),
  ),
  Product(
    id: 7,
    title: "G",
    image: "assets/images/g.png",
    color: Color(0xFF9ba0fc),
  ),
  Product(
    id: 8,
    title: "H",
    image: "assets/images/h.png",
    color: Color(0xFF9ba0fc),
  ),
  Product(
    id: 9,
    title: "I",
    image: "assets/images/i.png",
    color: Color(0xFF9ba0fc),
  ),
  Product(
    id: 10,
    title: "J",
    image: "assets/images/j.png",
    color: Color(0xFF9ba0fc),
  ),
  Product(
    id: 11,
    title: "K",
    image: "assets/images/k.png",
    color: Color(0xFF9ba0fc),
  ),
  Product(
    id: 12,
    title: "L",
    image: "assets/images/l.png",
    color: Color(0xFF9ba0fc),
  ),
  Product(
    id: 13,
    title: "M",
    image: "assets/images/m.png",
    color: Color(0xFF9ba0fc),
  ),
  Product(
    id: 14,
    title: "N",
    image: "assets/images/n.png",
    color: Color(0xFF9ba0fc),
  ),
  Product(
    id: 15,
    title: "O",
    image: "assets/images/o.png",
    color: Color(0xFF9ba0fc),
  ),
  Product(
    id: 16,
    title: "P",
    image: "assets/images/p.png",
    color: Color(0xFF9ba0fc),
  ),
  Product(
    id: 17,
    title: "Q",
    image: "assets/images/q.png",
    color: Color(0xFF9ba0fc),
  ),
  Product(
    id: 18,
    title: "R",
    image: "assets/images/r.png",
    color: Color(0xFF9ba0fc),
  ),
  Product(
    id: 19,
    title: "S",
    image: "assets/images/s.png",
    color: Color(0xFF9ba0fc),
  ),
  Product(
    id: 20,
    title: "T",
    image: "assets/images/t.png",
    color: Color(0xFF9ba0fc),
  ),
  Product(
    id: 21,
    title: "U",
    image: "assets/images/u.png",
    color: Color(0xFF9ba0fc),
  ),
  Product(
    id: 22,
    title: "V",
    image: "assets/images/v.png",
    color: Color(0xFF9ba0fc),
  ),
  Product(
    id: 23,
    title: "W",
    image: "assets/images/w.png",
    color: Color(0xFF9ba0fc),
  ),
  Product(
    id: 24,
    title: "X",
    image: "assets/images/x.png",
    color: Color(0xFF9ba0fc),
  ),
  Product(
    id: 25,
    title: "Y",
    image: "assets/images/y.png",
    color: Color(0xFF9ba0fc),
  ),
  Product(
    id: 26,
    title: "Z",
    image: "assets/images/z.png",
    color: Color(0xFF9ba0fc),
  ),
];

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Product List'),
        ),
        body: ProductList(),
      ),
    );
  }
}

class ProductList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: products.map((product) {
        return Container(
          padding: EdgeInsets.all(16.0),
          child: Row(
            children: [
              Image.asset(
                product.image,
                width: 80.0,
                height: 80.0,
              ),
              SizedBox(width: 16.0),
              Text(
                product.title,
                style: TextStyle(fontSize: 24.0),
              ),
            ],
          ),
          color: product.color,
        );
      }).toList(),
    );
  }
}
