import 'package:flutter/material.dart';
import 'package:proyecto_final/src/pages/products_detail.dart';

class products extends StatefulWidget {
  @override
  _productsState createState() => _productsState();
}

class _productsState extends State<products> {
  var product_list = [
    {
      "name": "Gel Catrin",
      "picture": "assets/images/gel.jpg",
      "price": 125,
    },
    {
      "name": "Balsamo de barba",
      "picture": "assets/images/BeardBalm.jpg",
      "price": 50,
    },
    {
      "name": "Balsamo de barba",
      "picture": "assets/images/hola.jpg",
      "price": 85,
    },
    {
      "name": "Gel Catrin",
      "picture": "assets/images/gel.jpg",
      "price": 125,
    },
    {
      "name": "Balsamo de barba",
      "picture": "assets/images/BeardBalm.jpg",
      "price": 50,
    },
    {
      "name": "Balsamo de barba",
      "picture": "assets/images/hola.jpg",
      "price": 85,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Single_prod(
            prod_name: product_list[index]['name'],
            prod_img: product_list[index]['picture'],
            prod_price: product_list[index]['price'],
          );
        });
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_img;
  final prod_price;

  Single_prod({this.prod_name, this.prod_img, this.prod_price});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: prod_name,
        child: Material(
          child: InkWell(
            onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                builder: (context) => new ProductDetails(
                      prod_details_name: prod_name,
                      prod_details_price: prod_price,
                      prod_details_picture: prod_img,
                    ))),
            child: GridTile(
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(
                    prod_name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  title: Text(
                    "\Q$prod_price",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w800),
                  ),
                ),
              ),
              child: ListTile(
                  title: Image(
                image: AssetImage(
                  prod_img,
                ),
                fit: BoxFit.cover,
              )),
            ),
          ),
        ),
      ),
    );
  }
}
