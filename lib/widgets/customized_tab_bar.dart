import 'package:flutter/material.dart';

class CustomizedTabBar extends StatefulWidget {
  @override
  _CustomizedTabBarState createState() => _CustomizedTabBarState();
}

class _CustomizedTabBarState extends State<CustomizedTabBar>
    with SingleTickerProviderStateMixin {
  int indexPage = 0;
  TabController _controller;
  @override
  void initState() {
    _controller = new TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            DefaultTabController(
              length: 3,
              initialIndex: indexPage,
              child: TabBar(
                controller: _controller,
                onTap: (index) {
                  setState(() {
                    indexPage = index;
                  });
                },
                labelStyle: TextStyle(color: Colors.red),
                unselectedLabelColor: Colors.black,
                indicatorSize: TabBarIndicatorSize.label,
                indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.white),
                tabs: <Widget>[
                  Tab(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Product",
                        style: TextStyle(
                            color: indexPage == 0 ? Colors.red : Colors.black,
                            fontSize: indexPage == 0 ? 18 : 14),
                      ),
                    ),
                  ),
                  Tab(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Details",
                        style: TextStyle(
                            color: indexPage == 1 ? Colors.red : Colors.black,
                            fontSize: indexPage == 1 ? 18 : 14),
                      ),
                    ),
                  ),
                  Tab(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Reviews",
                        style: TextStyle(
                            color: indexPage == 2 ? Colors.red : Colors.black,
                            fontSize: indexPage == 2 ? 18 : 14),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.25,
              child: TabBarView(
                controller: _controller,
                children: <Widget>[
                  detailsTab(context),
                  productTab(),
                  reviewsTab()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget reviewsTab() {
  return Container(
    alignment: Alignment.center,
    child: Text(
      "There are no reviews for this product!",
      style: TextStyle(
          color: Color.fromRGBO(78, 86, 99, 1), fontWeight: FontWeight.bold),
    ),
  );
}

Widget detailsTab(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "Size",
          style: TextStyle(color: Color.fromRGBO(197, 198, 200, 1)),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 45,
          width: double.infinity,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: smallContainers.length,
            itemBuilder: (context, index) => smallContainers[index],
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            Text(
              "Color",
              style: TextStyle(color: Color.fromRGBO(197, 198, 200, 1)),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.069,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  SizedBox(
                    height: 6,
                  ),
                  smallCircle(Color.fromRGBO(255, 192, 203, 1), true),
                  smallCircle(Color.fromRGBO(245, 90, 36, 1), false),
                  smallCircle(Color.fromRGBO(52, 255, 208, 1), false)
                ],
              ),
            ),
          ],
        )
      ],
    ),
  );
}

Widget smallCircle(Color stackColor, bool isFirstOne) {
  return Padding(
    padding: const EdgeInsets.all(5.0),
    child: Container(
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(80), boxShadow: [
        BoxShadow(
          color: isFirstOne ? Colors.white : stackColor.withOpacity(0.3),
          spreadRadius: 1,
          blurRadius: 10,
          offset: Offset(0, 6), // changes position of shadow
        ),
      ]),
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          CircleAvatar(
            backgroundColor: stackColor,
            radius: 25,
          ),
          isFirstOne
              ? Icon(
                  Icons.check,
                  color: Colors.blue,
                )
              : Icon(
                  Icons.check,
                  color: stackColor,
                )
        ],
      ),
    ),
  );
}

Widget productTab() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Description",
                  style: TextStyle(color: Color.fromRGBO(195, 200, 204, 1)),
                ),
                Text(
                  "Category",
                  style: TextStyle(color: Color.fromRGBO(195, 200, 204, 1)),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Woman Shoes Collection",
                  style: TextStyle(color: Color.fromRGBO(147, 152, 158, 1)),
                ),
                Text(
                  "W-SHOES",
                  style: TextStyle(color: Color.fromRGBO(147, 152, 158, 1)),
                )
              ],
            )
          ],
        ),
        Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Market",
                  style: TextStyle(color: Color.fromRGBO(195, 200, 204, 1)),
                ),
                Text(
                  "Deliverable",
                  style: TextStyle(color: Color.fromRGBO(195, 200, 204, 1)),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Zero point",
                  style: TextStyle(color: Color.fromRGBO(147, 152, 158, 1)),
                ),
                Text(
                  "Deliverable",
                  style: TextStyle(color: Color.fromRGBO(147, 152, 158, 1)),
                )
              ],
            ),
          ],
        ),
      ],
    ),
  );
}

List smallContainers = List.generate(4, (index) {
  return Padding(
    padding: const EdgeInsets.only(left: 8.0),
    child: Container(
      width: 80,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: index == 0 ? Color.fromRGBO(255, 105, 106, 1) : Colors.white,
          borderRadius: BorderRadius.circular(5)),
      child: Text(
        "${35 + index}",
        style: TextStyle(
            color: index == 0 ? Colors.white : Colors.black, fontSize: 15),
        textAlign: TextAlign.center,
      ),
    ),
  );
});
