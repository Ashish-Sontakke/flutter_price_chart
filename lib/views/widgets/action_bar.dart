import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ActionBar extends StatelessWidget {
  const ActionBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ButtonBar(
            children: [
              TextButton.icon(
                  onPressed: () {},
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(
                        const Color(0xff6F7177)),
                  ),
                  icon: const Icon(Icons.open_in_full),
                  label: const Text("Fullscreen")),
              TextButton.icon(
                  onPressed: () {},
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(
                        const Color(0xff6F7177)),
                  ),
                  icon: const Icon(Icons.add_circle),
                  label: const Text("Compare")),
            ],
          ),
          SizedBox(width: 80),
          CupertinoSlidingSegmentedControl(
              thumbColor: Color(0xff4B40EE),
              groupValue: 2,
              backgroundColor: Colors.transparent,
              children: const {
                0: Text(
                  "1d",
                ),
                1: Text("3d"),
                2: Text(
                  "1w",
                  style: TextStyle(
                    color: Color(0xffffffff),
                  ),
                ),
                3: Text("1m"),
                4: Text("6m"),
                5: Text("1y"),
                6: Text("All"),
              },
              onValueChanged: (dynamic newValue) {}),
        ],
      ),
    );
  }
}
