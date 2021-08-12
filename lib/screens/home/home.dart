import 'package:flutter/material.dart';
import 'package:magalu/models/items.dart';
import 'package:magalu/provider/list_of_items.dart';

class Home extends StatefulWidget {
  @override
  createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Image.asset("assets/logo.jpg"),
          title: Text("Ofertas do dia"),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(5),
            child: Image.asset("assets/linha.jpg"),
          ),
        ),
        body: ListView.builder(
          itemBuilder: builder,
          itemCount: 7,
        ));
  }

  Widget builder(BuildContext _, int index) {
    Items _items = listOfItems.elementAt(index);
    return ListTile(
      trailing: IconButton(
        icon: (_items.isFavorite)
            ? Icon(Icons.favorite, color: Colors.red)
            : Icon(Icons.favorite_outline, color: Colors.red),
        onPressed: () {
          setState(() {
            _items.isFavorite = !_items.isFavorite;
          });
        },
      ),
      title: Row(
        children: [
          Image.asset(
            _items.photo,
            width: 100,
            height: 100,
          ),
          SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                _items.name,
                style: TextStyle(
                  fontSize: 10.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                _items.restOfName,
                style: TextStyle(
                  fontSize: 10.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                _items.description,
                style: TextStyle(
                  fontSize: 9,
                ),
              ),
              Text(
                _items.price,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
              Text(
                _items.paymentMethod,
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
