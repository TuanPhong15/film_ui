import 'package:film_ui/model/popular_item.dart';
import 'package:film_ui/views/details_screen.dart';
import 'package:flutter/material.dart';

class PopularView extends StatefulWidget {
  const PopularView({Key? key}) : super(key: key);

  @override
  State<PopularView> createState() => _PopularViewState();
}

class _PopularViewState extends State<PopularView> {
  final List<PopularItem> listItemPopular = [
    PopularItem(
        name: "Raya",
        urlPhoto: "assets/images/pic1.jpeg",
        releaseDate: "30-05-2022"),
    PopularItem(
        name: "Fear Of Rain",
        urlPhoto: "assets/images/pic2.jpeg",
        releaseDate: "30-05-2022"),
    PopularItem(
        name: "Chaos King",
        urlPhoto: "assets/images/pic3.jpeg",
        releaseDate: "30-05-2022"),
    PopularItem(
        name: "Doctor Strange",
        urlPhoto: "assets/images/pic4.jpeg",
        releaseDate: "30-05-2022")
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 30),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 0.62,
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 30,
      ),
      itemCount: listItemPopular.length,
      itemBuilder: (context, index) {
        return _itemPopular(listItemPopular[index]);
      },
    );
  }

  Widget _itemPopular(PopularItem popularItem) {
    return GestureDetector(
      onTap: () => {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const DetailsScreen()))

      },
      child: Column(children: [
        Expanded(
            child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(18),
              child: Image.asset(popularItem.urlPhoto),
            ),
            Text(popularItem.name)
          ],
        ))
      ]),
    );
  }
}
