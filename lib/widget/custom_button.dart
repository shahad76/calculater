import 'package:calculter/screns/constans/constans.dart';
import 'package:flutter/material.dart';

class Custum_Button extends StatelessWidget {
  Custum_Button({
    Key? key,
    @required this.btncolor,
    @required this.btntxt,
    this.flex,
    @required this.callBack,
  }) : super(key: key);
  Color? btncolor;
  String? btntxt;
  int? flex;
  Function? callBack;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex == null ? 1 : flex!,
      child: GestureDetector(
        onTap: () {
        callBack!(btntxt);
      },
        child: Container(
          width: 70,
          height: 80,
          child: Text(btntxt!, style: Constants.bttontxtstyle),
          margin: const EdgeInsets.all(8),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: btncolor,
          ),
        ),
      ),
    );
  }
}
