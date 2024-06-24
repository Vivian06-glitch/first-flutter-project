import 'package:flutter/cupertino.dart';
import 'package:gap/gap.dart';

class CourseWidget extends StatelessWidget {
  const CourseWidget({
    super.key,
    this.title,
    this.subTitle,
    this.color,
    this.icon, this.radius,
  });

  final String? title;
  final String? subTitle;
  final Color? color;
  final Widget? icon;
  final double? radius;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      height: 150,
      width: 170,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(radius??8)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title!,
            style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          const Gap(10),
          Text(
            subTitle!,
            style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
          ),
          const Gap(10),
         icon!,
        ],
      ),
    );
  }
}
