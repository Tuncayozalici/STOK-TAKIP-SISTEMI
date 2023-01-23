import 'package:finalprojesi/ListedPage.dart';
import 'package:flutter/material.dart';

import 'MyButton.dart';

class OneRowOfInfo extends StatelessWidget {
  OneRowOfInfo({super.key, required this.yazilar, this.hideBtn = true});

  List<String> yazilar;
  bool hideBtn;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(border: Border.all(width: 4)),
        child: Row(
          children: [
            for (var element in yazilar) Text(element),
            if (!hideBtn)
              MyButton(
                  text_: "Ürüne Git",
                  width_: 100,
                  onPressed_: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ListedPage(yazilar[1])));
                  })
          ],
          mainAxisAlignment: MainAxisAlignment.spaceAround,
        ),
      ),
    );
  }
}
