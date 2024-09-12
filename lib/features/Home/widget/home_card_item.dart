import 'package:flutter/material.dart';

class HomeCardItem extends StatelessWidget {

  const HomeCardItem({super.key, this.onTap, this.child, this.padding, this.backgroundColor, this.borderRadius});
  final VoidCallback? onTap;
  final Widget ?child;
  final EdgeInsets ?padding;
  final Color? backgroundColor;
  final int ? borderRadius;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:onTap,
      child: Container(
        padding:padding ??  EdgeInsets.all(15),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6,),
          color: Color(0xff020811).withOpacity(.8),

        ),
        child: child
      ),
    );
  }
}
