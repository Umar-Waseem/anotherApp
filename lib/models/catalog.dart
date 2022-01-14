class CatalogModel {
  static List<Item> items = [
    Item(
        name: 'Blazer',
        desc:
            'A Blazer, wear this and make your clothing style reach a whole new level.',
        image:
            'https://media.istockphoto.com/photos/male-dark-blue-blazer-on-isolated-background-picture-id1152838910?k=20&m=1152838910&s=612x612&w=0&h=TWebGfvtYp3IWhqK8spnXiE3qXUBEn1vPGbqP7BQKYQ=',
        price: 120,
        color: 'Red',
        id: 'p1'),
    Item(
      name: 'Red Dress',
      desc: 'A Red Dress',
      image:
          'https://media.istockphoto.com/photos/plain-red-tee-shirt-isolated-on-white-background-picture-id471188329?b=1&k=20&m=471188329&s=170667a&w=0&h=O-Z6r1t22oGlIeClwANLRzVhEuJZIUVHsF4dfFuEMwA=',
      price: 80,
      color: 'Red',
      id: 'p2',
    ),
    Item(
      name: 'Pants',
      desc: 'A Pants',
      image:
          'https://media.istockphoto.com/photos/blue-chino-pants-with-brown-leather-belt-isolated-on-white-background-picture-id1149139165?k=20&m=1149139165&s=612x612&w=0&h=GZNt8WgiJ3tSbVmcAKbIUmFAzbulMTw1NJ7msG2Tyno=',
      price: 60,
      color: 'Blue',
      id: 'p3',
    ),
    Item(
      name: 'Shoes',
      desc: 'A Shoes',
      image:
          'https://images.unsplash.com/photo-1542291026-7eec264c27ff?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8c2hvZXxlbnwwfHwwfHw%3D&w=1000&q=80',
      price: 40,
      color: 'Blue',
      id: 'p4',
    ),
    Item(
      name: 'Watch',
      desc: 'A Watch',
      image:
          'https://images.unsplash.com/photo-1615368144592-44708889c926?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bWVuJTIwd2F0Y2h8ZW58MHx8MHx8&w=1000&q=80',
      price: 30,
      color: 'Blue',
      id: 'p5',
    ),
    Item(
      name: 'Shirt',
      desc: 'A Shirt',
      image:
          'https://images.unsplash.com/photo-1518791841217-8f162f1e1131?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8c2hvZXxlbnwwfHwwfHw%3D&w=1000&q=80',
      price: 20,
      color: 'Blue',
      id: 'p6',
    ),
    Item(
      name: 'Jeans',
      desc: 'A Jeans',
      image:
          'https://images.unsplash.com/photo-1518791841217-8f162f1e1131?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8c2hvZXxlbnwwfHwwfHw%3D&w=1000&q=80',
      price: 10,
      color: 'Blue',
      id: 'p7',
    ),
    Item(
      name: 'Shirt',
      desc: 'A Shirt',
      image:
          'https://images.unsplash.com/photo-1518791841217-8f162f1e1131?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8c2hvZXxlbnwwfHwwfHw%3D&w=1000&q=80',
      price: 20,
      color: 'Blue',
      id: 'p8',
    ),
  ];
}

class Item {
  final String name;
  final String desc;
  final String image;
  final num price;
  final String color;
  final String id;

  Item(
      {this.name = "",
      this.desc = "",
      this.image = "",
      this.price = 0,
      this.color = "",
      this.id = ""});

  // factory Item.fromMap(Map<String, String> map) {
  //   return Item(
  //     name: Map ["name"],
  //     desc: Map["desc"],
  //     image: Map["image"],
  //     price: Map["price"],
  //     color: Map["color"],
  //     id: Map["id"],
  //   );
  // }

  // toMap() => {
  //       "name": name,
  //       "desc": desc,
  //       "image": image,
  //       "price": price,
  //       "color": color,
  //       "id": id,
  //     };
}
