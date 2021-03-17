import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:realhouse/categories.dart';
import 'package:realhouse/details.dart';
import 'package:realhouse/houses.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double _sizeWidth;
  double _sizeHeight;
  Color mcolor = Color(0xff77b800);
  List<House> _house = House().getHouses();
  List<Categories> _category = Categories().getCategories();
  @override
  Widget build(BuildContext context) {
    _sizeWidth = MediaQuery.of(context).size.width;
    _sizeHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('PropHouse'),
          elevation: 0,
          backgroundColor: Colors.white,
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: Icon(
                  PhosphorIcons.list_thin,
                  color: Colors.black,
                ),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            },
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                PhosphorIcons.bell_thin,
                color: Colors.black,
              ),
              onPressed: () {
                // do something
              },
            ),
            Padding(
              padding: const EdgeInsets.only(right: 4),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQhVwdLn0FESTD3hKboGIa85586OrKjInf6EA&usqp=CAU',
                    scale: 8.9),
              ),
            )
          ],
          // Icon(PhosphorIcons.bell_thin),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.only(left: 10, right: 10, top: 10),
          physics: ScrollPhysics(
            parent: const BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics()),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Where Would You',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 35,
                              color: Colors.black),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Like To Go ?',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 35,
                              color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    prefixIcon: Icon(PhosphorIcons.magnifying_glass_thin),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    hintText: 'Search Property',
                  ),
                ),
              ),
              Card(
                elevation: 1,
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.white, width: 1),
                  borderRadius: BorderRadius.circular(15),
                ),
                clipBehavior: Clip.hardEdge,
                child: Container(
                  child: Column(
                    children: [
                      Container(
                        child: Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10))),
                              child: Image(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    "https://blog.capterra.com/wp-content/uploads/2019/12/house-5.jpg"),
                              ),
                            ),
                            Positioned(
                              child: Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                clipBehavior: Clip.hardEdge,
                                child: Icon(
                                  PhosphorIcons.heart_bold,
                                  color: Colors.black,
                                ),
                              ),
                              top: 20,
                              right: 20,
                            ),
                            Positioned(
                              child: Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                clipBehavior: Clip.hardEdge,
                                child: Icon(
                                  PhosphorIcons.shuffle_bold,
                                  color: Colors.black,
                                ),
                              ),
                              top: 20,
                              right: 60,
                            ),
                            Positioned(
                                bottom: 0,
                                child: Container(
                                  width: _sizeWidth * .94,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(20),
                                          topLeft: Radius.circular(20)),
                                      color: Colors.black.withOpacity(.3)),
                                  padding: EdgeInsets.all(9),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    // crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        'Affordable 2 BHK Flats ...',
                                        softWrap: true,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 23,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ))
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Row(
                                    children: [
                                      Icon(
                                        PhosphorIcons.stack_bold,
                                        color: mcolor,
                                        size: 19,
                                      ),
                                      SizedBox(
                                        width: 4,
                                      ),
                                      Text(
                                        'Apartment',
                                        style: TextStyle(
                                            color: mcolor,
                                            fontSize: 19,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Row(
                                    children: [
                                      Icon(
                                        PhosphorIcons.star_fill,
                                        color: Colors.yellow,
                                        size: 15,
                                      ),
                                      SizedBox(
                                        width: 4,
                                      ),
                                      Text(
                                        "4.3",
                                        style: TextStyle(fontSize: 15),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: Row(
                                children: [
                                  Text(
                                    '8,000 - 10,000',
                                    style: TextStyle(
                                        fontSize: 23,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    'KSHS',
                                    style: TextStyle(
                                        fontSize: 23,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    '/ Month',
                                    style: TextStyle(
                                        fontSize: 23,
                                        color: Colors.grey,
                                        fontStyle: FontStyle.italic,
                                        fontWeight: FontWeight.normal),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 3.0),
                              child: Row(
                                children: [
                                  Icon(
                                    PhosphorIcons.map_pin_bold,
                                    color: Colors.grey,
                                    size: 19,
                                  ),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    'Juja, Kalimoni A3',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 7.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: Row(
                                      children: [
                                        Icon(
                                          PhosphorIcons.corners_in_bold,
                                          color: Colors.grey,
                                          size: 19,
                                        ),
                                        SizedBox(
                                          width: 4,
                                        ),
                                        Text(
                                          '400 sqft',
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 19,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Row(
                                      children: [
                                        Icon(
                                          PhosphorIcons.bed,
                                          color: Colors.grey,
                                          size: 19,
                                        ),
                                        SizedBox(
                                          width: 4,
                                        ),
                                        Text(
                                          '2 - 3',
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 19,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Row(
                                      children: [
                                        Icon(
                                          PhosphorIcons.car_fill,
                                          color: Colors.grey,
                                          size: 19,
                                        ),
                                        SizedBox(
                                          width: 4,
                                        ),
                                        Text(
                                          '2 - 4',
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 19,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.bathtub,
                                          color: Colors.grey,
                                          size: 19,
                                        ),
                                        SizedBox(
                                          width: 4,
                                        ),
                                        Text(
                                          '1 - 3',
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 19,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                height: _sizeHeight * .12,
                padding: EdgeInsets.symmetric(vertical: 20),
                child: ListView.builder(
                    itemCount: _category.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return loadCities(_category[index], context);
                    }),
              ),
              Container(
                height: _sizeHeight * .3,
                padding: EdgeInsets.symmetric(vertical: 20),
                child: ListView.builder(
                    itemCount: _house.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return loadHouses(_house[index]);
                    }),
              ),
              Container(
                height: _sizeHeight * .08,
                padding: EdgeInsets.symmetric(vertical: 20),
                child: ListView.builder(
                    itemCount: _category.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return loadCategories(_category[index]);
                    }),
              ),
              Container(
                height: _sizeHeight * .3,
                padding: EdgeInsets.symmetric(vertical: 20),
                child: ListView.builder(
                    itemCount: _house.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return loadFullProp(_house[index]);
                    }),
              ),
              Container(
                height: _sizeHeight * .3,
                padding: EdgeInsets.symmetric(vertical: 20),
                child: ListView.builder(
                    itemCount: _house.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return loadHouses(_house[index]);
                    }),
              ),
            ],
          ),
        ));
  }

  Widget loadHouses(House house) {
    return GestureDetector(
      onTap: () {
        return Navigator.push(context,
            MaterialPageRoute(builder: (context) => DetailsPage(house: house)));
      },
      child: Container(
        width: _sizeWidth * 0.6,
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(right: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      fit: BoxFit.cover, image: NetworkImage(house.image))),
            ),
            Positioned(
              child: Icon(
                PhosphorIcons.heart_bold,
                color: Colors.white,
              ),
              top: 20,
              right: 35,
            ),
            Positioned(
                bottom: 0,
                child: Container(
                  width: _sizeWidth * 0.57,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20)),
                      color: Colors.black.withOpacity(.3)),
                  padding: EdgeInsets.all(9),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        house.title,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            PhosphorIcons.map_pin_fill,
                            color: Colors.white,
                            size: 15,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            house.location,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }

  Widget loadCategories(Categories category) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        color: mcolor,
        borderRadius: BorderRadius.all(Radius.circular(50)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
            child: Text(
              category.name,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }

  Widget loadFullProp(House house) {
    return Container(
      width: _sizeWidth * 1,
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(right: 15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    fit: BoxFit.cover, image: NetworkImage(house.image))),
          ),
          Positioned(
            child: Icon(
              PhosphorIcons.heart_bold,
              color: Colors.white,
            ),
            top: 20,
            right: 35,
          ),
          Positioned(
              bottom: 0,
              child: Container(
                width: _sizeWidth * .97,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20)),
                    color: Colors.black.withOpacity(.3)),
                padding: EdgeInsets.all(9),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      house.title,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          PhosphorIcons.map_pin_fill,
                          color: Colors.white,
                          size: 15,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          house.location,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}

Widget loadCities(Categories category, BuildContext context) {
  return Container(
    height: MediaQuery.of(context).size.height * .2,
    width: MediaQuery.of(context).size.width * .4,
    margin: EdgeInsets.only(right: 10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      image: DecorationImage(
        fit: BoxFit.cover,
        image: NetworkImage(
            'https://www.nairobibusinessmonthly.com/wp-content/uploads/2017/09/1185653211adc064092a681acf400e11148895e8.jpg'),
      ),
    ),
    clipBehavior: Clip.hardEdge,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          child: Text(
            category.name,
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 19),
          ),
        ),
        ElevatedButton(
            onPressed: null,
            style: ButtonStyle(
                // backgroundColor: Colors.white
                ),
            child: Row(
              children: [
                Text(
                  "Explore",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 4,
                ),
                Icon(PhosphorIcons.arrow_right)
              ],
            ))
      ],
    ),
  );
}
