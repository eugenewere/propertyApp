import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:rating_bar/rating_bar.dart';
import 'package:realhouse/categories.dart';
import 'package:realhouse/home.dart';
import 'package:realhouse/houses.dart';
import 'package:flutter_image_stack/flutter_image_stack.dart';
import 'package:realhouse/readmore.dart';

class DetailsPage extends StatefulWidget {
  final House house;

  const DetailsPage({Key key, this.house}) : super(key: key);
  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  double _sizeWidth;
  double _sizeHeight;
  Color mcolor = Color(0xff77b800);
  bool isFav = false;
  bool isExpanded = false;

  List<String> _mAvatar = Avatar().getAvatars();
  @override
  Widget build(BuildContext context) {
    var cnt = this;
    _sizeWidth = MediaQuery.of(context).size.width;
    _sizeHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      image: DecorationImage(
                          image: NetworkImage(
                            widget.house.image,
                          ),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(30),
                          bottomLeft: Radius.circular(30))),
                  height: _sizeHeight * .4,
                ),
                Positioned(
                    top: 50,
                    child: Container(
                      padding: EdgeInsets.all(7),
                      width: _sizeWidth * 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            child: Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Icon(PhosphorIcons.caret_left_bold),
                            ),
                            onTap: () {
                              Navigator.of(context).pop(Home());
                            },
                          ),
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    if (isFav == false) {
                                      isFav = true;
                                    } else {
                                      isFav = false;
                                    }
                                  });
                                },
                                child: Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: isFav
                                      ? Icon(
                                          PhosphorIcons.heart_fill,
                                          color: Colors.red,
                                        )
                                      : Icon(PhosphorIcons.heart_bold),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  margin: EdgeInsets.only(left: 10),
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Icon(
                                    PhosphorIcons.dots_three_vertical_bold,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    )),
                Positioned(
                    bottom: -27,
                    child: Container(
                      width: _sizeWidth * 1,
                      // color: Colors.green,
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(20),
                            width: _sizeWidth * .9,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    offset: Offset(0.0, 1.0), //(x,y)
                                    blurRadius: 6.0,
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(20)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      widget.house.title,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 26,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Icon(
                                          PhosphorIcons.map_pin_bold,
                                          size: 16,
                                          color: mcolor,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          widget.house.location,
                                          style: TextStyle(
                                              color:
                                                  Colors.black.withOpacity(.4),
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Icon(
                                          PhosphorIcons.car_bold,
                                          size: 16,
                                          color: mcolor,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          "3 Hour Drive",
                                          style: TextStyle(
                                              color:
                                                  Colors.black.withOpacity(.4),
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                        width: _sizeWidth * .2,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        child: Image.network(
                                          'https://www.land.vic.gov.au/__data/assets/image/0027/486630/ESTA-Address-Map.PNG',
                                          loadingBuilder: (BuildContext context,
                                              Widget child,
                                              ImageChunkEvent loadingProgress) {
                                            if (loadingProgress == null)
                                              return child;
                                            return Center(
                                              child: CircularProgressIndicator(
                                                value: loadingProgress
                                                            .expectedTotalBytes !=
                                                        null
                                                    ? loadingProgress
                                                            .cumulativeBytesLoaded /
                                                        loadingProgress
                                                            .expectedTotalBytes
                                                    : null,
                                              ),
                                            );
                                          },
                                        )),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ))
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              padding: EdgeInsets.only(bottom: 50),
              physics: ScrollPhysics(
                parent: const BouncingScrollPhysics(
                    parent: AlwaysScrollableScrollPhysics()),
              ),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 50, left: 10),
                    height: _sizeHeight * .2,
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          width: _sizeWidth * .3,
                          // color: Colors.green,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Review',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 23,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 40),
                                child: Container(
                                  // padding: EdgeInsets.only(left: 50),
                                  child: FlutterImageStack(
                                    imageList: _mAvatar,
                                    showTotalCount: true,
                                    totalCount: 4,
                                    imageRadius: 30,
                                    imageBorderColor:
                                        mcolor, // Radius of each images
                                    imageCount:
                                        3, // Maximum number of images to be shown in stack
                                    imageBorderWidth: 3,
                                    extraCountTextStyle:
                                        TextStyle(color: mcolor),
                                    // Border width around the images
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                // color: Colors.red,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    RatingBar(
                                      onRatingChanged: (rating) =>
                                          setState(() => rating),
                                      initialRating: widget.house.rating,
                                      filledIcon: PhosphorIcons.star_fill,
                                      emptyIcon: PhosphorIcons.star_bold,
                                      halfFilledIcon: Icons.star_half,
                                      isHalfAllowed: true,
                                      filledColor: Colors.yellow,
                                      emptyColor: Colors.grey,
                                      halfFilledColor: Colors.yellow,
                                      size: 18,
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                // color: Colors.red,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      '( ${widget.house.rating} Reviews)',
                                      style: TextStyle(
                                          color: Colors.black.withOpacity(.4),
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: _sizeWidth * .67,
                          child: ListView.builder(
                              itemCount: 5,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (BuildContext context, int index) {
                                return Container(
                                    clipBehavior: Clip.hardEdge,
                                    width: _sizeWidth * .4,
                                    margin: EdgeInsets.only(right: 15),
                                    decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Image.network(
                                      widget.house.image,
                                      fit: BoxFit.cover,
                                      loadingBuilder: (BuildContext context,
                                          Widget child,
                                          ImageChunkEvent loadingProgress) {
                                        if (loadingProgress == null)
                                          return child;
                                        return Center(
                                          child: CircularProgressIndicator(
                                            value: loadingProgress
                                                        .expectedTotalBytes !=
                                                    null
                                                ? loadingProgress
                                                        .cumulativeBytesLoaded /
                                                    loadingProgress
                                                        .expectedTotalBytes
                                                : null,
                                          ),
                                        );
                                      },
                                    ));
                              }),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    // height: _sizeHeight * .2,
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        getHeader('Amenities'),
                        GridView.count(
                          // scrollDirection: Axis.horizontal,
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          crossAxisCount: 4,
                          children: List.generate(
                              4,
                              (index) => Container(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Icon(
                                          PhosphorIcons.car_fill,
                                          color: mcolor,
                                          size: 34,
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          'Garage',
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                  )),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        getHeader('Description'),
                        Container(
                          child: ExpandableText(
                            widget.house.description,
                            trimLines: 2,
                            color: Colors.black.withOpacity(.4),
                            size: 16,
                            fontWeight: FontWeight.normal,
                            // align: TextAlign.justify,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Row(
                children: [
                  Text(
                    'Ksh ${widget.house.price}',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 26,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    '/ per month',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 13,
                        fontWeight: FontWeight.normal),
                  )
                ],
              ),
            ),
            Container(
              child: RaisedButton(
                padding: EdgeInsets.symmetric(horizontal: 70, vertical: 20),
                onPressed: null,
                elevation: 1,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ),
                color: mcolor,
                textColor: mcolor,
                disabledTextColor: mcolor,
                disabledColor: mcolor,
                focusColor: mcolor,
                hoverColor: mcolor,
                highlightColor: mcolor,
                splashColor: mcolor,
                child: Text(
                  'Check Units',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget getHeader(String title) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
