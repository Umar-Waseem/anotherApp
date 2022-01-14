import 'package:app4/models/catalog.dart';
import 'package:app4/widgets/item_widget.dart';
import 'package:flutter/material.dart';
import 'package:app4/widgets/myDrawer.dart';
// import 'package:flutter/services.dart';
// import 'dart:convert';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // @override
  // void initState() {
  //   super.initState();
  //   loadData();
  // }

  // loadData() async {
  //   final catalogjson =
  //       await rootBundle.loadString('assets/files/catalog.json');
  //   final decodedData = jsonDecode(catalogjson);
  //   var productData = decodedData["products"];
  //   List<Item> list =
  //       List.from(productData).map<Item>((item) => Item.fromMap(item)).toList();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Home'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
          ),
          itemBuilder: (context, index) {
            final item = CatalogModel.items[index];
            return Card(
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: GridTile(
                child: Image.network(item.image),
                header: Container(
                  child: Text(
                    item.name,
                    style: const TextStyle(color: Colors.white),
                  ),
                  padding: const EdgeInsets.all(12.0),
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                  ),
                ),
                footer: Container(
                  child: Text(
                    item.price.toString(),
                    style: const TextStyle(color: Colors.white),
                  ),
                  padding: const EdgeInsets.all(12.0),
                  decoration: const BoxDecoration(
                    color: Colors.black,
                  ),
                ),
              ),
            );
          },
          itemCount: CatalogModel.items.length,
        ),
      ),
      drawer: const MyDrawer(),
    );
  }
}
