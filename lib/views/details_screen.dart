import 'package:film_ui/model/item_cast.dart';
import 'package:flutter/material.dart';

final List<ItemCast> itemCast = [
  ItemCast(
      name: "Kelly Tran",
      character: "Raya (voice)",
      urlPhoto: "assets/images/ac1.jpeg"),
  ItemCast(
      name: "Akwafina",
      character: "Sisu (voice)",
      urlPhoto: "assets/images/ac2.jpeg"),
  ItemCast(
      name: "Izzac Wang",
      character: "Boun (voice)",
      urlPhoto: "assets/images/ac3.jpeg"),
  ItemCast(
      name: "Gemma Tran",
      character: "Nammari (voice)",
      urlPhoto: "assets/images/ac4.jpeg"),
];

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Colors.black),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Icon(Icons.favorite_border),
          )
        ],
      ),
      body: Stack(
        children: [
          Image.asset(
            "assets/images/pic1.jpeg",
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height,
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            color: Colors.white.withOpacity(0.8),
          ),
          _body(context)
        ],
      ),
    );
  }

  _body(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const ClampingScrollPhysics(),
      children: [
        const SizedBox(
          height: 20,
        ),
        _header(),
        const SizedBox(
          height: 20,
        ),
        _cast(),
        const SizedBox(
          height: 20,
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }

  _header() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(borderRadius: BorderRadius.circular(18), child: 
            Image.network("assets/images/pic1.jpeg",
                height: 150, fit: BoxFit.fill)
          )
        ],
      ),
    );
  }

  Widget contentHeader() {
    return Column(
      children: [
        Text("Raya va rong than cuoi cung"),
        Text("Xuat ban : 31-05-2022"),
        Text("The loai: Phim hoat hinh")
      ],
    );
  }

  _cast() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Cast"),
          SizedBox(
            height: 20,
          ),
          Container(
              height: 160,
              child: ListView.builder(
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                itemCount: itemCast.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return _itemCast(itemCast[index]);
                },
              ))
        ],
      ),
    );
  }

  _itemCast(ItemCast itemCast) {
    return Container(
      margin: EdgeInsets.only(right: 22),
      child: Column(children: [
        Expanded(
            child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(18),
              child: Image.asset(itemCast.urlPhoto),
            ),
            Text(itemCast.name)
          ],
        ))
      ]),
    );
  }
}
