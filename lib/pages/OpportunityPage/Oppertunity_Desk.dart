import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OppertunityDesk extends StatefulWidget {
  @override
  _OppertunityDeskState createState() => _OppertunityDeskState();
}

class _OppertunityDeskState extends State<OppertunityDesk> {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        minHeight: context.height,
        minWidth: context.width,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 48.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Opportunities B2Bs provide students with",
            style: Theme.of(context).textTheme.headline2,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 84.0,
          ),
          Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Text(
                      String.fromCharCode(0x2022) +
                          ' ' +
                          "Grow their knowledge on developer technologies and more through peer to peer workshops and vents.",
                      style: Theme.of(context)
                          .textTheme
                          .headline3
                          .copyWith(fontSize: 17),
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    Text(
                      String.fromCharCode(0x2022) +
                          ' ' +
                          "Showcase their prototypes and solutions to their local community and industry leaders.",
                      style: Theme.of(context)
                          .textTheme
                          .headline3
                          .copyWith(fontSize: 17),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 40.0,
              ),
              Expanded(
                child: Column(
                  children: [
                    Text(
                      String.fromCharCode(0x2022) +
                          ' ' +
                          "Gain relevant industry experience by solving problems for local organizations with technology based solutions.",
                      style: Theme.of(context)
                          .textTheme
                          .headline3
                          .copyWith(fontSize: 17),
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    Text(
                      String.fromCharCode(0x2022) +
                          ' ' +
                          "Getting inspiration to become world-className developers and changemakers from sharing others' success stories.",
                      style: Theme.of(context)
                          .textTheme
                          .headline3
                          .copyWith(fontSize: 17),
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
