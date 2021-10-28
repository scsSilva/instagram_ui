import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui_instagram/widgets/Home/post_feed_widget.dart';
import 'package:ui_instagram/widgets/Home/story_item_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeData.dark().primaryColorDark,
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/images/message_icon.svg'),
            padding: EdgeInsets.all(10),
          )
        ],
        backgroundColor: ThemeData.dark().primaryColorDark,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset('assets/images/camera_icon.svg'),
          padding: EdgeInsets.all(10),
        ),
        title: Text(
          'Instagram',
          style: TextStyle(
            fontFamily: 'Billabong',
            fontSize: 35,
          ),
        ),
      ),
      body: LayoutBuilder(
        builder: (_, constraints) {
          return SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Container(
                  // decoration: BoxDecoration(
                  //   color: Colors.red,
                  // ),
                  height: constraints.maxHeight * .16,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          StoryItemWidget(
                            image: 'assets/images/profile1.svg',
                            name: 'profile.tech',
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          StoryItemWidget(
                            image: 'assets/images/profile2.svg',
                            name: 'profile.programmer',
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          StoryItemWidget(
                            image: 'assets/images/profile3.svg',
                            name: 'profile.computer',
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          StoryItemWidget(
                            image: 'assets/images/profile1.svg',
                            name: 'profile.tech',
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          StoryItemWidget(
                            image: 'assets/images/profile1.svg',
                            name: 'profile.tech',
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          StoryItemWidget(
                            image: 'assets/images/profile1.svg',
                            name: 'profile.tech',
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  child: Column(
                    children: [
                      PostFeedWidget(
                        height: constraints.maxHeight,
                        profileImage: 'assets/images/profile1.svg',
                        profileName: 'profile.tech',
                        imagePost: 'assets/images/photo1_feed.jpg',
                        labelPost:
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin rutrum neque suscipit pulvinar lobortis. Etiam consectetur massa sed laoreet suscipit.',
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      PostFeedWidget(
                        height: constraints.maxHeight,
                        profileImage: 'assets/images/profile2.svg',
                        profileName: 'profile.programmer',
                        imagePost: 'assets/images/photo2_feed.jpg',
                        labelPost:
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin rutrum neque suscipit pulvinar lobortis. Etiam consectetur massa sed laoreet suscipit.',
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      PostFeedWidget(
                        height: constraints.maxHeight,
                        profileImage: 'assets/images/profile1.svg',
                        profileName: 'profile.tech',
                        imagePost: 'assets/images/photo3_feed.jpg',
                        labelPost:
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin rutrum neque suscipit pulvinar lobortis. Etiam consectetur massa sed laoreet suscipit.',
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      PostFeedWidget(
                        height: constraints.maxHeight,
                        profileImage: 'assets/images/profile3.svg',
                        profileName: 'profile.computer',
                        imagePost: 'assets/images/photo4_feed.jpg',
                        labelPost:
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin rutrum neque suscipit pulvinar lobortis. Etiam consectetur massa sed laoreet suscipit.',
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      PostFeedWidget(
                        height: constraints.maxHeight,
                        profileImage: 'assets/images/profile1.svg',
                        profileName: 'profile.tech',
                        imagePost: 'assets/images/photo5_feed.jpg',
                        labelPost:
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin rutrum neque suscipit pulvinar lobortis. Etiam consectetur massa sed laoreet suscipit.',
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
