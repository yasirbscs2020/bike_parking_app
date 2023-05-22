import 'package:flutter/material.dart';

class DropDownButton extends StatefulWidget {
  const DropDownButton(
      {required this.width, required this.widget, required this.text, Key? key})
      : super(key: key);

  final double width;
  final String text;
  final Widget widget;
  @override
  State<DropDownButton> createState() => _DropDownButtonPageState();
}

class _DropDownButtonPageState extends State<DropDownButton> {
  String? valueChose;
  List listItem = ["Item 1", "Item 2", "Item 3", "Item 4", "Item 5"];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      width: widget.width,
      decoration: BoxDecoration(
        color: const Color(0xff063A34),
        borderRadius: BorderRadius.circular(32),
        border: Border.all(),
      ),
      child: DropdownButton(
          icon: const Icon(Icons.keyboard_arrow_down_sharp, size: 22),
          underline: const SizedBox(),
          isExpanded: true,
          hint: Row(
            children: [
              widget.widget,
              Text(
                widget.text,
                style: const TextStyle(color: Color(0xffFFFFFF)),
              ),
            ],
          ),
          value: valueChose,
          onChanged: (newValue) {
            setState(() {
              valueChose = newValue.toString();
            });
          },
          items: listItem.map(
            (valueItem) {
              return DropdownMenuItem(
                value: valueItem,
                child: Text(valueItem),
              );
            },
          ).toList()),
    );
  }
}
