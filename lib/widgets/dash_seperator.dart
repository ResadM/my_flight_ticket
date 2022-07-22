import 'package:flutter/material.dart';

import '../util/app_layout.dart';

class DashSeperator extends StatelessWidget {
  const DashSeperator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
              child: Padding(
            padding: EdgeInsets.only(
                top: AppLayout.getHeight(10), bottom: AppLayout.getHeight(10)),
            child: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                return Flex(
                  direction: Axis.horizontal,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: List.generate(
                      (constraints.constrainWidth() / AppLayout.getHeight(15))
                          .floor(),
                      (index) => SizedBox(
                            width: AppLayout.getWidth(5),
                            height: AppLayout.getHeight(1),
                            child: const DecoratedBox(
                                decoration: BoxDecoration(color: Colors.black)),
                          )),
                );
              },
            ),
          )),
        ],
      ),
    );
  }
}
