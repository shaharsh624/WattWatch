import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:wattwatch_v1/pages/coupons.dart';
import 'package:wattwatch_v1/pages/dashboard.dart';
import 'package:wattwatch_v1/pages/profile.dart';
import 'package:wattwatch_v1/pages/suggestions.dart';

class Analytics extends StatelessWidget {
  const Analytics({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff34cc98),
        elevation: 0,
        leading: IconButton(
            icon: Image.asset(
              'lib/assets/icons/profile.png',
              width: 200,
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Profile();
              }));
            }),
        title: Text(
          "John Doe",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
        ),
        titleSpacing: 5.0,
        actions: [
          Text(
            "3528",
            style: TextStyle(
                fontSize: 18,
                color: Colors.black87,
                fontWeight: FontWeight.bold),
          ),
          IconButton(
            icon: Icon(
              Icons.monetization_on_outlined,
              color: Colors.black87,
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Coupons();
              }));
            },
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 5.0),
              child: IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Suggestions();
                    }));
                  },
                  icon: Icon(
                    Icons.message,
                    size: 30,
                  )),
            ),
            Padding(
              padding: EdgeInsets.only(left: 5.0),
              child: IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Coupons();
                    }));
                  },
                  icon: Icon(
                    Icons.star,
                    size: 30,
                  )),
            ),
            Padding(
              padding: EdgeInsets.only(left: 5.0),
              child: IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Dashboard();
                    }));
                  },
                  icon: const Icon(
                    Icons.dashboard,
                    size: 40,
                  )),
            ),
            Padding(
              padding: EdgeInsets.only(left: 5.0),
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.pin_drop,
                    size: 30,
                  )),
            ),
            Padding(
              padding: EdgeInsets.only(left: 5.0),
              child: IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Analytics();
                    }));
                  },
                  icon: Icon(
                    Icons.bar_chart,
                    color: Color(0xFF268D6A),
                    size: 30,
                  )),
            ),
          ],
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(children: [
                IconButton(
                  icon: Icon(
                    Icons.keyboard_backspace,
                    color: Colors.black87,
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return Dashboard();
                    }));
                  },
                ),
                Text(
                  "Electricity Consumption",
                  style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0),
                )
              ]),
            ),
            CarouselDemo(),
          ],
        ),
      ),
    );
  }
}

class CarouselDemo extends StatefulWidget {
  @override
  _CarouselDemoState createState() => _CarouselDemoState();
}

class _CarouselDemoState extends State<CarouselDemo> {
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 10, top: 5),
          child:
            Text("Week", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
        ),
        CarouselSlider(
          options: CarouselOptions(
            height: 400.0,
            autoPlay: false,
            enlargeCenterPage: true,
            enableInfiniteScroll: false,
            viewportFraction: 0.8,
            aspectRatio: 16 / 9,
            autoPlayInterval: Duration(seconds: 3),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            onPageChanged: (index, reason) {
              // Handle page change
            },
            // controller: _controller,
          ),
          items: [
            Container(
              color: const Color(0xffffffff),
              child: Center(
                child: BarChartWidget(),
              ),
            ),
            Container(
              color: const Color(0xffffffff),
              child: Center(
                child: BarChartWidget(),
              ),
            ),
            Container(
              color: const Color(0xffffffff),
              child: Center(
                child: BarChartWidget(),
              ),
            ),
          ],
        ),
        Container(
          width: 180.0,
          padding: const EdgeInsets.all(8.0),
          margin: const EdgeInsets.only(top: 15.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              border: Border.all(
                color: Colors.red,
                width: 2.0,
              )),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.warning_amber_outlined,
                color: Colors.red,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Usage Increased",
                      style: TextStyle(
                          fontSize: 12.0, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "25% more",
                      style:
                          TextStyle(fontSize: 8.0, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}

class BarChartWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
        alignment: BarChartAlignment.spaceAround,
        maxY: 6,
        titlesData: FlTitlesData(
          leftTitles: SideTitles(showTitles: true),
          bottomTitles: SideTitles(showTitles: true),
        ),
        gridData: FlGridData(show: false),
        barGroups: [
          BarChartGroupData(
            x: 0,
            barRods: [
              BarChartRodData(
                y: 3,
                colors: [Color(0xff34cc98)],
                width: 30,
              ),
            ],
            showingTooltipIndicators: [0],
          ),
          BarChartGroupData(
            x: 1,
            barRods: [
              BarChartRodData(
                y: 4,
                colors: [Color(0xff34cc98)],
                width: 30,
              ),
            ],
            showingTooltipIndicators: [0],
          ),
          BarChartGroupData(
            x: 2,
            barRods: [
              BarChartRodData(
                y: 2,
                colors: [Color(0xff34cc98)],
                width: 30,
              ),
            ],
            showingTooltipIndicators: [0],
          ),
        ],
      ),
    );
  }
}
