import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ui_instagram/widgets/Explorer/badge_widget.dart';

class ExplorerPage extends StatelessWidget {
  const ExplorerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeData.dark().primaryColorDark,
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, _) => [
          SliverAppBar(
            snap: true,
            floating: true,
            backgroundColor: ThemeData.dark().primaryColorDark,
            title: TextFormField(
              decoration: InputDecoration(
                fillColor: Colors.grey[800],
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
                contentPadding: EdgeInsets.symmetric(vertical: 15),
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                labelText: 'Search',
                labelStyle: TextStyle(
                  fontSize: 17,
                ),
              ),
            ),
          ),
        ],
        body: LayoutBuilder(
          builder: (_, constraints) {
            return SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Container(
                        height: constraints.maxHeight * .08,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            BadgeWidget(
                              label: 'IGTV',
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            BadgeWidget(
                              label: 'Shop',
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            BadgeWidget(
                              label: 'Style',
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            BadgeWidget(
                              label: 'Beauty',
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            BadgeWidget(
                              label: 'Auto',
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            BadgeWidget(
                              label: 'IGTV',
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            BadgeWidget(
                              label: 'Shop',
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            BadgeWidget(
                              label: 'Style',
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            BadgeWidget(
                              label: 'Beauty',
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: constraints.maxHeight * .4,
                      child: Row(
                        children: [
                          Container(
                            child: Column(
                              children: [
                                Expanded(
                                  child: Image.asset(
                                    'assets/images/photo_explorer1.jpg',
                                  ),
                                ),
                                Expanded(
                                  child: Image.asset(
                                    'assets/images/photo2_explorer.jpg',
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Expanded(
                              child: Container(
                                child: OverflowBox(
                                  minWidth: 0.0,
                                  minHeight: 0.0,
                                  child: Image.asset(
                                    'assets/images/photo4_explorer.jpg',
                                    height: constraints.maxHeight * .4,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: constraints.maxHeight * .25,
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              child: OverflowBox(
                                minWidth: 0.0,
                                minHeight: 0.0,
                                child: Image.asset(
                                  'assets/images/photo4_explorer.jpg',
                                  height: constraints.maxHeight * .25,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              child: OverflowBox(
                                minWidth: 0.0,
                                minHeight: 0.0,
                                child: Image.asset(
                                  'assets/images/photo5_explorer.jpg',
                                  height: constraints.maxHeight * .25,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              child: OverflowBox(
                                minWidth: 0.0,
                                minHeight: 0.0,
                                child: Image.asset(
                                  'assets/images/photo6_explorer.jpg',
                                  height: constraints.maxHeight * .25,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: constraints.maxHeight * .25,
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              child: OverflowBox(
                                minWidth: 0.0,
                                minHeight: 0.0,
                                child: Image.asset(
                                  'assets/images/photo6_explorer.jpg',
                                  height: constraints.maxHeight * .25,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              child: OverflowBox(
                                minWidth: 0.0,
                                minHeight: 0.0,
                                child: Image.asset(
                                  'assets/images/photo7_explorer.jpg',
                                  height: constraints.maxHeight * .25,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              child: OverflowBox(
                                minWidth: 0.0,
                                minHeight: 0.0,
                                child: Image.asset(
                                  'assets/images/photo_explorer1.jpg',
                                  height: constraints.maxHeight * .25,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: constraints.maxHeight * .25,
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              child: OverflowBox(
                                minWidth: 0.0,
                                minHeight: 0.0,
                                child: Image.asset(
                                  'assets/images/photo4_explorer.jpg',
                                  height: constraints.maxHeight * .25,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              child: OverflowBox(
                                minWidth: 0.0,
                                minHeight: 0.0,
                                child: Image.asset(
                                  'assets/images/photo5_explorer.jpg',
                                  height: constraints.maxHeight * .25,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              child: OverflowBox(
                                minWidth: 0.0,
                                minHeight: 0.0,
                                child: Image.asset(
                                  'assets/images/photo6_explorer.jpg',
                                  height: constraints.maxHeight * .25,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: constraints.maxHeight * .25,
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              child: OverflowBox(
                                minWidth: 0.0,
                                minHeight: 0.0,
                                child: Image.asset(
                                  'assets/images/photo6_explorer.jpg',
                                  height: constraints.maxHeight * .25,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              child: OverflowBox(
                                minWidth: 0.0,
                                minHeight: 0.0,
                                child: Image.asset(
                                  'assets/images/photo7_explorer.jpg',
                                  height: constraints.maxHeight * .25,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              child: OverflowBox(
                                minWidth: 0.0,
                                minHeight: 0.0,
                                child: Image.asset(
                                  'assets/images/photo_explorer1.jpg',
                                  height: constraints.maxHeight * .25,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: constraints.maxHeight * .25,
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              child: OverflowBox(
                                minWidth: 0.0,
                                minHeight: 0.0,
                                child: Image.asset(
                                  'assets/images/photo4_explorer.jpg',
                                  height: constraints.maxHeight * .25,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              child: OverflowBox(
                                minWidth: 0.0,
                                minHeight: 0.0,
                                child: Image.asset(
                                  'assets/images/photo5_explorer.jpg',
                                  height: constraints.maxHeight * .25,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              child: OverflowBox(
                                minWidth: 0.0,
                                minHeight: 0.0,
                                child: Image.asset(
                                  'assets/images/photo6_explorer.jpg',
                                  height: constraints.maxHeight * .25,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
