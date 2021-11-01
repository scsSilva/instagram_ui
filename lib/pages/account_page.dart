import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeData.dark().primaryColorDark,
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/images/upload_icon.svg',
              width: 25,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu_outlined,
              color: Colors.white,
              size: 25,
            ),
          ),
        ],
        backgroundColor: Colors.transparent,
        title: Text('profile.tech'),
        elevation: 0,
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Container(
            height: constraints.maxHeight,
            width: constraints.maxWidth,
            // color: Colors.red,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  height: constraints.maxHeight * .4,
                  // color: Colors.green,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: constraints.maxWidth * .3,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SvgPicture.asset(
                                    'assets/images/profile1.svg',
                                    width: 70,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Profile Tech',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: constraints.maxWidth * .6,
                              child: Center(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      child: Column(
                                        children: [
                                          Text(
                                            '3',
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            'Publicações',
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      child: Column(
                                        children: [
                                          Text(
                                            '500K',
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            'Seguidores',
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      child: Column(
                                        children: [
                                          Text(
                                            '300',
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            'Seguindo',
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              child: Text('Editar perfil'),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.transparent,
                                side: BorderSide(
                                  color: Colors.white30,
                                  width: 1,
                                ),
                                fixedSize:
                                    Size.fromWidth(constraints.maxWidth * .7),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              child: Icon(
                                Icons.arrow_drop_down,
                                color: Colors.white,
                                size: 25,
                              ),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.transparent,
                                side: BorderSide(
                                  color: Colors.white30,
                                  width: 1,
                                ),
                                fixedSize:
                                    Size.fromWidth(constraints.maxWidth * .05),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: constraints.maxHeight * .6,
                  child: Column(
                    children: [
                      Container(
                        child: TabBar(
                          controller: _tabController,
                          indicatorColor: Colors.white,
                          tabs: [
                            Tab(
                              icon: Icon(
                                Icons.grid_on,
                                color: Colors.white,
                                size: 25,
                              ),
                            ),
                            Tab(
                              icon: Icon(
                                Icons.person_pin_rounded,
                                color: Colors.white,
                                size: 25,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: TabBarView(
                          controller: _tabController,
                          children: [
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
                                          'assets/images/photo1_feed.jpg',
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
                                          'assets/images/photo2_feed.jpg',
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
                                          'assets/images/photo3_feed.jpg',
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
                                          'assets/images/photo4_feed.jpg',
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
                                          'assets/images/photo5_feed.jpg',
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
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
