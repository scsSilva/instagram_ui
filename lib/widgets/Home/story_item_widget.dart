import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class StoryItemWidget extends StatelessWidget {
  final String name;
  final String image;

  const StoryItemWidget({
    Key? key,
    required this.name,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 40,
        width: 70,
        // color: Colors.green,
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(45),
                border: Border.fromBorderSide(
                  BorderSide(
                    color: Colors.grey,
                    width: 3,
                  ),
                ),
              ),
              child: SvgPicture.asset(
                image,
                // height: 30,
                width: 40,
              ),
            ),
            Text(
              name,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
