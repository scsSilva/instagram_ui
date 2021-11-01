import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PostFeedWidget extends StatefulWidget {
  final double height;
  final String profileName;
  final String profileImage;
  final String imagePost;
  final String labelPost;

  const PostFeedWidget({
    Key? key,
    required this.height,
    required this.profileName,
    required this.profileImage,
    required this.imagePost,
    required this.labelPost,
  }) : super(key: key);

  @override
  _PostFeedWidgetState createState() => _PostFeedWidgetState();
}

class _PostFeedWidgetState extends State<PostFeedWidget> {
  late bool _selected = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height < 467 ? widget.height : widget.height * .93,
      // color: Colors.green,
      padding: EdgeInsets.symmetric(horizontal: 5),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: SvgPicture.asset(
                            widget.profileImage,
                            width: 32,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                          ),
                          child: Text(
                            widget.profileName,
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.more_horiz_outlined,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Image.asset(
              widget.imagePost,
              height: widget.height * .48,
              width: double.infinity,
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            InkWell(
                              onTap: () {
                                setState(() {
                                  _selected = !_selected;
                                });
                              },
                              child: _selected
                                  ? SvgPicture.asset(
                                      'assets/images/loved_icon.svg',
                                      width: 25,
                                    )
                                  : SvgPicture.asset(
                                      'assets/images/love_icon.svg',
                                      width: 25,
                                    ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            SvgPicture.asset(
                              'assets/images/comment_icon.svg',
                              width: 25,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            SvgPicture.asset(
                              'assets/images/message_icon.svg',
                              width: 25,
                            ),
                          ],
                        ),
                      ),
                      SvgPicture.asset(
                        'assets/images/save_icon.svg',
                        width: 25,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  RichText(
                    maxLines: 3,
                    softWrap: true,
                    text: TextSpan(
                      text: widget.profileName,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                      children: [
                        TextSpan(
                          text: ' ',
                        ),
                        TextSpan(
                          text: widget.labelPost,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                      child: Text(
                        'See al comments',
                        style: TextStyle(
                          color: Colors.grey,
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
  }
}
