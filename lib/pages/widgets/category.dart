import 'package:flutter/material.dart';

class CategoryPage extends StatefulWidget {
  CategoryPage({Key key, this.index}) : super(key: key);
  final int index;

  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  List<Map<String, Object>> categories = [
    {
      'categoryName': 'Phones',
      'categoryImagesPath': 'assets/images/CatPhones.png',
    },
    {
      'categoryName': 'Clothes',
      'categoryImagesPath': 'assets/images/CatClothes.jpg',
    },
    {
      'categoryName': 'Shoes',
      'categoryImagesPath': 'assets/images/CatShoes.jpg',
    },
    {
      'categoryName': 'Laptops',
      'categoryImagesPath': 'assets/images/CatLaptops.png',
    },
    {
      'categoryName': 'Furniture',
      'categoryImagesPath': 'assets/images/CatFurniture.jpg',
    },
    {
      'categoryName': 'Watches',
      'categoryImagesPath': 'assets/images/CatWatches.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                image:
                    AssetImage(categories[widget.index]['categoryImagesPath']),
                fit: BoxFit.cover),
          ),
          margin: EdgeInsets.symmetric(horizontal: 10),
          width: 150,
          height: 150,
        ),
        Positioned(
          bottom: 0,
          left: 10,
          right: 10,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            color: Theme.of(context).backgroundColor,
            child: Text(
              categories[widget.index]['categoryName'],
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18,
                color: Theme.of(context).textSelectionColor,
              ),
            ),
          ),
        )
      ],
    );
  }
}
